import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshopappsinvestment/ui/views/cookies_policy/cookiespolicy_viewmodel.dart';

class CookiespolicyView extends ConsumerWidget {
  const CookiespolicyView({super.key});


  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final provider=ref.watch(cookiespolicyViewmodelProvider);

    return Scaffold(

      body:SingleChildScrollView(
        child:Column(

          children: [
            Container(
              padding: EdgeInsets.only(left:100 ,right: 100,bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding:EdgeInsets.all(20),
                    child:Text('Cookies Policy',
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
                    padding:EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      border: Border.all(width:1),
                      borderRadius:BorderRadius.circular(10),
                      color:Colors.white,
                    ),
                    //color: Colors.white,
                    width: 600,
                    child:Column(
                      children: [

                        Container(
                          child:Center(
                            child:RichText(
                              textAlign:  TextAlign.center,
                              text:TextSpan(
                                style:TextStyle(color: Colors.black,
                                ),
                                  children:[
                                    TextSpan(text: provider.policy_text[0].toString()),
                                    TextSpan(text:provider.policy_text[1].toString()),
                                    TextSpan(text:provider.mystockplug,style: TextStyle(fontWeight:FontWeight.bold)),
                                    TextSpan(text:provider.policy_text[2].toString()),
                                    TextSpan(text:provider.policy_text[3].toString()),
                                    TextSpan(text: provider.policy_text[4].toString()),
                                    TextSpan(text:provider.policy_text[5].toString()),
                                    TextSpan(text:provider.policy_text[6].toString() ),
                                    TextSpan(text: provider.date,style: TextStyle(fontWeight:FontWeight.bold)),
                                    TextSpan(text: provider.policy_text[7].toString()),
                                    TextSpan(text: provider.policy_text[8].toString()),
                                    TextSpan(text: provider.policy_text[9].toString()),
                                    TextSpan(text:provider.policy_text[10].toString()),
                                    TextSpan(text: provider.policy_text[11].toString()),
                                  ]
                              ),

                            ),
                          ),
                        ),
                        Container(
                          alignment:Alignment.centerRight,
                          padding: EdgeInsets.all(10),
                          child:TextButton(
                            child:Text("Accept"),
                            onPressed:(){},
                            style:TextButton.styleFrom(
                              foregroundColor:Colors.white,
                              backgroundColor: Colors.green,
                            )
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
            //
            Container(
              color:Colors.black,
              alignment: Alignment.bottomCenter,
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
