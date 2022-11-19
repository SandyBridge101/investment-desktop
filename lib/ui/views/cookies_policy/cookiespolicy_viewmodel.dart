import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cookiespolicyViewmodelProvider=
    ChangeNotifierProvider((_) => CookiespolicyViewModel());

class CookiespolicyViewModel extends ChangeNotifier{

  String _mystockplug="MyStockPlug.com";
  String _date="January 2022";


  List<String> _paragraph=[
    "We may use use cookies, web beacons, tracking pixels, and other\n",
    "tracking technologies when you visit our website ",
    " including any other media form, media channel, mobile website, or\n",
    "mobile application related or connected MyStockPlug to help\n",
    "customize the Site and improve your experience. \n\n",
    "We reserve the right to make changes to this Cookie Policy at any time\n",
    "and for any reason. We will alert you about any changes by updating the\n",
        " Cookie Policy. Any changes or modifications will be\n",
        "effective immediately upon posting the updated Cookie Policy on the\n",
    "Site, and you waive the right to receive specific notice of each such change or modification.\n\n",
        "You are encouraged to periodically review this Cookie Policy to stay informed of updates.",
        "You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the ",
    "changes in any revised Cookie Policy by your continued use of the Site after the date such revised Cookie Policy is posted."

  ];


  List<String> get policy_text=>_paragraph;
  String get mystockplug=>_mystockplug;
  String get date =>_date;

}

/*
      "We may use use cookies, web beacons, tracking pixels, and other\n"
      "tracking technologies when you visit our website MyStockPlug.com\n"
  "including any other media form, media channel, mobile website, or\n"
  "mobile application related or connected MyStockPlug to help\n"
  "customize the Site and improve your experience. \n\n"
  "We reserve the right to make changes to this Cookie Policy at any time\n"
  "and for any reason. We will alert you about any changes by updating the\n"
  "January 2022 Cookie Policy. Any changes or modifications will be\n"
  "effective immediately upon posting the updated Cookie Policy on the\n"
  "Site, and you waive the right to receive specific notice of each such change or modification.\n\n"
  "You are encouraged to periodically review this Cookie Policy to stay informed of updates."
  "You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the "
      "changes in any revised Cookie Policy by your continued use of the Site after the date such revised Cookie Policy is posted.";
*/