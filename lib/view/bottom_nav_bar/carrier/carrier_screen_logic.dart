import 'package:prashant_potfolio/view/bottom_nav_bar/carrier/carrier_screen_data.dart';
import 'package:url_launcher/url_launcher.dart';

class CarrierScreenLogic {
  // -- To Open tenth Logic --
  static void open10thSchool() async {
    print('object');
    String dt = CarrierScreenData.tenth_website_link;
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }

  // -- To Open 12th Logic --
  static void open12thSchool() async {
    print('object');
    String dt = CarrierScreenData.twelth_website_link;
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }

  // -- To Open bachler Logic --
  static void openBachler() async {
    print('object');
    String dt = CarrierScreenData.bachler_website_link;
    Uri url = Uri.parse(dt);
    try {
      await launchUrl(url);
    }catch (e){
      throw 'Could not launch $url';
    }
  }
}
