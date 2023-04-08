import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({
     required this.hint,
    
    this.isphone=false,
  required this.textHolder,

    super.key,
    });
final String hint;

final bool isphone;
final String textHolder ;

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
              children:  [
                const Padding(padding: EdgeInsets.fromLTRB(2, 2, 2, 2)),
                Text(
                  '${widget.textHolder}',
                  style: const TextStyle(
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),

          

            
            TextFormField(
              obscureText: passenable,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                filled: true,
                
                hintText: widget.hint,
                contentPadding: const EdgeInsets.fromLTRB(20,5,20,5),
                  suffix: IconButton(
                      onPressed: () {
                        //add Icon button at end of TextField
                        setState(() {
                          //refresh UI
                          if (passenable) {
                            //if passenable == true, make it false
                            passenable = false;
                          } else {
                            passenable =
                                true; //if passenable == false, make it true
                          }
                        });
                      },
                      icon: Icon(passenable == true
                          ? Icons.remove_red_eye
                          : Icons.visibility_outlined))
                
              ),),
              const SizedBox(height: 10,),
      ],
    );
  }
}