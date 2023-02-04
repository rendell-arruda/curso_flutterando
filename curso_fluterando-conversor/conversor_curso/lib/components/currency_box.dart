import 'package:flutter/material.dart';


class CurrencyBox extends StatelessWidget {
  const CurrencyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              child: DropdownButton(iconEnabledColor: Colors.amber,
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Real'),
                    ),
                  ],
                  onChanged: (value) {}),
            )),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber))),
          ),
        ),
      ],
    );
  }
}
