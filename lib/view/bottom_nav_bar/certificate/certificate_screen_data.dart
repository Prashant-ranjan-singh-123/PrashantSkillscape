import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CertificateScreenData{
  static List<Widget> cursol_slider_item = [
    CertificateScreenData.customCard(experience: experience[0]),
    CertificateScreenData.customCard(experience: experience[1]),
    CertificateScreenData.customCard(experience: experience[2]),
    CertificateScreenData.customCard(experience: experience[3]),
    CertificateScreenData.customCard(experience: experience[4]),
    CertificateScreenData.customCard(experience: experience[5]),
    CertificateScreenData.customCard(experience: experience[6]),
    CertificateScreenData.customCard(experience: experience[7]),
    CertificateScreenData.customCard(experience: experience[8]),
    CertificateScreenData.customCard(experience: experience[9]),
    CertificateScreenData.customCard(experience: experience[10]),
    CertificateScreenData.customCard(experience: experience[11]),
  ];

  static Map<int, Map<String, dynamic>> experience = {
    0: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    1: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    2: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    3: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    4: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    5: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    6: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    7: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    8: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    9: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    10: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    11: {
      "certName": "",
      "description": "",
      "featureGraphic": ,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
  };

  static Widget customCard({required List<dynamic> experience}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.grey], // adjust colors as needed
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: SizedBox(
            height: Get.height * 0.2,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        elevation: 10,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10)))),
                    onPressed: () {
                      // Get.to(
                      //     ShowDetail(
                      //         heading: experience[0],
                      //         imageLocation: experience[2],
                      //         shortDiscription: experience[1],
                      //         playstoreLink: experience[5]['Link'][1],
                      //         githubLink: experience[5]['Link'][0]),
                      //     transition: Transition.fadeIn,
                      //     duration: 500.ms);
                    },
                    child: const Text(
                      '     Know More    ',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}