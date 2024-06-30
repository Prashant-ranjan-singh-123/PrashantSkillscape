<div align="center">
<br>
<img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/PrashantSkillscape/main/android/app/src/main/ic_launcher-playstore.png" width="200" />

</div>

<h1 align="center">PrashantSkillscape</h1>


<p align="center">
  <img alt="PrashantSkillscape" src="https://img.shields.io/badge/PrashantSkillscape-00d1a7?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img alt="API" src="https://img.shields.io/badge/Api%2024+-50f270?style=for-the-badge&logo=android&logoColor=black"/>
  <img alt="Material You" src="https://custom-icon-badges.demolab.com/badge/material%20you-lightblue?style=for-the-badge&logo=material-you&logoColor=333"/>
</p>

<p align="center">
  <a href="https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape/releases"><img src="https://img.shields.io/github/v/release/Prashant-ranjan-singh-123/PrashantSkillscape?color=purple&include_prereleases&logo=github&style=for-the-badge"/></a>
  <a href="https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape/stargazers"><img src="https://img.shields.io/github/stars/Prashant-ranjan-singh-123/PrashantSkillscape?color=ffff00&style=for-the-badge"/></a>
  <a href="https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape/network/members"><img src="https://img.shields.io/github/forks/Prashant-ranjan-singh-123/PrashantSkillscape?style=for-the-badge"/></a>
  <a href="https://hits.sh/github.com/Prashant-ranjan-singh-123/PrashantSkillscape/"><img alt="Hits" src="https://hits.sh/github.com/Prashant-ranjan-singh-123/PrashantSkillscape.svg?style=for-the-badge&label=Views&extraCount=10&color=54856b"/></a>
</p>

<p align="center">
  <a href="https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape/releases"><img src="https://img.shields.io/github/downloads/Prashant-ranjan-singh-123/PrashantSkillscape/total?color=orange&style=for-the-badge"/></a>
  <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/Prashant-ranjan-singh-123/PrashantSkillscape?style=for-the-badge&color=ggff20">
  <a href="https://github.com/Prashant-ranjan-singh-123/PrashantSkillscape/graphs/contributors"><img src="https://img.shields.io/github/contributors-anon/Prashant-ranjan-singh-123/PrashantSkillscape?style=for-the-badge&color=ccdd56"/></a>
</p>

<br>


<img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/PrashantSkillscape/main/readme_images/feature_graphic.png"/>

<p style="text-align: left; font-weight: normal;">PrashantSkillscape: Your professional journey, beautifully presented. This Flutter-built portfolio app showcases your skills, experience, and achievements with style. Featuring Material Design 3, it displays your name, designation, social media links, and a concise summary. Easily customizable, it highlights your education, work history, projects, and certifications. Whether you're a Flutter expert or novice, adapting this app is simple. Make a lasting impression with PrashantSkillscape - where your career story comes to life in a tap.</p>

<div>
<br>

## How to make your Portfolio

- Change Details in following locations.
  - lib/view/bottom_nav_bar/carrier/carrier_screen_data.dart
  <detail>
    import 'package:prashant_potfolio/view/bottom_nav_bar/home_page/home_screen_logic.dart';

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
CarrierScreenLogic.openBachler
],
2: [
'SYNC INTERN\'S (App-Dev Intern)',
'Mar 2023 - Apr 2023 \n\n'
'During this internship, I gained comprehensive hands-on experience in Android application development, significantly enhancing my understanding of mobile software engineering.',
CarrierScreenLogic.openBachler
],
3: [
'CodeClause (App-Dev Intern)',
'Apr 2023 - May 2023\n\n'
'This internship has been more than just a learning experience; it has been a stepping stone towards my career in App development. The skills, knowledge, and connections I\'ve gained have laid a strong foundation for my future ',
CarrierScreenLogic.openBachler
],
4: [
'CodeClause (App-Dev Intern)',
'Apr 2023 - May 2023\n\n'
'This internship has been more than just a learning experience; it has been a stepping stone towards my career in App development. The skills, knowledge, and connections I\'ve gained have laid a strong foundation for my future ',
CarrierScreenLogic.openBachler
],
5: [
'CodSoft (App-Dev Intern)',
'Jul 2023 - Aug 2023\n\n'
'During this internship, I gained comprehensive hands-on experience in Android app development, mastering key concepts such as UI design, API integration, and animations, while working on real-world projects that honed my problem-solving skills and prepared me for a career in mobile application development.',
CarrierScreenLogic.openBachler
],
6: [
'Appzeto (Junior Flutter Dev.)',
'Sep 2023 - Nov 2023\n\n'
'Through this Period, I immersed myself in Flutter development, gaining hands-on experience with cross-platform app creation, state management, and UI design, while collaborating on real projects that sharpened my skills and prepared me for a career in modern mobile development.',
CarrierScreenLogic.openBachler
],
7: [
'Infovirtech (Junior Flutter Dev.)',
'Jul 2023 - Aug 2023\n\n'
'I immersed myself in Flutter development, gaining extensive hands-on experience in cross-platform app creation, state management, and UI design. Collaborating closely on real projects',
CarrierScreenLogic.openBachler
]
};

// -- Education List Link
static String tenth_website_link = 'https://gisindore.in/';
static String twelth_website_link = 'https://sitadevischool.in/';
static String bachler_website_link = 'https://www.medicaps.ac.in/';
}

  </detail>
  - lib/view/bottom_nav_bar/home_page/home_screen_data.dart
  - lib/view/bottom_nav_bar/works/work_screen_data.dart

## Download 🔥
[<img src="https://raw.githubusercontent.com/flocke/andOTP/master/assets/badges/get-it-on-github.png" alt="Get it on Releases" height="80">](https://github.com/Prashant-ranjan-singh-123/Food-Mania/releases/download/apk-01/Food.Mania.apk)
<a href="https://apt.izzysoft.de/fdroid/index/apk/ru.aleshin.timeplanner" target="_blank">

## What you get by this app
- Onboarding Screen UI
- Amazing Animation Ideas
- Food Store Application Listing UI
- Profile UI
- Detailed Item UI
- Added to Cart Screen UI
- Highly Customisable

## Technologies stack 🚀
- Clean Architecture 🏛️
- Use of Flutter Animations package 🎬
- iOS and Android Compatible 📱
- Landscape Mode Supported 🌄
- Responsive UI 📱
  <br>

## Some Screens 📱
<details>
<table>
  <tr>
    <td><img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/Food-Mania/main/readme_images/image_0.png" width="499dp"></td>
    <td><img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/Food-Mania/main/readme_images/image_1.png" width="499dp"></td>
  <tr>
    <td><img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/Food-Mania/main/readme_images/image_3.png" width="499dp"></td>
    <td><img src="https://raw.githubusercontent.com/Prashant-ranjan-singh-123/Food-Mania/main/readme_images/image_6.png" width="499dp"></td>
 </table>
</details>

<br>

## Building from Source

1. If you don't have Flutter SDK installed, please visit official [Flutter](https://flutter.dev/) site.
```
https://flutter.dev/
```

2. Fetch latest source code from master branch.
```
git clone https://github.com/Prashant-ranjan-singh-123/Food-Mania.git
```

3. Download Dependency:
```
flutter pub get
```

4. Run the app with Android Studio or VS Code.
```
flutter run
```

<br>

## TODO

- [ ] Add Documentation.
- [ ] Add Supabase Backend.
- [ ] Add Google SignIn & Gmail SignIn.
- [ ] Make Profile Screen UI.
- [ ] Add Native Splash Screen.
- [ ] Getx State Management.
- [ ] Like Item should go to Favourite Page.
- [ ] Perseverant Favourite Page Item.

<br>

## Contributing

If you want to contribute to a project and make it better, your help is very welcome. Contributing is also a great way to learn more about social coding on Github, new technologies and and their ecosystems and how to make constructive, helpful bug reports, feature requests and the noblest of all contributions: a good, clean pull request.

### How to make a clean pull request

Look for a project's contribution instructions. If there are any, follow them.

- Create a personal fork of the project on Github.
- Clone the fork on your local machine. Your remote repo on Github is called `origin`.
- Add the original repository as a remote called `upstream`.
- If you created your fork a while ago be sure to pull upstream changes into your local repository.
- Create a new branch to work on! Branch from `develop` if it exists, else from `master`.
- Implement/fix your feature, comment your code.
- Follow the code style of the project, including indentation.
- If the project has tests run them!
- Write or adapt tests as needed.
- Add or change the documentation as needed.
- Squash your commits into a single commit with git's [interactive rebase](https://help.github.com/articles/interactive-rebase). Create a new branch if necessary.
- Push your branch to your fork on Github, the remote `origin`.
- From your fork open a pull request in the correct branch. Target the project's `develop` branch if there is one, else go for `master`!
- ...
- Once the pull request is approved and merged you can pull the changes from `upstream` to your local repo and delete
  your extra branch(es).

And last but not least: Always write your commit messages in the present tense. Your commit message should describe what the commit, when applied, does to the code – not what you did to the code.


<br>

### License

```
MIT License

Copyright (c) 2024 Prashant Ranjan Singh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 👨‍💻 Contributors

<a href='https://github.com/Prashant-ranjan-singh-123/Food-Mania/graphs/contributors'>
  <img src='https://contrib.rocks/image?repo=Prashant-ranjan-singh-123/Food-Mania' />
</a>

</div>

## 🙋 Support

- **Email:** [prashant.singh.12312345@gmail.com](https://mail.google.com/mail/u/?authuser=prashant.singh.12312345@gmail.com)
- **LinkedIn:** [prashant-ranjan-singh-b9b6b9217](https://www.linkedin.com/in/prashant-ranjan-singh-b9b6b9217/)
