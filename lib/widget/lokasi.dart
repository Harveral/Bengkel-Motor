import 'package:flutter/material.dart';

import '../theme.dart';

class Lokasi extends StatelessWidget {
  const Lokasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: edge, right: edge),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/gmaps.gif',
                ),
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'Maps',
                style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }
}