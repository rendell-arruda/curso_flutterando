import 'package:flutter/material.dart';
import 'package:projeto_flutterando/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/89528131?v=4'),
                ),
                accountName: const Text('Rendell Arruda'),
                accountEmail: const Text('rendellarruda3@gmail.com')),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              subtitle: const Text('Tela de inicio'),
              onTap: () {
                // print('Home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              subtitle: const Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ]),
        ),
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: const [CustomSwitch()],
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Text('Contador: $counter'),
              Container(
                height: 10,
              ),
              CustomSwitch(),
              Container(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  )
                ],
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(50, 50),
                        elevation: 3,
                        backgroundColor: Colors.redAccent,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40)))),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/tinder');
                    },
                    child: const Text('Ir para Tinder Page')),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppControler.instance.isDartTheme,
        onChanged: (value) {
          AppControler.instance.changeTheme();
        });
  }
}
