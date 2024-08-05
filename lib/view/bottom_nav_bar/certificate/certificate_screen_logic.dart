import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prashant_potfolio/shared/color.dart';
import 'certificate_screen_data.dart';

class CertificateScreenLogic extends StatefulWidget {
  final Function(String) onCategorySelected;

  const CertificateScreenLogic({Key? key, required this.onCategorySelected}) : super(key: key);

  @override
  _CertificateScreenLogicState createState() => _CertificateScreenLogicState();
}

class _CertificateScreenLogicState extends State<CertificateScreenLogic> {
  late String selectedCategory;

  @override
  void initState() {
    super.initState();
    // Select the first category by default
    selectedCategory = CertificateScreenData.experience.keys.first;
    // Notify the parent widget about the initial selection
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onCategorySelected(selectedCategory);
    });
  }

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
    widget.onCategorySelected(category);
  }

  Widget _buildCategoryWidget(String category, int count) {
    bool isSelected = category == selectedCategory;
    return GestureDetector(
      onTap: () => _onCategorySelected(category),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Column(
          children: [
            Text(
              category,
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.w900 : FontWeight.w400,
                fontSize: isSelected? 27 : 25,
                fontFamily: 'Merriweather',
                color: isSelected ? ColorOfApp.textBold : ColorOfApp.textBold.withOpacity(0.5),
              ),
            ),
            Text(
              '$count Certs',
              style: TextStyle(
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                fontSize: isSelected? 17 : 15,
                fontFamily: 'OpenSans',
                color: isSelected ? ColorOfApp.textLight : ColorOfApp.textLight.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> categoryWidgets = CertificateScreenData.experience.entries
        .map((entry) => _buildCategoryWidget(entry.key, entry.value.length))
        .toList();

    return Padding(
      padding: const EdgeInsets.only(left: 25,right: 25, top: 60, bottom:30),
      child: SizedBox(
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: categoryWidgets,
        ),
      ),
    );
  }
}