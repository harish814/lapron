import 'package:flutter/material.dart';
import '../componants.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Text(
            'ABOUT US',
            style: subHeading,
          ),
          SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(
              text: 'Our clients are our first ',
              style: text,
              children: <TextSpan>[
                TextSpan(
                  text: 'priority',
                  style: richText,
                ),
              ]
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 120,
            child: Divider(
              thickness: 1.5,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 900,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Lapron Technologies helps organizations to tap into new scalable opportunities and deploy tailor engineered business models',
                style: infoText,
                children: <TextSpan>[
                  TextSpan(
                    text: '.',
                    style: richInfoText,
                  ),
                  TextSpan(
                    text: ' From innovating an idea to researching and eventually catering a developed product to its client is our forte',
                    style: infoText,
                  ),
                  TextSpan(
                    text: '.',
                    style: richInfoText,
                  ),
                  TextSpan(
                    text: ' With domain expertise and our core offering, we have transformed several plants',
                    style: infoText,
                  ),
                  TextSpan(
                    text: ',',
                    style: richInfoText,
                  ),
                  TextSpan(
                    text: ' products and services by introspecting and thereafter engineering a process that regulates the complete development cycle',
                    style: infoText,
                  ),
                  TextSpan(
                    text: '.',
                    style: richInfoText,
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
