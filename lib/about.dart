import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  // The package version. CFBundleShortVersionString on iOS, versionName on Android.
  late String _version;

  @override
  void initState() {
    _load();
    super.initState();
  }

  void _load() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _version = packageInfo.version;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextStyle? textStyle = theme.textTheme.bodyMedium;
    final List<Widget> aboutBoxChildren = <Widget>[
      const SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
              style: textStyle,
              text: "Flutter is Google's UI toolkit for building beautiful, "
                  '\nnatively compiled applications for mobile, web, and desktop '
                  '\nfrom a single codebase. Learn more about Flutter at ',
            ),
            TextSpan(
              text: '\nhttps://flutter.dev',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _launchURL2();
                },
            ),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text((AppLocalizations.of(context)!.about))),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Card(
                  color: Colors.blue[50],
                  child: Padding(
                    padding: EdgeInsets.all(70.0),
                    child: Container(
                      child: Column(// Use a Column widget
                          children: <Widget>[
                        Image.asset('assets/logo.png', height: 120, width: 120),
                        SizedBox(height: 16),
                        new RichText(
                          textAlign: TextAlign.center,
                          text: new TextSpan(
                            text: 'Clue Notepad version: $_version\n',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '\nCluedo Notepad is aplication created in',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: ' flutter',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    showAboutDialog(
                                      context: context,
                                      applicationIcon: const FlutterLogo(),
                                      applicationName: 'Flutter',
                                      applicationVersion: 'August 2019',
                                      applicationLegalese: '\u{a9} 2014 The Flutter Authors',
                                      children: aboutBoxChildren,
                                    );
                                  },
                              ),
                              TextSpan(
                                text:
                                    ".\n App is totally free and do not contain any advertisements.\n Application do not collect any data.\n As an user of Clue Notepad you agree with our",
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextSpan(
                                text: '\nprivacy policy',
                                style: TextStyle(color: Colors.blue),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchURL();
                                  },
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url = 'https://www.tomektomasik.pl/cluenotepadpp'; //add privacy policy url
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

_launchURL2() async {
  const url = 'https://flutter.dev'; //add privacy policy url
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}
