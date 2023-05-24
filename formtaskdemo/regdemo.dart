import 'package:flutter/material.dart';
import 'package:sqfliteinternship/formtaskdemo/logdemo.dart';
class Freg extends StatefulWidget {
  const Freg({Key? key}) : super(key: key);

  @override
  State<Freg> createState() => _FregState();
}

class _FregState extends State<Freg> {
  bool showpassword = true;
  @override
  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;

    });
  }
  var fnameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
  var fname='',email='',password='';
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: _formKey,

        child: ListView(
          children:[ Column(
          children: [



            Padding(
              padding: const EdgeInsets.fromLTRB(10, 60, 165, 0),

              child: Text("Create Account",style: TextStyle(fontSize: 25,color: Colors.black),),
            ),

            Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 165, 0),                  child: Text("Enter Your Name , Email And Password For Sign Up."),
                  ),


                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Flog()),);


                  },

                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 175, 0),
                        child: Text("Already Have  Account ?", style: TextStyle(color: Colors.green),textAlign: TextAlign.left,),
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {

                    return 'Please enter name';
                  }

                  return null;
                },

                controller: fnameController,
                decoration: InputDecoration(
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                      "Full Name",style: TextStyle(fontSize:15),

                    )

                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
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
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Email Address"
                    )
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.all(10.0),
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
                    contentPadding:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    label: Text(
                        "Password"
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 1200,
                height: 40,
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Success")));
                    }
                  });
                },

                    child: Text("SIGN UP",style: TextStyle(color: Colors.white),),
                    style:ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.green),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 260,
                  child: Text("By Signing up you agree to our Terms Conditions & Privacy Policy",
                    style: TextStyle(color: Colors.black45),
    ),
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

                  onPressed: () {},
                  icon: SizedBox(
                    height: 22,
                    child: Image.network(

                        'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-suite-everything-you-need-know-about-google-newest-0.png',),
                  ),



                  label: const Text("CONNECT WITH GOOGLE",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              ),
            )

          ],
         ),
    ],
        ),
      ),
    );
  }
}
