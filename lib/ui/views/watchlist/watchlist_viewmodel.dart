import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshopappsinvestment/ui/views/watchlist/stocks_model.dart';
//import 'package:workshopappsinvestment/ui/views/watchlist/stocks_model.dart';




final watchlistViewmodelProvider=ChangeNotifierProvider((_) => WatchlistViewModel());

class Stocks  {
  late String name;
  late String symbol;
  late double last;
  late double change;
  late double percent_change;
  late double open;
  late double high;
  late double low;
  late double volume;
  var change_color=Colors.black;
  var symbol_color=Colors.black;


  Stocks({required this.name,required this.symbol,required this.last,required this.change,
    required this.percent_change,required this.open,required this.high,required this.low,required this.volume});

  void set_change(){
    if(change>=0){}
  }
}


class WatchlistViewModel extends ChangeNotifier{
  List<Stocks> _watchlist=[
    Stocks(name: "Tesla Inc", symbol: "TSLA", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 7.86),
    Stocks(name: "Alphabet Inc Class A", symbol: "GOOGL", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Microsoft Corp", symbol: "MSFT", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "PayPal Holdings Inc", symbol: "PYPL", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Apple Inc", symbol: "AAPL", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Netflix Inc", symbol: "NFLX", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "NVIDIA Coporation", symbol: "NVDA", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Alphabet Inc Class C", symbol: "GOOG", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Investco QQQ Trust Series 1", symbol: "QQQ", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Bank of America Corp", symbol: "BAC", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),
    Stocks(name: "Air France KLM SA", symbol: "AF", last: 151.84, change: 8.3, percent_change: 2.02, open: 216.85, high: 217.51, low: 211.53, volume: 5.86),

  ];




  List <Stocks> get watch_list => _watchlist;

}

