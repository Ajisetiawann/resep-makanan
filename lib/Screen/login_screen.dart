import 'package:ajisetiawan/Screen/signup.dart';
import 'package:ajisetiawan/Screen/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ajisetiawan/Screen/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Image.asset(
              'images/20220606_211017-removebg-preview.png',
              height: 30,
            ),
          ),
          Text(
            'Selamat Datang Di TastyPedia',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'Kumpulan berbagai resep masakan',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, height: 2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                label: Text('Username'),
                hintText: 'Masukkan username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Icon(Icons.person, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: passwordController,
              obscureText: hidePass,
              decoration: InputDecoration(
                label: Text('Password'),
                hintText: 'Masukkan password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            width: 0.10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 175),
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Fitur dalam pengembangan'),
                  action: SnackBarAction(label: 'OK', onPressed: () {}),
                ));
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
          ),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                if (userNameController.text == 'tasty' && passwordController.text == "tasty") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('berhasil login'),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ),
                  );

                  var box = Hive.box('userBox');
                  box.put('isLogin', true);

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => Dashboard()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('username atau password salah'),
                      action: SnackBarAction(label: 'Coba Lagi', onPressed: () {}),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Or Connect using',
              textAlign: TextAlign.right,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
                height: 40,
                width: 130,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Fitur dalam pengembangan'),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ));
                  },
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                )),
            SizedBox(
                height: 40,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Fitur dalam pengembangan'),
                      action: SnackBarAction(label: 'OK', onPressed: () {}),
                    ));
                  },
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                    Image.asset(
                      'images/google-fill.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Google')
                  ]),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[400],
                  ),
                )),
          ]),
          Container(
            padding: EdgeInsets.all(16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an Account ?",
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => SignUp());
                    Navigator.push(context, route);
                  },
                  child: Text("Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                      )))
            ],
          )
        ],
      ),
    );
  }
}
