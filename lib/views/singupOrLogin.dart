import 'package:flutter/material.dart';
import 'package:learningapp/consts/consts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupOrLogin extends StatelessWidget {
  const SignupOrLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 40, right: 40, top: 150),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(imgA1)),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Text(
                'Create your own study plan',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Study according to the study plan, make study more motivated',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            SvgPicture.asset(iconP1),
            SizedBox(height: 50),
            Row(
              children: [
                SizedBox(width: 30),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      )),
                ),
                SizedBox(width: 40),
                Container(
                  width: 120,
                  height: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          side: BorderSide(color: Colors.blue)),
                      onPressed: () {},
                      child: Text(
                        'login',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
