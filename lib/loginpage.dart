import 'package:flutter/material.dart';

import 'homepage.dart';

class loginpage extends StatefulWidget {
  loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool visible = true;
  String username = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'Bela Negara',
          style: TextStyle(fontSize: 50),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('logo_upn.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _inputusername(),
              _inputpassword(),
              _buttonlogin(context),
            ],
          ),
        ],
      ),
    ));
  }

  Widget _inputusername() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        onChanged: (value) {
          username = value;
        },
        decoration: const InputDecoration(
          label: Row(
            children: [
              Icon(Icons.person),
              Text('username'),
            ],
          ),
          filled: true,
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  Widget _inputpassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: TextFormField(
        onChanged: (value) {
          password = value;
        },
        obscureText: visible,
        decoration: InputDecoration(
            suffix: IconButton(
                onPressed: () {
                  setState(() {
                    visible = !visible;
                  });
                },
                icon: visible
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility)),
            label: Row(
              children: [
                Icon(Icons.lock),
                Text('Password'),
              ],
            ),
            filled: true,
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            )),
      ),
    );
  }

  Widget _buttonlogin(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 150, vertical: 5),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "1" && password == "1") {
            text = "Login berhasil";
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return halamanutama(username: username);
            }));
          } else {
            text = "Login gagal";
          }
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Login'),
      ),
    );
  }
}
