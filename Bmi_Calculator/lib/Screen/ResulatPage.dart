import 'package:Bmi_Calculator/Screen/Componant/Bottom_btn.dart';
import 'package:flutter/material.dart';

class ResulatPage extends StatelessWidget {
  ResulatPage({this.bmiResults, this.resultsText, this.intrpretaion});
  final String bmiResults;
  final String resultsText;
  final String intrpretaion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Your Resultat ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF111328),
              ),
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultsText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Colors.blueAccent),
                  ),
                  Text(
                    bmiResults,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow),
                  ),
                  Text(
                    intrpretaion,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Colors.orange),
                  ),
                  Bottom_btn(
                      title: 'RECALCULATE',
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
