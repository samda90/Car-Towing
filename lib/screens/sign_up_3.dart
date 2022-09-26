import 'package:flutter/material.dart';

class SignPage3 extends StatefulWidget {
  const SignPage3({Key? key}) : super(key: key);

  @override
  State<SignPage3> createState() => _SignPage3State();
}

class _SignPage3State extends State<SignPage3> {
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
                  const Image(
                    height: 160.0,
                    width: 190.0,
                    image: AssetImage('assets/images/CT_car.png'),
                    fit: BoxFit.cover,
                  ),
                  _buildTextContainer('Enter your password'),
                  _buildTextContainer('Confirm password'),
                  const SizedBox(height: 30.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                            onTap: () {},
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
                      Row(
                        children: const [
                          Text('Already have an account?',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 2.0),
                          Text('Sign In',
                            style: TextStyle(
                              color: Color.fromRGBO(223, 139, 4, 1),
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
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
