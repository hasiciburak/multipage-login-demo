import 'package:flutter/material.dart';
import 'package:multi_page_form_app_examplet/view/sign_up_date_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../main.dart';

class SignUpFormElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        type: PageTransitionType.rightToLeft, child: MyApp()));
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
          'Haydi Bir Kullanıcı Adı Belirleyerek Başlayalım!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 100,
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'Kullanıcı Adın...'),
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
                //Arka Plan Gradyan Bitiş
              ),
              child: Center(
                child: Text(
                  'İleri',
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}
