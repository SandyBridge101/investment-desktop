import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshopappsinvestment/ui/views/watchlist/watchlist_viewmodel.dart';


class WatchlistView extends ConsumerWidget{
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref){
    final provider=ref.watch(watchlistViewmodelProvider);

    List<DataRow> _buildtable()=>List.generate(provider.watch_list.length, (index) => DataRow(cells:[
      DataCell(Text(provider.watch_list[index].symbol)),
      DataCell(Text(provider.watch_list[index].name)),
      DataCell(Text(provider.watch_list[index].last.toString())),
      DataCell(Text(provider.watch_list[index].change.toString())),
      DataCell(Text(provider.watch_list[index].percent_change.toString())),
      DataCell(Text(provider.watch_list[index].open.toString())),
      DataCell(Text(provider.watch_list[index].high.toString())),
      DataCell(Text(provider.watch_list[index].low.toString())),
      DataCell(Text(provider.watch_list[index].volume.toString())),
    ]));

    return Scaffold(
      appBar: AppBar(
        title:Text("MyStockPlug"),
      ),
      body:SingleChildScrollView(
        child:Column(
          children: [
            Container(
              padding: EdgeInsets.only(left:100 ,right: 100),
              child: Column(
                children: [
                  Container(
                    child: Text('Watchlist',
                      textAlign:TextAlign.right,
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color:Colors.grey,
                      ),
                    ),//provide
                    alignment: Alignment.centerLeft,
                  ),

                  Container(
                    child:DataTable(
                      headingRowColor:MaterialStateColor.resolveWith((states) => Colors.grey),
                      columns: [
                        DataColumn(label: Text("Symbol")),
                        DataColumn(label: Text("Name")),
                        DataColumn(label: Text("Last")),
                        DataColumn(label: Text("Chg")),
                        DataColumn(label: Text("%Chg")),
                        DataColumn(label: Text("Open")),
                        DataColumn(label: Text("High")),
                        DataColumn(label: Text("Low")),
                        DataColumn(label: Text("Volume")),
                      ],
                      rows: _buildtable(),
                    ),
                  )

                ],
              ),
            ),
            //
            Container(

              color:Colors.black,
                child:Column(
              children: [
                Container(
                  alignment:Alignment.bottomRight,
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        padding:  EdgeInsets.only(top:50,bottom:50,left:50,right:20),
                        child: TextButton(child:Text("MyStockPlug", style:TextStyle(fontSize:24),),onPressed:(){},),
                      ),

                      Container(
                        alignment: Alignment.bottomRight,
                        child:Row(
                          children: [
                            Container(
                              //padding: EdgeInsets.all(20),
                              child:Column(
                                children: [
                                  Text("Get To Know Us",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white),),
                                  TextButton(child:Text("About MyStockPlug"),onPressed:(){},),
                                  TextButton(child:Text("Careers"),onPressed:(){},),
                                  TextButton(child:Text("Stock Tips"),onPressed:(){},),
                                  TextButton(child:Text("Contact Us"),onPressed:(){},),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child:Column(
                                children: [
                                  Text("Support",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white),),
                                  TextButton(child:Text("Help"),onPressed:(){},),
                                  TextButton(child:Text("FAQ"),onPressed:(){},),
                                  TextButton(child:Text("News"),onPressed:(){},),
                                  TextButton(child:Text("Blog"),onPressed:(){},),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(20),
                              child:Column(
                                children: [
                                  Text("Legal",style:TextStyle(fontWeight:FontWeight.bold,color:Colors.white),),
                                  TextButton(child:Text("Terms of use"),onPressed:(){},),
                                  TextButton(child:Text("Privacy Policy"),onPressed:(){},),
                                  TextButton(child:Text("Disclaimer"),onPressed:(){},),
                                  TextButton(child:Text("Cookies Policy"),onPressed:(){},),
                                ],
                              ),
                            )

                          ],
                        )
                        ,
                      )




                    ],
                  ),
                ),
                Container(
                  child: Text("2022 MystockPlug",style:TextStyle(color:Colors.white),),
                )
              ],
            ),

            )
          ],
        ),
      ),
    );
  }

}

/*
DataTable(
        columns: [
          DataColumn(label: Text("Symbol")),
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Last")),
          DataColumn(label: Text("Chg")),
          DataColumn(label: Text("%Chg")),
          DataColumn(label: Text("Open")),
          DataColumn(label: Text("High")),
          DataColumn(label: Text("Low")),
          DataColumn(label: Text("Volume")),
        ],
        rows: _buildtable(),
      )
*/