import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Stocks{
  late String name;
  late String symbol;
  late int last;
  late double change;
  late double percent_change;
  late double open;
  late double high;
  late double low;
  late double volume;

  Stocks({required this.name,required this.symbol,required this.last,required this.change,
    required this.percent_change,required this.open,required this.high,required this.low,required this.volume});
}