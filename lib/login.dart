import 'package:flutter/material.dart';
import 'package:login/list.dart';
import 'package:login/splash.dart';

class Home extends StatefulWidget {
  // Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
  bool _isDataMatched = true;
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
      
        child: Center(
          
          child: ClipRRect(
             borderRadius: BorderRadius.circular(10),
             
            child: Container(
              
              color: const Color.fromARGB(255, 0, 0, 0),
              width: 300,
              height: 450,
              
              
              
              child: Card(
                
                shadowColor: Colors.orange,
                // shape: Border.all(style: BorderStyle.),
                color: Color.fromARGB(255, 216, 155, 201),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 70),
                        child: SizedBox(
                          width: 250,
                          child: TextFormField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              labelText: 'User Name',
                              hintText: 'Enter Your Name',
                              prefixIcon: Icon(Icons.person),
                              prefixIconColor: Colors.black,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'value is Empty';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: SizedBox(
                          width: 250,
                          child: TextFormField(
                            
                            controller: _passwordController,
                            obscureText: true,
                            // decoration: InputDecorator(border: OutlineInputBorder()),
                            decoration:  InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                              labelText: 'Password',
                              hintText: 'Enter Password',
                              prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Colors.black,
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'value is Empty';
                              } else {
                                return null;
                              }
          
                              // if (_isDataMatched) {
                              //   return null;
                              // }
                              // else{
                              //   return "Erorr";
                              // }
                            },
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 40)),
                      MaterialButton(
                          
                          onPressed: () {
                           if( _formKey.currentState!.validate()){
                            checklogin(context);
                           }
                            else{
                              print("Data empty");
                            }
                            
                          },
                          minWidth: 150,
                          color: Colors.purple,
                          splashColor: Colors.black,
                          
                          
                          // {
                          //   if (_formkey.currentState.validate()) {
                          //     checklogin(context);
                          //   }
                          // },
                          child: const Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
      print('user pass match');
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx) => list()),
      );
    } else {
      final _errorMessage = "Username password doesnot match";
      print(_errorMessage );
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text(_errorMessage)));
    }
  }
}
