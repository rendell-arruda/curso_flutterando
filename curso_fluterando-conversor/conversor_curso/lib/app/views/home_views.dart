import 'package:conversor_curso/components/currency_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 100, bottom: 30),
        child: Column(
          children: [
            Image.network(
              'https://imgs.search.brave.com/7XZ-T8hoXHLo6rB_o5ceySUzOsPbrn6XxmMtvwXmjFs/rs:fit:512:512:1/g:ce/aHR0cHM6Ly9jZG4u/aWNvbi1pY29ucy5j/b20vaWNvbnMyLzEx/NTMvUE5HLzUxMi8x/NDg2NTY0MTc1LWZp/bmFuY2UtY3VycmVu/Y3ktZXhjaGFuZ2Vf/ODE0OTgucG5n',
              width: 150,
              height: 150,
            ),SizedBox(height: 60,),
            CurrencyBox(),SizedBox(height: 20,),CurrencyBox(),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: const Text('CONVERTER'))
          ],
        ),
      ),
    ));
  }
}
