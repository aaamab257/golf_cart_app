import 'package:flutter/material.dart';
import 'package:loginandregister_flutter/Screens/Home.dart';
import 'package:loginandregister_flutter/Screens/Login.dart';

class RegisterPageScreen extends StatefulWidget {
  RegisterPageScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageScreenScreen createState() => _RegisterPageScreenScreen();
}

class _RegisterPageScreenScreen extends State<RegisterPageScreen> {
  bool _showPassword = false;
  void _togglevisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.blueAccent, //change your color here
        ),
        backgroundColor: Colors.white,
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              'SignUp Now',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            Center(
              child: Text(
                'Kindly Fill all the details to get started',
                style: TextStyle(fontSize: 13, color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Username Field must not be empty';
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // move focus to next
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Phone Field must not be empty';
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                        labelText: 'Phone Number ex +966*******',
                        border: OutlineInputBorder(),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // move focus to next
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Type Field must not be empty';
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                        labelText: 'Select account type',
                        border: OutlineInputBorder(),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // move focus to next
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Email Field must not be empty';
                        }
                        return null;
                      },
                      decoration: new InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                      ),
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // move focus to next
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      onFieldSubmitted: (_) => FocusScope.of(context)
                          .nextFocus(), // move focus to next
                      obscureText: !_showPassword,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password Field must not be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 10.0),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _togglevisibility();
                          },
                          child: Container(
                            height: 50,
                            width: 70,
                            padding: EdgeInsets.symmetric(vertical: 13),
                            child: Center(
                              child: Text(
                                _showPassword ? "Hide" : "Show",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: FlatButton(
                        minWidth: MediaQuery.of(context).size.width,
                        height: 45,
                        child: Text('Register'),
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        textColor: Colors.white,
                        onPressed: () {
                          print('Register Clicked');
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPageScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Text('Have an Account? Log In'),
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
