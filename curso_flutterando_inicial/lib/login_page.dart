import 'package:flutter/material.dart';
import 'package:projeto_flutterando/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body() {
    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 12, right: 12, top: 20, bottom: 12),
                        child: Column(children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll<Color>(Colors.cyan),
                            ),
                            onPressed: () {
                              if (email == 'rendellarruda3@gmail.com' &&
                                  password == '123') {
                                Navigator.of(context)
                                    .pushReplacementNamed('/home');
                              } else {
                                print('login inválido');
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              child: Text(
                                'Entrar',
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            )),
        Container(
          color: Colors.white.withOpacity(0.2),
        ),
        _body(),
      ],
    ));
  }
}
