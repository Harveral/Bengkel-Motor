import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';


class MapsPage extends StatefulWidget {
  MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          _googlemap(context),
          _zoomminusfunction(),
          _zoomplusfunction(),
          _buildContainer(),
        ],
      ),
    ));
  }

  Widget _zoomminusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(FontAwesomeIcons.magnifyingGlassMinus,
            color: Color(0xff6200ee)),
        onPressed: () {
          zoomVal--;
          _minus(zoomVal);
        },
      ),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.magnifyingGlassPlus,
              color: Color(0xff6200ee)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }

  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-6.277123813748276, 106.98591762353131),
        zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(-6.277123813748276, 106.98591762353131),
        zoom: zoomVal)));
  }

  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                'assets/images/AJM1.jpeg',
                -6.2735589787673485,
                107.00123553190672,
                "AJM. ARIF JAYA MOTOR",
                4.9,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                'assets/images/Ahass1.jpeg',
                -6.2707601270911555, 
                107.0020603518601,
                "Honda Ahass 7509",
                4.3,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/CJM1.jpeg',
                  -6.294553813210929, 
                  106.99808296896298,
                  "Citra DJaya Motor",
                  4.7),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Andro1.jpeg',
                  -6.280241586643505, 
                  107.0063122843037,
                  "Andro Motor",
                  4.9),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/KAWASAKI1.jpeg',
                  -6.293560741122823, 
                  106.96159252470804,
                  "Kawasaki Motoart",
                  4.7),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                'assets/images/BM1.jpeg',
                -6.275079969804351, 
                107.0081987377679,
                "Yamaha Brilyan Motor",
                3.7,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                'assets/images/Siliwangi1.jpeg',
                -6.279625741628532, 
                107.00675604941605,
                "Siliwangi Motor",
                4.4,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Azzahra1.jpeg',
                  -6.287945992863801, 
                  107.00080267265561,
                  "AZZAHRA MOTOR",
                  4.9
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Mandala1.jpeg',
                  -6.294070969390806, 
                  106.99379376912009,
                  "Mandala Jaya Motor",
                  4.5
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Medica1.jpg',
                  -6.28015201435114, 
                  106.99646305577257,
                  "MEDICA PLUS MOTOR",
                  4.8
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Erlan1.jpg',
                  -6.2762608442824375, 
                  107.00729279324165,
                  "Bengkel Motor Erlan View",
                  4.6
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/ABS1.jpeg',
                  -6.309239010290121, 
                  106.98946104228001,
                  "ABS BANTAR GEBANG",
                  4.6
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/anda1.jpeg',
                  -6.264731766617705, 
                  106.98596568645914,
                  "Bengkel Motor Anda",
                  4.6
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: _boxes(
                  'assets/images/Mitra1.jpeg',
                  -6.311141283274624, 
                  106.98883425577256,
                  "Mitra Jaya Motor",
                  4.4
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxes(
      String _image, double lat, double long, String tokoName, double rating) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat, long);
      },
      child: Container(
        child: FittedBox(
          child: Material(
            color: Colors.white,
            elevation: 14,
            borderRadius: BorderRadius.circular(24),
            shadowColor: Color(0x802196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 180,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(24),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(_image),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: myDetailsContainer(tokoName, rating),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDetailsContainer(String tokoName, double rating) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Container(
            child: Text(tokoName,
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                )),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  rating.toString(),
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              Container(
                child: Icon(
                  FontAwesomeIcons.solidStarHalf,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _googlemap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: LatLng(-6.277123813748276, 106.98591762353131), zoom: 12),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          ajmarifjayamotorMarker,
          hondaahass7509Marker,
          citradjayamotorMarker,
          andromotorMarker,
          kawasakimotoartMarker,
          yamahabrilyanmotorMarker,
          siliwangimotorMarker,
          azzahramotorMarker,
          mandalajayamotorMarker,
          medicaplusmotorMarker,
          bengkelmotorerlanviewMarker,
          absbantargebangMarker,
          bengkelmotorandaMarker,
          mitrajayamotorMarker,
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat, double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(lat, long),
      zoom: 15,
      tilt: 50.0,
      bearing: 45.0,
    )));
  }
}

Marker hondaahass7509Marker = Marker(
  markerId: MarkerId('HondaAhass7509'),
  position: LatLng(-6.2707601270911555, 107.0020603518601),
  infoWindow: InfoWindow(title: 'Honda Ahass 7509'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker ajmarifjayamotorMarker = Marker(
  markerId: MarkerId('AJM.ARIFJAYAMOTOR'),
  position: LatLng(-6.2735589787673485, 107.00123553190672),
  infoWindow: InfoWindow(title: 'AJM. ARIF JAYA MOTOR'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker andromotorMarker = Marker(
  markerId: MarkerId('AndroMotor'),
  position: LatLng(
    -6.280241586643505, 
    107.0063122843037,
  ),
  infoWindow: InfoWindow(title: 'Andro Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker kawasakimotoartMarker = Marker(
  markerId: MarkerId('KawasakiMotoart'),
  position: LatLng(
    -6.293560741122823, 
    106.96159252470804,
  ),
  infoWindow: InfoWindow(title: 'Kawasaki Motoart'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker yamahabrilyanmotorMarker = Marker(
  markerId: MarkerId('YamahaBrilyanMotor'),
  position: LatLng(
    -6.275079969804351, 
    107.0081987377679,
  ),
  infoWindow: InfoWindow(title: 'Yamaha Brilyan Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker azzahramotorMarker = Marker(
  markerId: MarkerId('AZZAHRAMOTOR'),
  position: LatLng(
    -6.287945992863801, 
    107.00080267265561,
  ),
  infoWindow: InfoWindow(title: 'AZZAHRA MOTOR'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker citradjayamotorMarker = Marker(
  markerId: MarkerId('CitraDJayaMotor'),
  position: LatLng(
    -6.294553813210929, 
    106.99808296896298,
  ),
  infoWindow: InfoWindow(title: 'Citra DJaya Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker siliwangimotorMarker = Marker(
  markerId: MarkerId('SiliwangiMotor'),
  position: LatLng(
    -6.279625741628532, 
    107.00675604941605,
  ),
  infoWindow: InfoWindow(title: 'Siliwangi Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker mandalajayamotorMarker = Marker(
  markerId: MarkerId('MandalaJayaMotor'),
  position: LatLng(
    -6.294070969390806, 
    106.99379376912009,
  ),
  infoWindow: InfoWindow(title: 'Mandala Jaya Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker medicaplusmotorMarker = Marker(
  markerId: MarkerId('MEDICAPLUSMOTOR'),
  position: LatLng(
    -6.28015201435114, 
    106.99646305577257,
  ),
  infoWindow: InfoWindow(title: 'MEDICA PLUS MOTOR'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker bengkelmotorerlanviewMarker = Marker(
  markerId: MarkerId('BengkelMotorErlanView'),
  position: LatLng(
    -6.2762608442824375, 
    107.00729279324165,
  ),
  infoWindow: InfoWindow(title: 'Bengkel Motor Erlan View'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker absbantargebangMarker = Marker(
  markerId: MarkerId('ABSBANTARGEBANG'),
  position: LatLng(
    -6.309239010290121, 
    106.98946104228001,
  ),
  infoWindow: InfoWindow(title: 'ABS BANTAR GEBANG'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker bengkelmotorandaMarker = Marker(
  markerId: MarkerId('BengkelMotorAnda'),
  position: LatLng(
    -6.264731766617705, 
    106.98596568645914,
  ),
  infoWindow: InfoWindow(title: 'Bengkel Motor Anda'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker mitrajayamotorMarker = Marker(
  markerId: MarkerId('MitraJayaMotor'),
  position: LatLng(
    -6.311141283274624, 
    106.98883425577256,
  ),
  infoWindow: InfoWindow(title: 'Mitra Jaya Motor'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);