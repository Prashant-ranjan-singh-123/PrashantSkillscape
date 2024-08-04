import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';

class CertificateScreenData{
  static List<Widget> cursol_slider_item = [
    CertificateScreenData.customCard(experience: experience[0]!),
    CertificateScreenData.customCard(experience: experience[1]!),
    CertificateScreenData.customCard(experience: experience[2]!),
    CertificateScreenData.customCard(experience: experience[3]!),
    CertificateScreenData.customCard(experience: experience[4]!),
    CertificateScreenData.customCard(experience: experience[5]!),
    CertificateScreenData.customCard(experience: experience[6]!),
    CertificateScreenData.customCard(experience: experience[7]!),
    CertificateScreenData.customCard(experience: experience[8]!),
    CertificateScreenData.customCard(experience: experience[9]!),
    CertificateScreenData.customCard(experience: experience[10]!),
    CertificateScreenData.customCard(experience: experience[11]!),
  ];

  static Map<int, Map<String, dynamic>> experience = {
    0: {
      "certName": "Cybersecurity Essentials",
      "description": "",
      "featureGraphic":AppAssets.certificate_cyber_cisco,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    1: {
      "certName": "Cyber Tool And Cyber Attack",
      "description": "",
      "featureGraphic": AppAssets.certificate_cyber_coursera_ibm,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    2: {
      "certName": "Anz Program",
      "description": "",
      "featureGraphic": AppAssets.certificate_cyber_forge,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    3: {
      "certName": "Cyber Security Training",
      "description": "",
      "featureGraphic": AppAssets.certificate_cyber_internshala,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    4: {
      "certName": "Cyber Security Pledge",
      "description": "",
      "featureGraphic": AppAssets.certificate_cyber_pledge,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    5: {
      "certName": "Cyber Security Awareness",
      "description": "",
      "featureGraphic": AppAssets.certificate_cyber_vidya_vikas_manadal,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    6: {
      "certName": "Data Structure",
      "description": "",
      "featureGraphic": AppAssets.certificate_dsa_courseera_uc_san_diego,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    7: {
      "certName": "Text Based Bank in Java",
      "description": "",
      "featureGraphic": AppAssets.certificate_java_coursera_course_network,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    8: {
      "certName": "Crash Course on Python",
      "description": "",
      "featureGraphic": AppAssets.certificate_python_coursera_google,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    9: {
      "certName": "Python Mastery",
      "description": "",
      "featureGraphic": AppAssets.certificate_python_coursera_infosys,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
    10: {
      "certName": "Programming essential in python",
      "description": "",
      "featureGraphic": AppAssets.certificate_python_python_institure,
      "links": {
        "drive_link": "",
        "verify_link": ""
      }
    },
  };

  static Widget customCard({required Map<String, dynamic> experience}){
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
                      //         githubLink: experience[5]['Link'][0]!),
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