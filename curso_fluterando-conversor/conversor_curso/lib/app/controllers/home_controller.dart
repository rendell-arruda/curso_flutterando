import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/currency_model.dart';

class HomeControler {
  late List<CurrencyModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  CurrencyModel? toCurrency;
  CurrencyModel? fromCurrency;
  HomeControler(this.toText, this.fromText) {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if(fromCurrency?.name == 'Real'){
      returnValue = value*toCurrency.real;
    } else if(fromCurrency?.name == 'Dolar'){
      returnValue = value*toCurrency.dolar;
    }else if (fromCurrency?.name == 'Euro'){
      returnValue = value*toCurrency.euro;
    }else if (fromCurrency?.name == 'Bitcon'){
      returnValue = value*toCurrency.bitcon;
    }
    fromText.text = returnValue.toStringAsFixed(2);
  }

}
