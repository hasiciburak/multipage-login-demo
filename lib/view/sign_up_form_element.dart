import 'package:flutter/material.dart';
import 'package:multi_page_form_app_examplet/view/sign_up_date_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../main.dart';

class SignUpFormElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.rightToLeft,
                                        child: MyApp()));
                              },
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.03,
                            ),
                            LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * 0.78,
                              lineHeight: 18.0,
                              percent: 0.1667,
                              backgroundColor: Colors.grey,
                              progressColor: Color(0XFFF95419),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Haydi Bir Kullan??c?? Ad?? Belirleyerek Ba??layal??m!',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(hintText: 'Kullan??c?? Ad??n...'),
                          textAlign: TextAlign.center,
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
                                //Arka Plan Gradyan Biti??
                              ),
                              child: Center(
                                child: Text(
                                  '??leri',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.rightToLeft,
                                      child: SignUpDateView()));
                            }),
                      ],
                    )))));
  }
}
