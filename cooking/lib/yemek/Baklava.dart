import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Baklava extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1("Baklava"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
             Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/baklava.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/baklava.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation2('Malzemeler', false),
                 
                  buildTextSubTitleVariation1("3 yumurta"),
                  buildTextSubTitleVariation1("1 su bardağı süt"),
                  buildTextSubTitleVariation1("1 su bardağı sıvı yağ"),
                  buildTextSubTitleVariation1("1 adet kabartma tozu"),
                  buildTextSubTitleVariation1("1 yemek kaşığı sirke"),
                  buildTextSubTitleVariation1("Yarım çay kaşığı tuz"),
                  buildTextSubTitleVariation1("6 su bardağı un"),
                  buildTextSubTitleVariation1("Kırılmış ceviz ya da fındık"),
                  buildTextSubTitleVariation1("AÇMAK İÇİN;"),
                  buildTextSubTitleVariation1("Mısır nişastası"),
                  buildTextSubTitleVariation1("ŞERBETİ İÇİN;"),
                  buildTextSubTitleVariation1("4 bardak şeker"),
                  buildTextSubTitleVariation1("5 bardak su"),
                  buildTextSubTitleVariation1("Bir kaç damla limon suyu"),
                  buildTextSubTitleVariation1("ÜZERİ İÇİN;"),
                  buildTextSubTitleVariation1("300 g tereyağı ya da margarin"),

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
Ev baklavası hazırlamak için öncelikle yumurtayı, sütü, sıvı yağı, sirkeyi, kabartma tozunu ve tuzu yoğurma kabına boşaltın ve alabildiğince un ekleyerek ortalama yumuşalıkta bir hamur elde edinceye kadar yoğurunuz.
Hazırladığınız hamuru 30 eşit parçaya bölünüz.
Bu parçaları tek tek tabak büyüklüğünde açarak aralarına nişasta serpip 10 ar 10 ar üst üste koyun.
10’arlı olarak grupladığımız bu üç parçadan parçalardan her birini merdane yardımı ile tepsi büyüklüğüne getirin.
Merdane ile açtığınız hamurların aralarına ceviz ya da fındık serperek üst üste yerleştirin.
Dilediğiniz şekilde kesin ve üzerine her yerine eşit şekilde gelmesine dikkat ederek eritilmiş yağın yarısını dökün.
Önceden ısıtılmış 180°C fırına sürün hafif rengi değiştiğinde fırından alarak kalan yağı gezdirin ve tekrar fırına sürün altı üstü kızarana kadar pişirin…
Ev baklavasının kesimi için tarifin devamına yardımcı olabilecek fotoğraflar ekledim.
Ev Baklavası Şerbetinin Yapılışı;
4 bardak şeker ve 5 bardak suyu tencereye koyup 15 dk kaynattıktan sonra şerbetin içerisine bir kaç damla limon damlatarak 1-2 dk daha kaynatın.
Bu tarifte kullanılan tepsi 42 cm çapındadır. Bu ölçüye yakın bir tepsi tercih edebilirsiniz.
Soğuk baklavanın üzerine sıcak şerbeti dökün.

Afiyet olsun.

                      """),

                  //buildTextSubTitleVariation1("STEP 2"),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildTextTitleVariation2(String text, bool opacity) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: opacity ? Colors.grey[400] : Colors.black,
      ),
    ),
  );
}

buildTextSubTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.grey[400],
      ),
    ),
  );
}

buildTextTitleVariation1(String text) {
  return Padding(
    padding: EdgeInsets.only(bottom: 8),
    child: Text(
      text,
      style: GoogleFonts.breeSerif(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        color: Colors.black,
      ),
    ),
  );
}
