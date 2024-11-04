import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';

class Detail extends StatefulWidget {

  int id;
  String imageUrl;
  String nama;
  String kota;
  String informasi;
  String imageUrl1;
  String imageUrl2;
  String imageUrl3;
  String lokasi;
  String kontak;
  String kontakphone;
  String mapurl;
  double rating;

  Detail(
    this.id, 
    this.imageUrl, 
    this.nama, 
    this.kota, 
    this.informasi, 
    this.imageUrl1, 
    this.imageUrl2,
    this.imageUrl3,
    this.kontak,
    this.kontakphone,
    this.lokasi,
    this.mapurl,
    this.rating,    
    {Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState(id,imageUrl,nama,kota,informasi,imageUrl1,imageUrl2,imageUrl3,kontak,kontakphone,lokasi,mapurl,rating);
}

class _DetailState extends State<Detail> {

  int _id;
  String _imageUrl;
  String _nama;
  String _kota;
  String _infomasi;
  String _imageUrl1;
  String _imageUrl2;
  String _imageUrl3;
  String _lokasi;
  String _kontak;
  String _kontakphone;
  String _mapurl;
  double _rating;

  _DetailState(
    this._id, 
    this._imageUrl, 
    this._nama, 
    this._kota, 
    this._infomasi, 
    this._imageUrl1, 
    this._imageUrl2,
    this._imageUrl3,
    this._kontak,
    this._kontakphone,
    this._lokasi,
    this._mapurl,
    this._rating,);

  @override
  Widget build(BuildContext context) {
    
    launchUrl(String url) async{
      if(await canLaunch(url)){
        launch(url);
      } else {
        throw(url);
      }
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              _imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: kWhiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _nama,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: medium,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  _kota,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: light,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  margin: EdgeInsets.only(right: 3),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/star.png',
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  _rating.toString(),
                                  style: blackTextStyle.copyWith(
                                    fontSize: 20,
                                    fontWeight: medium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Informasi',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge, right: edge),
                        child: Text(
                          _infomasi,
                          style: greyTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photo',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.network(
                                _imageUrl1,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.network(
                                _imageUrl2,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                18,
                              ),
                              child: Image.network(
                                _imageUrl3,
                                width: 110,
                                height: 88,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Lokasi',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _lokasi,
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                launchUrl(_mapurl);
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/maps.gif',
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Kontak',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              _kontak,
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: (){
                                launchUrl(_kontakphone);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/call.gif',
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
