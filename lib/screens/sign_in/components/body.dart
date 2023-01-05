import 'package:flutter/material.dart';
import 'package:online_shop/components/no_account_text.dart';
import 'package:online_shop/components/social_card.dart';
//import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../size_config.dart';
import 'sign_form.dart';



class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with your email and password  \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      //press: _launchURLApp(),
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      //press: _launchURLApp2(),
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      //press: _launchURLApp3(),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

 _launchURLApp3() async {
  var url = Uri.parse('https://twitter.com/i/flow/login');
  if(await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp2() async {
  var url = Uri.parse('https://www.facebook.com/login/');
  if(await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLApp() async {
  var url = Uri.parse('https://accounts.google.com/v3/signin/identifier?dsh=S587805520%3A1672930405983650&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AeAAQh4KXzXBcQrPcFhjANDweTzKgLxSEJ0nsYuri3UDgvcfpM4Zdi9NrBB_BkxPRDPjTgs-EIt6Bw');
  if(await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
