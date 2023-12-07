import 'package:flutter/material.dart';

class OfferText extends StatelessWidget {
  const OfferText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 200.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'To claim ',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                ' 15% discount',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFFFF1137),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
              ),
              Text(
                '!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(0, 255, 17, 57),
                  backgroundColor: Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            'Please register with your phone number',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
