import 'carrier_screen_logic.dart';

class CarrierScreenData {
  static education_fun_call() {}

  // About me
  static String name = 'Prashant Ranjan Singh';
  static String role = 'Mobile Developer | Flutter Developer';
  static String discription_short =
      'Hello there! My name is Prashant Ranjan Singh, and I am a skilled Software Engineer who specializes in developing Flutter applications. I hold a Bachelor\'s degree in Btech Cse from Medicaps University and have been working in the field for about approximately 1+ years. I am adept at creating mobile apps that are both efficient and user-friendly, and I possess proficiency in various technologies, including Firebase, Supabase, Figma, and Flutter. I am passionate about staying up-to-date with industry trends and technologies to deliver top-notch software solutions.';

  static Map<int, dynamic> education = {
    1: [
      'Golden International School (X)',
      'I successfully completed my 10th grade education at this institution, achieving a CGPA of 7.0. My coursework included Physics, Chemistry, and Mathematics (PCM), subjects in which I demonstrated strong proficiency and academic performance.',
      CarrierScreenLogic.open10thSchool
    ],
    2: [
      'Sita Devi School (XII)',
      'I successfully completed my 12th grade education (Senior Secondary) at this institution, achieving a CGPA of 7.0. My academic focus was on Physics, Chemistry, and Mathematics (PCM), a challenging combination in which I demonstrated strong aptitude and performance.',
      CarrierScreenLogic.open12thSchool
    ],
    3: [
      'Medicaps University (Btech)',
      'I am completing my B.Tech in Computer Science and Engineering (Honors) from MediCaps University, graduating in 2024 with a CGPA of 8.49. This program has equipped me with strong computer science skills and knowledge of advanced technologies.',
      CarrierScreenLogic.openBachler
    ]
  };


  static Map<int, dynamic> experience = {
    1: [
      'Oasis Infobyte (Java Intern)',
      'May 2022 - Jun 2022\n\n'
          'During this internship, I gained invaluable experience in applying Java programming concepts to real-world scenarios, significantly enhancing my understanding of software development practices.',
      CarrierScreenLogic.openOasis
    ],
    2: [
      'SYNC INTERN\'S (App-Dev Intern)',
      'Mar 2023 - Apr 2023 \n\n'
          'During this internship, I gained comprehensive hands-on experience in Android application development, significantly enhancing my understanding of mobile software engineering.',
      CarrierScreenLogic.openSync
    ],
    3: [
      'CodeClause (App-Dev Intern)',
      'Apr 2023 - May 2023\n\n'
          'This internship has been more than just a learning experience; it has been a stepping stone towards my career in App development. The skills, knowledge, and connections I\'ve gained have laid a strong foundation for my future ',
      CarrierScreenLogic.openCodeClause
    ],
    4: [
      'CodeClause (App-Dev Intern)',
      'Apr 2023 - May 2023\n\n'
          'This internship has been more than just a learning experience; it has been a stepping stone towards my career in App development. The skills, knowledge, and connections I\'ve gained have laid a strong foundation for my future ',
      CarrierScreenLogic.openCodeClause
    ],
    5: [
      'CodSoft (App-Dev Intern)',
      'Jul 2023 - Aug 2023\n\n'
          'During this internship, I gained comprehensive hands-on experience in Android app development, mastering key concepts such as UI design, API integration, and animations, while working on real-world projects that honed my problem-solving skills and prepared me for a career in mobile application development.',
      CarrierScreenLogic.openCodSoft
    ],
    6: [
      'Appzeto (Junior Flutter Dev.)',
      'Sep 2023 - Nov 2023\n\n'
          'Through this Period, I immersed myself in Flutter development, gaining hands-on experience with cross-platform app creation, state management, and UI design, while collaborating on real projects that sharpened my skills and prepared me for a career in modern mobile development.',
      CarrierScreenLogic.openPageNotFound
    ],
    7: [
      'Infovirtech (Junior Flutter Dev.)',
      'Jul 2023 - Aug 2023\n\n'
          'I immersed myself in Flutter development, gaining extensive hands-on experience in cross-platform app creation, state management, and UI design. Collaborating closely on real projects',
      CarrierScreenLogic.openPageNotFound
    ]
  };

  // -- Education List Link
  static String tenth_website_link = 'https://gisindore.in/';
  static String twelth_website_link = 'https://sitadevischool.in/';
  static String bachler_website_link = 'https://www.medicaps.ac.in/';
  static String page_not_found = 'http://google.com/this-page-does-not-exist';

  // -- Experience List Link
  static String oasis_link = 'https://github.com/Prashant-ranjan-singh-123/OasisInfobyte_Java_Project';
  static String sync_link = 'https://github.com/Prashant-ranjan-singh-123/Sync-Internship';
  static String codeClause_link = 'https://github.com/Prashant-ranjan-singh-123/codeclause-internship';
  static String codSoft_link = 'https://github.com/Prashant-ranjan-singh-123/CodSoft';
}
