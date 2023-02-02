import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../homePage/main_home.dart';
import 'comman_dailog.dart';


class AuthController extends GetxController{
  var userId;
 Future<void> signup(email,password,username)async{
    try {
      CommanDialog.showLoading();
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email.trim(),
    password: password);
    print(UserCredential);
    CommanDialog.hideLoading();
    Get.back();
    try {

    
        CommanDialog.showLoading();
        var response =
            await FirebaseFirestore.instance.collection('userslist').add({
          'user_Id': userCredential.user!.uid,
          'user_name': username,
          "password": password,
          'joinDate': DateTime.now().millisecondsSinceEpoch,
          'email': email
        });
        print("Firebase response1111 ${response.id}");
        CommanDialog.hideLoading();
       
      } catch (exception) {
        CommanDialog.hideLoading();
        print("Error Saving Data at firestore $exception");
      }
	
  
} on FirebaseAuthException catch (e) {
  CommanDialog.hideLoading();
  if (e.code == 'weak-password') {
    CommanDialog.showErrorDialog(description: " Weak password");
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    CommanDialog.showErrorDialog(description: 'Account Already exsist');
    print('The account already exists for that email.');
  }
} catch (e) {
  CommanDialog.hideLoading();
   CommanDialog.showErrorDialog(description: 'Something went wrong');
  print(e);
}

  }

 Future<void> login(email,password)async{
  print('$email,$password');
    try {
      CommanDialog.showLoading();
  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.trim(),
    password: password);
    userId=userCredential.user!.uid;
     CommanDialog.hideLoading();
     Get.off(()=>home());

   
  
} on FirebaseAuthException catch (e) {
  CommanDialog.hideLoading();
  if (e.code == 'user-not-found') {
    CommanDialog.showErrorDialog(description: 'User not found');
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    CommanDialog.showErrorDialog(description: 'Wrong password');
    print('Wrong password provided for that user.');
  }
}
  }

}