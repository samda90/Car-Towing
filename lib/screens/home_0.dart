import 'package:car_towing/screens/sign_up_&_log_in.dart';
import 'package:flutter/material.dart';

class Home0 extends StatelessWidget {
  const Home0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(_) => const SignPage()));
        },
        child: Center(
          child: Container(
            height: 334.0,
            width: 360.0,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.elliptical(360,334))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                 Text('welcome to',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.0),
                Text('FCS',
                  style: TextStyle(
                    fontSize: 96.0,
                    letterSpacing: 1.7,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
