import 'package:car_towing/screens/sign_up_2.dart';
import 'package:flutter/material.dart';

class SignPage1 extends StatelessWidget {
  const SignPage1({Key? key}) : super(key: key);

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
              top: -111.0,
              left: -155.0,
              child: Container(
                height: 234.0,
                width: 277.0,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(277, 234))
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 90.0),
                  const Text('Welcome!',
                    // fontFamily: Roboto,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const Image(
                    height: 150.0,
                    width: 140.0,
                    image: AssetImage('assets/images/CT_hand.png'),
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20.0),
                  const SizedBox(
                    height: 44.0,
                    width:180.0,
                    child: Center(
                      child:  Text('  We are FCS and\nWe are here to help',
                        style: TextStyle(
                          // fontFamily: Inter,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  const SizedBox(
                    height: 54.0,
                    width: 310.0,
                    child: Text('We are your Autoservice company\nready to get you back on the road.',
                      style: TextStyle(
                        // fontFamily: Inter,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  Container(
                    width: 300,
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.black,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                          builder:(_) => const SignPage2())
                        );
                      },
                      child: const Center(
                        child:  Text('SIGN UP as a customer',
                          style: TextStyle(
                            // fontFamily: Inter,
                            fontSize: 19.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 300,
                    height: 60,
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                          builder:(_) => const SignPage2())
                        );
                      },
                      child: const Center(
                        child:  Text('SIGN UP as a Mechanic',
                          style: TextStyle(
                            // fontFamily: Inter,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
                    color: Color.fromRGBO(0, 0, 0, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(277, 234))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
