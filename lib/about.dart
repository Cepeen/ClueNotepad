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
  String _version;

  @override
  void initState() {
    _load();
    super.initState();
  }

  void _load() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    _version = packageInfo.version;

    setState(() => {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text((AppLocalizations.of(context).about))),
        body: SafeArea(
            child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Card(
                        color: Colors.blue[50],
                        child: Padding(
                            padding: EdgeInsets.all(70.0),
                            child: Container(
                              child: new RichText(
                                  textAlign: TextAlign.center,
                                  text: new TextSpan(
                                      text: 'Clue Notepad version: $_version\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text:
                                                '\nCluedo Notepad is free aplication created in flutter.\n App is totally free and do not contain any advertisements.\n Application do not collectany data.\n As an user of Clue Notepad you agree with our'),
                                        TextSpan(
                                          text: '\nprivacy policy',
                                          style: TextStyle(color: Colors.blue),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                             _launchURL();
                                            },
                                        )
                                      ])),
                            )),
                      )
                    ]))));
  }

  _launchURL() async {
    const url = 'https://flutter.io'; //add privacy policy url
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}
