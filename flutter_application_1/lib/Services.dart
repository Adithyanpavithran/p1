import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';

Future<void> Register({
  required String Username,
  required String Email,
  required String password,
  required BuildContext context,
}) async {
  try {
    UserCredential userd = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email, password: password);
    User? user = userd.user;
    await FirebaseFirestore.instance
        .collection("USERDETAILS")
        .doc(user?.uid)
        .set({"Name": Username, "Email": Email});
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("User creation successful")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Logged in successful")));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> forget({
  required String email,
  required BuildContext context,
}) async {
  {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Check your Email")));
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
