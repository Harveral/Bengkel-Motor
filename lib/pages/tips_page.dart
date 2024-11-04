import 'package:flutter/material.dart';

import '../theme.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Hal-Hal Yang Harus Di Cek',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                '1. Cek Sistem Pengereman',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '2. Periksa Tekanan Angin Ban',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '3. Cek Volume dan Kondisi Oli Mesin',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '4. Cek Kondisi Lampu Motor',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '5. Cek Kondisi Aki Motor',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '6. Cek Kondisi Ban Motor',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '7. Cek Juga Kondisi Busi Motor',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                '\n\nItu Semua Adalah Hal-Hal Yang Harus di \n Cek atau di Perhatikan Dari Kendaraan \n    Motor Sebelum Melakukan Aktivitas',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
