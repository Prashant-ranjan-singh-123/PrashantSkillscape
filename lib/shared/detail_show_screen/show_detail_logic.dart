import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/under_development_dialog.dart';

class ShowDetailLogic{
  static void back_button_logic(){
    Get.back();
  }

  static void send_button_logic(){
    Development.showDialogBox();
  }

  static void open_github_project(){
    Development.showDialogBox();
  }

  static void open_playstore_project(){
    Development.showDialogBox();
  }
}