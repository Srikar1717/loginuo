import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(padding: EdgeInsets.only(bottom: 40,)),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: const [
                Text('welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    )),
              ],
            ),
            const SizedBox(
              width: 6,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 150),
              child: Text(
                'Srikar',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.red),
              ),
            ),
            SizedBox(width: size.width * 0, height: size.height * 0.1),
            Container(
              height: size.height * 0.2,
              width: size.width * 0.2,
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/ss.jpg'),
                ),
              ),
            ),
          ],
        ),
        Container(
          height: size.height * 0.4,
          //padding: const EdgeInsets.only(bottom: 30),
          width: size.width,

          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white),

          child: Column(
            children: [
              Container(
                height: size.height * 0.1,
                width: size.width * 1.0,
                padding: const EdgeInsets.fromLTRB(30, 20, 10, 0),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 146, 212, 181),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '25 DAYS',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                        Text(
                          'STREAK MAINTAINED',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    SizedBox(width: size.width * 0.3),
                    Container(
                        padding: const EdgeInsets.only(bottom: 10, right: 10.5),

                        // margin: EdgeInsets.only(top: 0,bottom: 20,right: 10),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          ''
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: const [
                  Text(
                    'Projects',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
          
                width: 181,
                
                child: ListView(
                  children: [
                    InkWell(
                      child: Container(
                        height: 200,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:Colors.blue),
                     child: const Text('data'), ),
                    )
                  ],
                ),
              )
             
            ],
          ),
        )
      ],
    ));
  }
}
