import 'package:flutter/material.dart';
class DemoFlutter extends StatefulWidget {
  const DemoFlutter({Key? key}) : super(key: key);

  @override
  State<DemoFlutter> createState() => _DemoFlutterState();
}

class _DemoFlutterState extends State<DemoFlutter> {
  var showpassword=true;
  void togglepassword()
  {
    setState(() {
      showpassword=!showpassword;

    });
  }
  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var urlController=TextEditingController();
  var numberController=TextEditingController();
  var calController=TextEditingController();
  final _formKey=GlobalKey<FormState>();


  var name='',email='',password='',url='',number='',cal='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Demo"),
        backgroundColor: Colors.teal,
      ),

      body:Form(
        key: _formKey,
        child: ListView(

            children:[ Column(
        children: [
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



                hintText: "Name",

            ),
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

                hintText: "Email",

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
                hintText: "Password",

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {

                  return 'Please enter URL';
                }

                return null;
              },
              controller: urlController,

              decoration: InputDecoration(
                hintText: "Url",

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {

                  return 'Please enter phone number';
                }

                return null;
              },
              controller: numberController,

              decoration: InputDecoration(
                hintText: "Phone number",

              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {

                  return 'Please enter Calories';
                }

                return null;
              },
              controller: calController,

              decoration: InputDecoration(
                hintText: "Calories",

              ),

            ),
          ),



    Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100,
        height: 40,
        child: ElevatedButton(onPressed: () {
    setState(() {
    name=nameController.text;
    email=emailController.text;
    password=passwordController.text;
    url=urlController.text;
    number=numberController.text;
    cal=calController.text;
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Success")));
    }
    }
    );
    },

   child: Text("Submit",style: TextStyle(color: Colors.blue),),
        style:ButtonStyle(
        backgroundColor:MaterialStateProperty.all(Colors.white54),
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
}
