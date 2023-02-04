import 'package:flutter/material.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.redAccent[100],
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(
            'https://imgs.search.brave.com/3a9prZAd99I-99wtcWtu74X8j8e6F8iuLR4S24s4aAE/rs:fit:512:512:1/g:ce/aHR0cHM6Ly93d3cu/c2hhcmVpY29uLm5l/dC9kYXRhLzIwMTYv/MTIvMTMvODYzMzg2/X21lZGlhXzUxMng1/MTIucG5n',
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Location Changer',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          const Text(
            'Plugins app for',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(327, 50),
                  elevation: 2,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)))),
              onPressed: () {},
              child: const Text(
                'Login with Facebook',
                style: TextStyle(color: Colors.redAccent),
              ))
        ]),
      ),
    );
  }
}
