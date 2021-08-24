import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sutlac extends StatelessWidget {

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
                  buildTextTitleVariation1("Sütlaç"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
              Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/sutlac.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/sutlac.jpg"),
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
                 
                  buildTextSubTitleVariation1("5 su bardağı süt"),
                  buildTextSubTitleVariation1("1 su bardağı toz şeker"),
                  buildTextSubTitleVariation1("1 çay bardağı pirinç"),
                  buildTextSubTitleVariation1("2 su bardağı su(pirinci haşlamak için)"),
                  buildTextSubTitleVariation1("1 adet yumurta sarısı"),
                  buildTextSubTitleVariation1("2 yemek kaşığı buğday nişastası"),
                  buildTextSubTitleVariation1("1 paketvanilin"),
                  buildTextSubTitleVariation1("1 su bardağı su(nişastayı açmak için)"),
                 

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
Soğuk süt ve toz şekeri geniş bir tencereye alın. Bir çırpma teliyle toz şeker eriyene kadar karıştırdıktan sonra ocağa alın. Kısık ateşte kaynamaya bırakın.
Bol suda yıkadığınız pirinçleri; ayrı bir tencerede, 2 su bardağı suyu ekleyerek orta ateşte suyunu çekene kadar haşlayın.
Vanilini toz şeker eriğinde süte ekleyin.
Haşlanan pirinçleri ocaktan alın ve fazla suyu kaldıysa süzün.
1-2 dakika kadar kaynayan şekerli süte haşlanmış pirinçleri ilave edin.
Yumurta sarısını, buğday nişastası ve 1 bardak su ilavesiyle ayrı bir kabın içerisine alın.
Pürüzsüz bir kıvam alana kadar karıştırın.
Yumurta sarısının kesilmemesi için; kısık ateşte kaynamakta olan süt karışımından alıp nişastalı karışımı ılıştırın.
Hazırladığınız yumurta sarılı karışımı sütlaç tenceresine azar azar katıp hızlıca karıştırın.
Kıvam alan sütlacı, ısıya dayanıklı porsiyonluk güveç kaplarına eşit ölçüde boşaltın.
Sütlaç kaselerini, derin bir fırın tepsisine aralıklı olarak dizin. Kapların yarısına gelecek kadar soğuk suyu, sütlaçlara değdirmeden tepsiye alın.
Fırına verdiğiniz sütlaçları, önceden ısıtılmış 200 derece fırında 12-15 dakika kadar pişirin.
Fırından bir mutfak eldiveni yardımıyla çıkardığınız sütlaç kaselerini, oda ısısında soğuttuktan sonra buzdolabına kaldırın. 
Soğuttuktan sonra sevdiklerinizle paylaşın.


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
