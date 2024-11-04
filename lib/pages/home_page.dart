import 'package:bengkel_motor/pages/tentang_page.dart';
import 'package:bengkel_motor/pages/tips_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/daftarbengkel_model.dart';
import '../models/rekomendasi_model.dart';
import '../theme.dart';
import '../widget/about.dart';
import '../widget/daftar_bengkel.dart';
import '../widget/lokasi.dart';
import '../widget/rekomendasi_card.dart';
import '../widget/tips.dart';
import 'maps_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference rekomendasitoko =
        firestore.collection('rekomendasibengkel');
    CollectionReference daftarbengkel = firestore.collection('daftarbengkel');

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Text(
                  'Halo Sobat Sepermotoran',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Ayo Cari Bengkel Terdekat Dari Kamu',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Rekomendasi',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          StreamBuilder<QuerySnapshot>(
                              stream: rekomendasitoko
                                  .orderBy('id', descending: false)
                                  .snapshots(),
                              builder: (_, snapshot) {
                                if (snapshot.hasData) {
                                  return Row(
                                    children: (snapshot.data! as QuerySnapshot)
                                        .docs
                                        .map(
                                          (e) => RekomendasiCard(
                                            RekomendasiModel(
                                              id: e['id'],
                                              nama: e['nama'],
                                              imageUrl: e['imageUrl'],
                                              kota: e['kota'],
                                              rating: e['rating'],
                                              imageUrl1: e['imageUrl1'],
                                              imageUrl2: e['imageUrl2'],
                                              imageUrl3: e['imageUrl3'],
                                              informasi: e['informasi'],
                                              kontak: e['kontak'],
                                              kontakphone: e['kontakphone'],
                                              mapurl: e['mapurl'],
                                              lokasi: e['lokasi'],
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  );
                                } else {
                                  return Center(
                                      child: CircularProgressIndicator());
                                }
                              }),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Daftar Bengkel',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              StreamBuilder<QuerySnapshot>(
                  stream:
                      daftarbengkel.orderBy('id', descending: false).snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: (snapshot.data! as QuerySnapshot)
                            .docs
                            .map(
                              (e) => DaftarBengkel(
                                DaftarBengkelModel(
                                  id: e['id'],
                                  nama: e['nama'],
                                  imageUrl: e['imageUrl'],
                                  kota: e['kota'],
                                  rating: e['rating'],
                                  imageUrl1: e['imageUrl1'],
                                  imageUrl2: e['imageUrl2'],
                                  imageUrl3: e['imageUrl3'],
                                  informasi: e['informasi'],
                                  kontak: e['kontak'],
                                  kontakphone: e['kontakphone'],
                                  mapurl: e['mapurl'],
                                  lokasi: e['lokasi'],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Lokasi Bengkel Terdekat',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapsPage(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Lokasi(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Tentang',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: regular,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TipsPage(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Tips(),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TentangPage(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    About(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
