import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/app_asset.dart';
import '../../../shared/color.dart';

class CertificateScreenData {
  static List<Widget> carouselSliderItems = experience.entries.expand(
        (entry) => entry.value.entries.map(
          (e) => customCard(experience: e.value, category: entry.key),
    ),
  ).toList();

  static Map<String, Map<int, dynamic>> experience = {
    'Cyber': {
      0: {
        "certName": "Cybersecurity Essentials",
        "description": "",
        "featureGraphic": AppAssets.certificate_cyber_cisco,
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
    },
    'Dsa': {
      0: {
        "certName": "Data Structure",
        "description": "",
        "featureGraphic": AppAssets.certificate_dsa_courseera_uc_san_diego,
        "links": {
          "drive_link": "",
          "verify_link": ""
        }
      },
    },
    'Java': {
      0: {
        "certName": "Text Based Bank in Java",
        "description": "",
        "featureGraphic": AppAssets.certificate_java_coursera_course_network,
        "links": {
          "drive_link": "",
          "verify_link": ""
        }
      },
    },
    'Python': {
      0: {
        "certName": "Crash Course on Python",
        "description": "",
        "featureGraphic": AppAssets.certificate_python_coursera_google,
        "links": {
          "drive_link": "",
          "verify_link": ""
        }
      },
      1: {
        "certName": "Python Mastery",
        "description": "",
        "featureGraphic": AppAssets.certificate_python_coursera_infosys,
        "links": {
          "drive_link": "",
          "verify_link": ""
        }
      },
      2: {
        "certName": "Programming essential in python",
        "description": "",
        "featureGraphic": AppAssets.certificate_python_python_institure,
        "links": {
          "drive_link": "",
          "verify_link": ""
        }
      },
    }
  };


  static Widget customCard({required Map<String, dynamic> experience, required String category}) {
    String certificateName = experience['certName'];
    String description = experience['description'];
    String certificateImage = experience['featureGraphic'];
    String driveLink = experience['links']['drive_link'];
    String verifyLink = experience['links']['verify_link'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(certificateImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }
}
