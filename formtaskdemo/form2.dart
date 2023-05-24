import 'package:flutter/material.dart';
class FD extends StatefulWidget {
  const FD({Key? key}) : super(key: key);

  @override
  State<FD> createState() => _FD();
}

class _FD extends State<FD> {
  var showpassword=true;
  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;

    });
  }
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var email1Controller=TextEditingController();
  var passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();
   var name='',email='',email1='',password='';
  @override



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login")),
        backgroundColor: Colors.red,
      ),
        body:Form(
          key: _formKey,
          child: ListView(

              children:[ Column(
          children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Register Form",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          )),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {

                  return 'Please enter name';
                }

                return null;
              },
              controller: nameController,


              decoration: InputDecoration(


                label: Text(
                  "Name",style: TextStyle(fontSize:15,color: Colors.black),

                ),
                hintText: "Enter Your Name",
                hintStyle: TextStyle(fontSize: 10)),

              ),
            ),

          Padding(
            padding: const EdgeInsets.all(10),
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


                  prefixIcon: Icon(Icons.contact_mail),
                  labelText: "Enter Your Email",
                  labelStyle: TextStyle(
                    color: Colors.red, //<-- SEE HERE
                  ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 3)
                ),
                enabledBorder: OutlineInputBorder(

                  borderSide: BorderSide(color: Colors.red,width: 3)
                  ),
                )
            ),
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
              controller: email1Controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                  label: Text(
                      "email"
                  ),
                hintText: "Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
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
                label: Text("Password"),
                prefixIcon: Icon(Icons.security),
               border: OutlineInputBorder(

                ),
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
             name = nameController.text;
             email = emailController.text;
             email1 = email1Controller.text;
             password = passwordController.text;
             if (_formKey.currentState!.validate()) {
               ScaffoldMessenger.of(context)
                   .showSnackBar(SnackBar(content: Text("Success")));
             }

           }
           );
              },

                  child: Text("Register",style: TextStyle(color: Colors.white),),
                  style:ButtonStyle(
                    backgroundColor:MaterialStateProperty.all(Colors.blue),
                  )
              ),
            ),
          ),


        ],
    )
            ],
          ),
      ),

    );

  }

//create a function like this so that you can use it wherever you want
}


