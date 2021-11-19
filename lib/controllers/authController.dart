import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/screens/root.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthController extends GetxController {
  var displayName = ""; //to show the user name when signed in
  var uid = "";

  FirebaseAuth auth = FirebaseAuth.instance;

  FacebookAuth facebookAuth = FacebookAuth.instance;

  CollectionReference users = FirebaseFirestore.instance.collection("KhachHang");

  User? get userProfile => auth.currentUser;

  @override
  void onInit() {
    displayName = userProfile != null ? userProfile!.displayName! : "";
    super.onInit();
  }

  void signUp(String name, String email, String password) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        displayName = name;
        uid = auth.currentUser!.uid;
        auth.currentUser!.updateDisplayName(name);
        users.doc(uid).set({
          "createAt": FieldValue.serverTimestamp(),
          "displayName": displayName,
          "password": password,
          "email": email,
          "phoneNumber": null,
          "photoURL": null,
          "role": "user",
          "type": "email-password",
          "uid": uid,
        });
      });
      update();
      Get.offAll(() => Root());
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp("-"), " ").capitalize!;
      String message = "";

      if (e.code == "weak-password") {
        message = "The password provided is too weak";
      } else if (e.code == "email-already-in-use") {
        message = "The account already exists for that email";
      } else {
        message = e.message.toString();
      }
      Get.snackbar(
        title,
        message,
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    } catch (e) {
      Get.snackbar(
        "Error occured!",
        e.toString(),
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    }
  }

  void signIn(String email, String password) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => displayName = userProfile!.displayName!);
      update(); // this will rebuild the root
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp("-"), " ").capitalize!;
      String message = "";

      if (e.code == "wrong-password") {
        message = "Invalid password. Please try again!";
      } else if (e.code == "user-not-found") {
        message =
        "The account does not exist for $email. Create your account by signing up";
      } else {
        message = e.message.toString();
      }
      Get.snackbar(
        title,
        message,
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    } catch (e) {
      Get.snackbar(
        "Error occured!",
        e.toString(),
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    }
  }

  void signOut() async {
    try {
      await auth.signOut();
      displayName = "";
      update();
      Get.offAll(() => Root());
    } catch (e) {
      Get.snackbar(
        "Error occured!",
        e.toString(),
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    }
  }

  void resetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      String title = e.code.replaceAll(RegExp("-"), " ").capitalize!;
      String message = "";

      if (e.code == "user-not-found") {
        message =
        "The account does not exist for $email. Create your account by signing up";
      } else {
        message = e.message.toString();
      }
      Get.snackbar(
        title,
        message,
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    } catch (e) {
      Get.snackbar(
        "Error occured!",
        e.toString(),
        backgroundColor: kPrimaryColor,
        colorText: kBackgroundColor,
      );
    }
  }

  // void loginWithFacebook() async{
  //   final result = await facebookAuth.login();
  //   if(result.status == Fac)
  // }

  // Future<UserCredential> signInWithFacebook() async {
  //   // Trigger the sign-in flow
  //   final LoginResult loginResult = await FacebookAuth.instance.login();
  //
  //   // Create a credential from the access token
  //   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken.token);
  //
  //   // Once signed in, return the UserCredential
  //   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  // }
  // Future<Resource?> signInWithFacebook() async {
  //   try {
  //     final LoginResult result = await FacebookAuth.instance.login();
  //     switch (result.status) {
  //       case LoginStatus.success:
  //         final AuthCredential facebookCredential =
  //         FacebookAuthProvider.credential(result.accessToken!.token);
  //         final userCredential =
  //         await auth.signInWithCredential(facebookCredential);
  //         return Resource(status: Status.Success);
  //       case LoginStatus.cancelled:
  //         return Resource(status: Status.Cancelled);
  //       case LoginStatus.failed:
  //         return Resource(status: Status.Error);
  //       default:
  //         return null;
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     throw e;
  //   }
  // }

}
// class Resource{
//
//   final Status status;
//   Resource({required this.status});
// }
//
// enum Status {
//   Success,
//   Error,
//   Cancelled
// }

