import 'package:car_towing/screens/sign_up_3.dart';
import 'package:flutter/material.dart';

class SignPage2 extends StatefulWidget {
  const SignPage2({Key? key}) : super(key: key);

  @override
  State<SignPage2> createState() => _SignPage2State();
}

class _SignPage2State extends State<SignPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            Positioned(
              top: -60.0,
              left: -105.0,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100))
                ),
              ),
            ),
            Positioned(
              top: -124.0,
              left: -40.0,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(100, 100))
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 75.0),
                  const SizedBox(
                    child: Text('Welcome onboard!',
                      style: TextStyle(
                        // fontFamily: Inter,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const SizedBox(
                    child: Text('Let\'s help you reach your destination',
                      style: TextStyle(
                        // fontFamily: Inter,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  _buildTextContainer('Enter your full name'),
                  _buildTextContainer('Enter your email'),
                  _buildTextContainer('Enter your password'),
                  _buildTextContainer('Confirm password'),
                  _buildTextContainer('Enter your phone number'),
                  const SizedBox(height: 50.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
                    height: 60.0,
                    width: 300.0,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(16))
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                            builder:(_) => const SignPage3())
                          );
                        },
                        child: const Text('Join ours today',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Text('Already have an account? Sign In',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -111.0,
              right: -155.0,
              child: Container(
                height: 234.0,
                width: 277.0,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(157, 149, 149, 1),
                  borderRadius: BorderRadius.all(Radius.elliptical(277, 234))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextContainer(String title) {

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
      height: 40.0,
      width: 300.0,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: const BorderRadius.all(Radius.circular(16))
      ),
      child: TextField(
        decoration: InputDecoration.collapsed(
            hintText: title,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w200,
            )
        ),
      ),
    );
  }

}
