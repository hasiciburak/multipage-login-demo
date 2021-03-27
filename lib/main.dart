import 'package:flutter/material.dart';
import 'package:multi_page_form_app_examplet/view/sign_up_form_element.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      body: CenteredWidget(),
    ));
  }
}

class CenteredWidget extends StatelessWidget {
  const CenteredWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: GestureDetector(
        child: Text('Merhaba'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SignUpFormElement()));
        },
      ),
    );
  }
}
