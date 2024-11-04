import 'package:flutter/material.dart';

import '../models/daftarbengkel_model.dart';
import '../theme.dart';
import 'detail.dart';

class DaftarBengkel extends StatelessWidget {

  final DaftarBengkelModel daftarbengkel;
  DaftarBengkel(this.daftarbengkel);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detail(
                daftarbengkel.id,
                daftarbengkel.imageUrl,
                daftarbengkel.nama,
                daftarbengkel.kota,
                daftarbengkel.informasi,
                daftarbengkel.imageUrl1,
                daftarbengkel.imageUrl2,
                daftarbengkel.imageUrl3,
                daftarbengkel.kontak,
                daftarbengkel.kontakphone,
                daftarbengkel.lokasi,
                daftarbengkel.mapurl,
                daftarbengkel.rating),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: edge, right: edge, bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Container(
              width: 90,
              height: 90,
              margin: EdgeInsets.only(right: 16,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    daftarbengkel.imageUrl,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    daftarbengkel.nama,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    daftarbengkel.kota,
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/icon_star.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  daftarbengkel.rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
