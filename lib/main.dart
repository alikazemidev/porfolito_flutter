import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Vazir',
      ),
      home: Scaffold(
        appBar: _getAppBar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

// *appbar
  PreferredSizeWidget _getAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('علی کاظمی'),
      backgroundColor: Colors.black,
      elevation: 0,
    );
  }

// *main body
  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
        ],
      ),
    );
  }

// * header
  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/user.png'),
          radius: 70,
        ),
        SizedBox(height: 10),
        Text(
          'علی کاظمی',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'توسعه دهنده موبایل با فلاتر',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'عاشق برنامه نویسی و خلق کردن',
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 15,
        ),
        _getRowIcons(),
        SizedBox(
          height: 15,
        ),
        _getSkillCards(),
      ],
    );
  }

// *row Icons
  Widget _getRowIcons() {
    return Wrap(
      // runAlignment: ,  //* سطر اخر را الابن میکنه
      // alignment: WrapAlignment.center,
      // spacing: , //*فاصله عمودی بین عناصر
      // runSpacing: , //*فاصله هر سطر
      children: [
        IconButton(
          onPressed: () {
            launch('https://github.com/alikazemidev');
          },
          icon: FaIcon(FontAwesomeIcons.githubSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {
            launch('https://www.linkedin.com/in/ali-kazemi-0188b8214/');
          },
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {
            launch('https://www.instagram.com/alikz.art.dev');
          },
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.blueGrey,
        ),
        IconButton(
          onPressed: () {
            launch('https://t.me/alikzb');
          },
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blueGrey,
        ),
      ],
    );
  }

// * skill card
  Widget _getSkillCards() {
    var myskills = [
      'dart',
      'flutter',
      'android',
      'html',
      'css',
      'javascript',
    ];
    return Wrap(
      spacing: 20,
      runSpacing: 12,
      children: [
        for (var skill in myskills)
          Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Image.asset(
                  'images/$skill.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$skill'),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
