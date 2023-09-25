import 'package:flutter/material.dart';
import 'package:start_app/First_Task/signup_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formfiled = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool passtoggle = true;
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(

          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formfiled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const Text(
                  'LogIn',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'please LogIn to enter the App',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25,),
                const Text(
                  'Enter via Social network',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 60,

                      decoration: BoxDecoration(
                        color:   Colors.lightBlueAccent,
                        border: Border.all(
                          color: Colors.lightBlueAccent,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                        ),
                        onPressed:(){},
                        child:const Image(

                          image: AssetImage('assets/twitter.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Container(
                      width: 150,
                      height: 60,

                      decoration: BoxDecoration(
                        color: const Color(0xff495994),
                        border: Border.all(
                          color: const Color(0xff495994),
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  const Color(0xff495994),
                        ),
                        onPressed:(){},
                        child: const Image(

                          image: AssetImage('assets/facebook.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 55,),
                const Text(
                  'or login with email',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(

                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration:  InputDecoration(
                      label: const Text('Email or phone number'),
                      border:   OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),

                      ),


                      prefixIcon: const Icon(Icons.email_rounded,),

                    ),
                    validator: (value){
                      bool emailvalid =  RegExp(r"""
^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""")
                          .hasMatch(value!);
                      if(value.isEmpty){
                        return 'enter an email';
                      }
                      else if(!emailvalid){
                        return 'enter valid email';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 25,),
                SizedBox(
                  width: 350,
                  height: 55,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordcontroller,
                    obscureText: passtoggle,
                    decoration: InputDecoration(
                        label: const Text('Password'),

                        border:   OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),

                        ),
                        prefixIcon: const Icon(Icons.lock,),
                        suffix: InkWell(
                          onTap: (){

                            setState(() {
                              passtoggle = !passtoggle;
                            });
                          },
                          child: Icon(passtoggle ? Icons.visibility : Icons.visibility_off),

                        )


                    ),
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'enter a password';
                      }
                      else if(passwordcontroller.text.length<8){
                        return 'password should be 8 or more character';
                      }
                      return null;
                    },
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ischecked,
                      onChanged: (newbool){
                        setState(() {
                          ischecked = newbool!;
                        });

                      },
                      activeColor: Colors.blue,
                    ),
                    const Text(
                      'I agree with all terms',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 55,),
                Container(
                  width: 350,
                  height: 60,

                  decoration: BoxDecoration(
                    color:  Colors.blue,
                    border: Border.all(
                      color:  Colors.blue,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  Colors.blue,
                    ),
                    onPressed:(){
                      //Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => SignUpPage(),
                      // ));
                    },
                    child: const Text(
                      'LogIn',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    const Text(
                      'Already have an account',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton
                      (
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ));
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,

                        ),
                      ),),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
