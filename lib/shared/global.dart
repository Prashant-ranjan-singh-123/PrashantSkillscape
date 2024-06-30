import 'package:get/get.dart';

double returnSizeOfScreenWhichIsSmaller(){
  if(Get.width>Get.height){
    return Get.height;
  }else{
    return Get.width;
  }
}

double returnSizeOfScreenWhichIsBigger(){
  if(Get.width>Get.height){
    return Get.width;
  }else{
    return Get.height;
  }
}

bool isHeightBigger(){
  return Get.height>=Get.width;
}