import 'package:flutter/material.dart';
import 'package:flutter_application_1/ekle.dart';
import 'kullanici.dart';
import 'ekle.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hello(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Kullanici> kullanicilar = [
    new Kullanici("Alper", "Sargın", "sar"),
    new Kullanici("Ali", "Veli", "sar"),
    new Kullanici("Ahmet", "Fırat", "sar")
  ];
  String baslik = "Başlık";
  void butonTiklandi(String ifade) {
    setState(() {
      baslik = ifade;
    });
  }

  // void _gosterSnackBar(String mesaj) {
  //   _scaffoldKey.currentState.showSnackBar(SnackBar(
  //     content: Text(mesaj),
  //     backgroundColor: Colors.transparent,
  //     duration: Duration(seconds: 10),
  //     action: SnackBarAction(
  //       onPressed: () {
  //         print("Snackbar kapatıldı");
  //       },
  //       label: 'Kapat',
  //     ),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: Text(
    //     'Merhaba Flutter',
    //     style: TextStyle(color: Colors.green,
    //     fontSize: 100),
    //   ),
    // );
    // return Center(
    //   child: Container(
    //     width: 200,
    //     height: 100,
    //     color: Color(0xFFAABC20),
    //   ),
    // );
    // return Container(
    //   color: Colors.indigo[200],
    //   //padding: EdgeInsets.fromLTRB(50, 100, 20, 75),
    //   child: Container(
    //     // margin: EdgeInsets.all(100),
    //     width: 200,
    //     height: 100,
    //     color: Colors.redAccent,
    //   ),
    // );
    // return SafeArea(
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.end,
    //     children: <Widget>[
    //       Container(
    //         width: 100,
    //         height: 100,
    //         color: Colors.orangeAccent,
    //       ),
    //       Container(
    //         width: 100,
    //         height: 100,
    //         color: Colors.purpleAccent,
    //       ),
    //       Container(
    //         width: 100,
    //         height: 100,
    //         color: Colors.greenAccent,
    //       ),
    //     ],
    //   ),
    // );
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   title: Text(baslik),
      //   centerTitle: true,
      //   backgroundColor: Colors.cyan,
      // ),
      // body: ListView.builder(
      //     itemCount: kullanicilar.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text('${kullanicilar[index].ad}'),
      //         trailing: Text('${kullanicilar[index].email}'),
      //         onTap: () {
      //           print('${kullanicilar[index].ad} Tıklandı');
      //         },
      //       );
      //     }),
      //body: Center(
      // child: Column(
      //   children: <Widget>[
      //     RaisedButton(
      //       onPressed: () {
      //         butonTiklandi("Raised button tiklandi");
      //         print("Buton Tıklandı");
      //         // _gosterSnackBar("Buton tıklandı");
      //       },
      //       child: Text('SnackBar Oluştur'),
      //       color: Colors.redAccent,
      //     ),
      // FlatButton(
      //   child: Text('Flat Button'),
      //   onPressed: () {
      //     butonTiklandi('Flat Button tıklandı');
      //   },
      //   onLongPress: () {
      //     butonTiklandi('Flat button uzun tıklandı');
      //   },
      //   color: Colors.blueAccent,
      // ),
      // IconButton(
      //   onPressed: () {
      //     butonTiklandi('İcon tıklandı');
      //   },
      //   icon: Icon(Icons.account_balance),
      // ),
      // RaisedButton.icon(
      //     onPressed: () {
      //       butonTiklandi("Tıklandı");
      //     },
      //     icon: Icon(Icons.access_alarm_sharp),
      //     label: Text('alarm')),
      // FlatButton.icon(
      //     onPressed: () {
      //       butonTiklandi("Tıklandı");
      //     },
      //     icon: Icon(Icons.access_alarm_sharp),
      //     label: Text('alarm'))
      //     ],
      //  ),
      //   child: Column(
      //     children: <Widget>[
      //       InkWell(
      //         onDoubleTap: () {
      //           print('double click');
      //         },
      //         onTap: () {
      //           print('Tıklandı');
      //         },
      //         child: Container(
      //           width: 150,
      //           height: 100,
      //           decoration: BoxDecoration(
      //             color: Colors.deepOrange,
      //             borderRadius: BorderRadius.circular(18.0),
      //           ),
      //           child: Center(
      //             child: Text('Tıkla'),
      //           ),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 25,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           print('Resim Tıklandı');
      //         },
      //         child: Container(
      //           width: 150,
      //           height: 100,
      //           child: Image.network(
      //               'https://ichef.bbci.co.uk/news/640/cpsprodpb/16FA9/production/_92712149_gettyimages-480164327.jpg'),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      // body: ListView(
      //   children: <Widget>[
      //     ListTile(
      //       title: Text('Ara'),
      //       leading: Icon(Icons.phone),
      //       subtitle: Text('Arama yapmak için tıkla'),
      //       onTap: () {
      //         print('Arama tıklandı');
      //       },
      //     ),
      //     ListTile(
      //       title: Text('Fotoğraf Çek'),
      //       leading: Icon(Icons.add_a_photo),
      //       subtitle: Text('Fotoğraf çekmek için tıkla'),
      //       onTap: () {
      //         print('Fotoğraf tıklandı');
      //       },
      //     ),
      //     ListTile(
      //       title: Text('Mesaj'),
      //       leading: Icon(Icons.textsms),
      //       subtitle: Text('Mesaj yazmak için tıkla'),
      //       onTap: () {
      //         print('Mesaj tıklandı');
      //       },
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => Ekle()));
        },
        tooltip: 'Git',
        child: Text('Git'),
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.teal,
    );
  }
}
