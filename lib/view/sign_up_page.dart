import 'package:flutter/material.dart';
import 'package:multi_page_form_app_examplet/view/sign_up_form_element.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainContextArea(),
      ),
    );
  }
}

class MainContextArea extends StatefulWidget {
  const MainContextArea({
    Key? key,
  }) : super(key: key);

  @override
  _MainContextAreaState createState() => _MainContextAreaState();
}

class _MainContextAreaState extends State<MainContextArea> {
  var formIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 10),
        child: SignUpFormElement(),
      ),
    );
  }
}
