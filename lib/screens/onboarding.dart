// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}
class _onboardingState extends State<onboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int CurrentIndex = 0;
  
  
  
  
  @override
  Widget build(BuildContext context) {
    Widget _indicator(bool isActive){
  return AnimatedContainer(duration: const Duration(milliseconds: 300),
  height: 10,
  width: isActive ? 20:8,
  margin: const EdgeInsets.only(right: 5.0),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(5),
  ),
 
 
 
  );
}

    List<Widget> _buildindicator(){
  List<Widget> indicator  = [];
  for (int i=0; i<3; i++){
    if (CurrentIndex ==i) {
      indicator.add(_indicator(true));

      
    }else{
      indicator.add(_indicator(false));
    }
  }
  return indicator;
}
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.lightBlueAccent,
          actions: [
            Padding(padding: const EdgeInsets.only(top: 20,right: 20),
            child: InkWell(
              onTap: () {
                
              },
              child: const Text('Skip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white70),),
            ),)
          ],
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              onPageChanged: (int page) {
                setState(() {
                  CurrentIndex = page;
                });
                PageController : _pageController;
              },
              children: [
                Container(
                  
                  padding: const EdgeInsets.only(left: 50,right: 50,bottom: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 350, child: Image.asset('images/abcd.png'),)
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50,right: 50,bottom: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 350, child: Image.asset('images/abcde.png'),)
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50,right: 50,bottom: 80),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 350, child: Image.asset('images/abcd.png'),)
                    ],
                  ),
                )

              ],
            ),
            Positioned(
              bottom: 80,
              left: 30,
              
              
              child: Row(
                children: 
                  _buildindicator()
                
              ),
              ),
              Positioned(
                bottom: 60,
                right: 30,
                 child: Container(
                  child: IconButton(onPressed: (){
                    setState(() {
                      if(CurrentIndex < 2){
                        CurrentIndex++;
                        if(CurrentIndex < 3){
                        
                          _pageController.nextPage(duration:const Duration(milliseconds: 300) ,curve:Curves.easeIn );
                        }

                      }else{

                      }
                      
                    });




                  }, icon:const Icon(Icons.arrow_forward_ios, size: 24, color: Colors.white70,),

                    
                  ),
                                      padding:const EdgeInsets.all(4) ,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green
                                      ),
                 ))
          ],
        ),

      );
  }
}




Widget _indicator(bool isActive){
  return AnimatedContainer(duration: const Duration(milliseconds: 300),
  height: 10,
  width: isActive ? 20:8,
  margin: const EdgeInsets.only(right: 5.0),
  decoration: BoxDecoration(
    color: Colors.red,
    borderRadius: BorderRadius.circular(5),
  ),
 
 
 
  );
}


