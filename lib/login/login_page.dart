import 'package:flutter/material.dart';
import 'package:yanbaru_hackathon/login/register_page.dart';
// SecondPageクラスが定義されているファイルをインポートする


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => SecondPage ();
}

class SecondPage extends State<LoginPage> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('ログイン'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                  labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                      icon: Icon(_isObscure
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      })),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('ログイン')
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text('新規登録のかたはこちら')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
