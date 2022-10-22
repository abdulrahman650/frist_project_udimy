import 'package:flutter/material.dart';
import 'package:frist_project_masour/shared/componant/componant.dart';

class loginScreen extends StatefulWidget
{
  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool isPasswordShow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Shalaboka"),
        actions: [
          IconButton(onPressed: nofication, icon: Icon(Icons.search),),
          IconButton(onPressed: () {
            print("click");
          }, icon: Icon(Icons.notifications),)

        ],
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 18.0,
                    fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (String value){
                      if(value.isEmpty){
                        return'email must not be empty';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefix: Icons.email,
                ),
                SizedBox(
                  height: 15.0,
                ),
                defaultFormField(
                  controller: passwordController,
                  label: 'Passsword',
                  prefix: Icons.lock,
                  suffix: isPasswordShow ? Icons.visibility : Icons.visibility_off,
                  isPassword: isPasswordShow,
                  suffixPressed: (){
                    setState((){
                      isPasswordShow = !isPasswordShow;
                    });
                  },
                  type: TextInputType.visiblePassword,
                  validate: (String value){
                    if(value.isEmpty){
                      return'Passsword is to short';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                  text: 'login',
                  function: () {
                    if (formkey.currentState!.validate()) {
                      print(emailController.text);
                      print(passwordController.text);
                    }
                  },
                  radius: 10.0,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont\'t have an account"),
                    TextButton(onPressed: (){},
                        child: Text("Register now")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nofication() {
    print("hi ya raye2");
  }
}

