import 'package:flutter/material.dart';
import 'package:start_app/First_Task/signup_page.dart';
import 'login_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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

          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                'please login to keep using our app',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 15,),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: const Image(
                      width: 300,
                      height: 400,
                      image: AssetImage('assets/hunterxhunter.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
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
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LogInPage(),
                    ));
                  },
                  child: const Text(
                    'Login',
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
                    'Don\'t have an account?',
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
    );
  }
}
