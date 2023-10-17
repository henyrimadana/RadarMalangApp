import 'package:flutter/material.dart';
import 'package:radarmalangapp/home.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController pwdController = TextEditingController();
    var username = "heny";
    var pwd = "heny3010";
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logobulat.png',
                height: 300,
                width: 300,
              ),

              SizedBox(
                height: 30,
              ),

              // SizedBox(
              //   height: 20,
              // ),

              //Pengisian username
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'username'),
                      ),
                    )),
              ),
              SizedBox(
                height: 15,
              ),

              //Pengisian Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: pwdController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Password'),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),

              SizedBox(
                height: 55,
                width: 355,
                child: ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    primary: Color.fromARGB(255, 109, 162, 255),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => const Home()));

                    print('Checking');
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home_Page(setTheme: setTheme),));
                    if (usernameController.text == username &&
                        pwdController.text == pwd) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        backgroundColor: Color.fromARGB(255, 0, 0, 0),
                        content: Text('Incorrect username or Password'),
                      ));
                    }
                    print('Login');
                  },
                ),
              ),

              // Tulisan Register
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  'Dont have any account?',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                TextButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 2, 2),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    print('Register Successfully');
                  },
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
