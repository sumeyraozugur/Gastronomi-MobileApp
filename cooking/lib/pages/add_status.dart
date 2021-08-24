import 'dart:io';
import 'package:cooking/yemek/Adana.dart';
import 'package:cooking/yemek/AyvaDolma.dart';
import 'package:cooking/yemek/Baklava.dart';
import 'package:cooking/yemek/Bamya.dart';
import 'package:cooking/yemek/BezelyeYemek.dart';
import 'package:cooking/yemek/BiberDolma.dart';
import 'package:cooking/yemek/BrokoliSalata.dart';
import 'package:cooking/yemek/DomatesCorbasi.dart';
import 'package:cooking/yemek/HamsiliPilav.dart';
import 'package:cooking/yemek/KabakTatlisi.dart';
import 'package:cooking/yemek/KarniBahar.dart';
import 'package:cooking/yemek/Kunefe.dart';
import 'package:cooking/yemek/KuruFasulye.dart';
import 'package:cooking/yemek/KuruPatlicanDolma.dart';
import 'package:cooking/yemek/LahanaSarma.dart';
import 'package:cooking/yemek/Lokma.dart';
import 'package:cooking/yemek/Lokum.dart';
import 'package:cooking/yemek/Manti.dart';
import 'package:cooking/yemek/MumbarDolmasi.dart';
import 'package:cooking/yemek/Pirasa.dart';
import 'package:cooking/yemek/PirincPilavi.dart';
import 'package:cooking/yemek/Piyaz.dart';
import 'package:cooking/yemek/Sarma.dart';
import 'package:cooking/yemek/SiyahPirinc.dart';
import 'package:cooking/yemek/SoganSalata.dart';
import 'package:cooking/yemek/Spagetti.dart';
import 'package:cooking/yemek/Sutlac.dart';
import 'package:cooking/yemek/TavukCorbasi.dart';
import 'package:cooking/yemek/YesilMercimek.dart';
import 'package:cooking/yemek/Zerde.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
//import 'package:image_picker/image_picker.dart';

//import 'recipe.dart';

class CameraApp extends StatefulWidget {
  _CameraAppstate createState() => _CameraAppstate();
}

class _CameraAppstate extends State<CameraApp> {
  List _outputs;
  File _image;
  bool _loading = false;
  String yazi;
 

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null
                      ? Container()
                      : Image.file(
                          _image,
                          width: 400,
                          height: 400,
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  _outputs != null
                      ? _outputs.length > 0
                          ? Text(
                              yazi = "${_outputs[0]["label"]}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                background: Paint()..color = Colors.white,
                              ),
                            )
                          : Container()
                      : Container(),
                ],
              ),
            ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: RaisedButton(
                  child: Text(
                    "Resim Seç",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(12),
                  textColor: Colors.red,
                  color: Colors.purple[400],

                  onPressed: pickImage,
                  //child: Icon(Icons.image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1),
              child: RaisedButton(
                  child: Text(
                    "Sorgula",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(12),
                  textColor: Colors.red,
                  color: Colors.purple[400],
                  onPressed: () {
                    onCheck();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  pickImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image;
    });
    classifyImage(image);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.5,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _loading = false;
      _outputs = output;
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/cameraa/model_unquant.tflite",
      labels: "assets/cameraa/labels.txt",
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  void onCheck() {
    if (yazi.contains("Adana")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Adana(),
        ),
      );
    } else if (yazi.contains("Ayva Dolmasi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => AyvaDolma(),
        ),
      );
    } else if (yazi.contains("Baklava")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Baklava(),
        ),
      );
    } else if (yazi.contains("Bamya")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Bamya(),
        ),
      );
    } else if (yazi.contains("Bezelye")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => BezelyeYemek(),
        ),
      );
    } else if (yazi.contains("Biber Dolma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => BiberDolma(),
        ),
      );
    } else if (yazi.contains("Brokoli Salatasi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => BrokoliSalata(),
        ),
      );
    } else if (yazi.contains("Domates Corbasi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => DomatesCorba(),
        ),
      );
    } else if (yazi.contains("Hamsili Pilav")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => HamsiliPilav(),
        ),
      );
    } else if (yazi.contains("Kabak Tatlisi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => KabakTatlisi(),
        ),
      );
    } else if (yazi.contains("Karnibahar Yemegi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => KarniBahar(),
        ),
      );
    } else if (yazi.contains("Kunefe")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Kunefe(),
        ),
      );
    } else if (yazi.contains("KuruFasulye")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => KuruFasulye(),
        ),
      );
    } else if (yazi.contains("Kuru Patlican Dolma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => KuruPatlicanDolma(),
        ),
      );
    } else if (yazi.contains("Lahana Sarma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => LahanaSarma(),
        ),
      );
    } else if (yazi.contains("Lokma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Lokma(),
        ),
      );
    } else if (yazi.contains("Lokum")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Lokum(),
        ),
      );
    } else if (yazi.contains("Manti")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Manti(),
        ),
      );
    } else if (yazi.contains("Mumbar Dolma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => MumbarDolmasi(),
        ),
      );
    } else if (yazi.contains("Pirasa")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Pirasa(),
        ),
      );
    } else if (yazi.contains("Pirinc Pilavi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => PirincPilavi(),
        ),
      );
    } else if (yazi.contains("Piyaz")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Piyaz(),
        ),
      );
    } else if (yazi.contains("Sarma")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Sarma(),
        ),
      );
    } else if (yazi.contains("SiyahPirinc Pilavi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => SiyahPirinc(),
        ),
      );
    } else if (yazi.contains("Sogan Salata")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => SoganSalata(),
        ),
      );
    } else if (yazi.contains("Spagetti")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Spagetti(),
        ),
      );
    } else if (yazi.contains("Sutlac")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Sutlac(),
        ),
      );
    } else if (yazi.contains("Tavuk Corbasi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => TavukCorba(),
        ),
      );
    } else if (yazi.contains("Yesil Mercimek Yemegi")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => YesilMercimek(),
        ),
      );
    } else if (yazi.contains("Zerde")) {
      Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (BuildContext context) => Zerde(),
        ),
      );
    }
   
    
  }
}
