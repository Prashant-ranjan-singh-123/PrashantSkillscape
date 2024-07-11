import 'package:prashant_potfolio/shared/app_asset.dart';

class HomeScreenData {
  static education_fun_call() {}

  // About me
  static String name = 'Prashant Ranjan Singh';
  static String role = 'Mobile Developer | Flutter Developer';
  static String discription_short =
      'Hello there! My name is Prashant Ranjan Singh, and I am a skilled Software Engineer who specializes in developing Flutter applications. I hold a Bachelor\'s degree in Btech Cse from Medicaps University and have been working in the field for about approximately 1+ years. I am adept at creating mobile apps that are both efficient and user-friendly, and I possess proficiency in various technologies, including Firebase, Supabase, Figma, and Flutter. I am passionate about staying up-to-date with industry trends and technologies to deliver top-notch software solutions.';

  static Map<int, List> socialLink = {
    0: [AppAssets.threeisToFourPortfolioImage, 'https://prashant-ranjan-singh-123.github.io/'],
    1: [AppAssets.threeisToFourGithubImage, 'https://github.com/Prashant-ranjan-singh-123'],
    2: [AppAssets.threeisToFourLinkedinImage, 'https://www.linkedin.com/in/prashant-ranjan-singh-b9b6b9217/'],
    3: [AppAssets.threeisToFourTelegramImage, 'https://t.me/Prashantsingh255'],
    4: [AppAssets.threeisToFourGmailImage, 'prashant.singh.12312345@gmail.com']
  };

  static Map<int, List> skills = {
    0: ['Flutter', 0.9],
    1: ['Dart', 0.82],
    2: ['Firebase', 0.75],
    3: ['Android Development', 0.7],
    4: ['Supabase', 0.65],
    5: ['Ui/Ux', 0.46],
    6: ['Swift Ui', 0.3]
  };

  static const String contactDescription =
      'Hey! I appreciate you looking at my public profile. Please feel free to ask me anything or to discuss anything with me. I\'m happy to chat with and meet new people. Regardless of the fact that I don\'t use social media much, you can find me there. So find me and get in touch with me. Send me an email if you need to discuss anything serious with me. I\'ll get back to you in 12 to 24 hours.';
}

