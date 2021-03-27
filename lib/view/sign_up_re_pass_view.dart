import 'package:flutter/material.dart';
import 'package:multi_page_form_app_examplet/view/sign_up_relation_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

// ignore: import_of_legacy_library_into_null_safe
class SignUpRePassView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 30, 24, 10),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width * 0.78,
                    lineHeight: 18.0,
                    percent: 0.1667 * 5.25,
                    backgroundColor: Colors.grey,
                    progressColor: Color(0XFFF95419),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Şimdi de Şifrenden Emin Olalım😊',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Şifreni Tekrar Gir...'),
                textAlign: TextAlign.center,
                obscureText: true,
              ),
              Spacer(),
              GestureDetector(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(1, -1),
                        end: Alignment(-1, 1),
                        colors: [
                          Color(0xFFA1164C),
                          Color(0xFFDA2C26),
                          Color(0xFFF95419)
                        ],
                      ),

                      borderRadius: BorderRadius.circular(4),
                      //Arka Plan Gradyan Bitiş
                    ),
                    child: Center(
                      child: Text(
                        'İleri',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: SignUpRelationView()));
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
