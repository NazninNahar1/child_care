import 'package:child_care/screens/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;
  TextEditingController _passwordController = TextEditingController();

  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: const Icon(Icons.arrow_back_rounded,color:Colors.black ,),
        title:  Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),



      ),
      body: SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          child: Container(
            padding: EdgeInsets.only(top: 40),

            child: Column(
              children: [
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Email Address',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(

                          validator: (input) {
                            if(input==null||input.characters.contains('@')==false) {
                              return 'Provide an email';
                            }
                          },
                          onSaved: (input) => _email = input!,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),
                              labelText: 'Email Address',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Password',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: !_showPassword,
                          validator: (input) {
                            if(input!.length < 6) {
                              return 'Longer password please';
                            }
                          },
                          onSaved: (input) => _password = input!,
                          decoration:InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: const BorderSide(
                                color: Colors.deepPurple,
                              ),
                            ),

                          //  focusedBorder: InputBorder.none,
                              labelText: 'Password',
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(width: 1, color: Colors.grey), //<-- SEE HERE
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _togglevisibility();
                                });

                              },

                              child: Icon(
                                _showPassword ? Icons.visibility : Icons
                                    .visibility_off, color: Colors.grey,),
                            ),

                          ),

                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                          const [
                          Text('Forgot Password?',style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                          Text('Reset Pasword',style: TextStyle(color: Colors.deepPurple,fontSize: 20),),

                        ],),
                      ),
                      SizedBox(height: 50,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),



                          ),


                          onPressed: _submit,
                          child: Text('Login'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignupScreen()));
      print(_email);
      print(_password);
    }
  }
}
