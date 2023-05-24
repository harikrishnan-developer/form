import 'package:flutter/material.dart';
import 'package:sqfliteinternship/formtaskdemo/regdemo.dart';
class Flog extends StatefulWidget {
  const Flog({Key? key}) : super(key: key);

  @override
  State<Flog> createState() => _FlogState();
}

class _FlogState extends State<Flog> {
  bool showpassword= true;

  @override
  void togglepassword() {
    setState(()
    {
      showpassword = !showpassword;
    });
  }
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  var email='',password='';
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _formKey,
        child: ListView(

            children:[ Column(
        children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 220, 20),

              child: Text("Welcome",style: TextStyle(fontSize: 25,color: Colors.black),textAlign: TextAlign.left,),
            ),

            Padding(

              padding: const EdgeInsets.fromLTRB(10, 0, 90, 0),
              child: Text("Enter your Email address to sign in ",style: TextStyle(fontSize: 15,color: Colors.black45),),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 195, 30),
              child: Text("Enjoy you Food :) ",style: TextStyle(fontSize: 15,color: Colors.black45),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {

                    return 'Please enter  Email Address';
                  }
                  else if (!value.contains('@gmail.com'))
                  {

                    return 'Enter valid email';
                  }

                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
    ),
                  label: Text("Email")

    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {

                    return 'Please enter password';
                  }

                  return null;
                },

                controller: passwordController,
                obscureText: showpassword,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        togglepassword();

                      },
                      child:showpassword?Icon (Icons.visibility):Icon(Icons.visibility_off),
                    ),


                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    label: Text("Password")

                ),
              ),
            ),


            Align(
    alignment: Alignment.centerRight,


    child: TextButton(onPressed: () {

                }, child:Text("Forget Password?",style: TextStyle(color: Colors.black45),)),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 1200,
                height: 40,
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    email = emailController.text;
                    password = passwordController.text;
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Success")));
                    }
                  }
    );
                },

                    child: Text("SIGN IN",style: TextStyle(color: Colors.white),),
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.green),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an account?"),


                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Freg()),);


                  },
                      child: Text("Create new account", style: TextStyle(color: Colors.green),)
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),

              child: Center(child: Text("Or",style: TextStyle(fontSize: 20,color: Colors.black),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 1200,
                height: 40,

                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.facebook_outlined,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  label: const Text("CONNECT WITH FACEBOOK",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Color.fromRGBO(66, 103, 178, 8)),
                  ),
                  onPressed: () {},
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 1200,
                height: 40,

                child: ElevatedButton.icon(
                  icon: SizedBox(
                    height: 22,
                    child: Image.network(

                      'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',),
                  ),

                  label: const Text("CONNECT WITH GOOGLE",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {},
                ),
              ),
            )


          ],
    )
    ],
        ),
      ),
    );
  }
}
