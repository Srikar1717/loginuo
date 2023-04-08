import 'package:flutter/material.dart';
import 'package:teamup/components/my_colors.dart';
import 'package:teamup/components/mytextform.dart';

//import '../components/font_styles.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        width: size.width,
        height: size.height,
        margin: const EdgeInsets.only(top: 40,),
        child: Column(children: [
          Image.asset(
            'images/up.png',
            width: size.width * 0.4,
            alignment: Alignment.topLeft,
          ),
          Container(
              margin: const EdgeInsets.only(left: 80),
              child: const Text('Streamline Processes',
                  style: TextStyle(fontWeight: FontWeight.bold))),
          const SizedBox(
            height: 60,
          ),
          Expanded(
          
            
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 20),
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.zero),
                  color: Color.fromARGB(255, 254, 163, 163)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: const [
                    Text('Login to'),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      'UpShift,',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ]),
                  Row(children: const [
                    Text('Employee management portal of TeamUp!')
                  ]),
                  const SizedBox(
                    height: 25,
                  ),
                  Column(
                    
                    children: [
                      
                      MyTextFormField(
                          labelText: 'Email Address',
                          hintText: 'Email',
                          bgcolor: white,
                          size: size * 0.9,),
                      MyTextFormField(
                          labelText: 'PassWord',
                          hintText: 'password',
                          bgcolor: white,
                          size: size * 0.9)
                    ],
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 20)),
                      const CircleAvatar(
                        
                        radius: 30,
                        child: Icon(Icons.arrow_right_alt, size: 60),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                'If you dont have account',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          const Text(
                            'Please contact your Manager',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
