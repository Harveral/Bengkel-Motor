import 'package:flutter/material.dart';

import '../theme.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 0, right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 234,
                  height: 307,
                  margin: EdgeInsets.only(
                    bottom: 0,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo2.png'),
                    ),
                  ),
                ),
                Text(
                  'MOTOGARAGE adalah aplikasi yang dibuat \nuntuk memberikan informasi mengenai lokasi \nbengkel motor terdekat, serta memberi \nkemudahan kepada pengguna dalam \nmencari bengkel motor di wilayah\n Kota Bekasi',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Dibuat Oleh:\n Harry Valentino R\n 52419751',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                   textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
