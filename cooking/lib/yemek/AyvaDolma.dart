import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AyvaDolma extends StatelessWidget {

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
                  buildTextTitleVariation1("Ayva Dolması"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
             Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/ayvaDolma.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/ayvaDolma.jpg"),
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
                 
                
                  buildTextSubTitleVariation1("1 adet orta boy kuru soğan"),
                  buildTextSubTitleVariation1("200 gramaz yağlı kıyma"),
                  buildTextSubTitleVariation1("3 yemek kaşığı zeytinyağı"),
                  buildTextSubTitleVariation1("1 çay bardağıpirinç"),
                  buildTextSubTitleVariation1("1 adetorta boy limon"),
                  buildTextSubTitleVariation1("1/4 demet doğranmış maydanoz"),
                  buildTextSubTitleVariation1("2 su bardağı sıcak su"),
                  buildTextSubTitleVariation1("2 yemek kaşığı üzüm pekmezi"),
                  buildTextSubTitleVariation1("1 çay kaşığı tuz"),
                  buildTextSubTitleVariation1("1/2 çay kaşığı karabiber"), 

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlnışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
Sap kısımlarını aldığınız ve üst kısımlarını kapak şeklinde kestiğiniz ayvaların iç kısımlarını bir oyacak yardımıyla boşaltın. Taban kısımlarını delmemeye özen gösterin. Kararmaması için taze sıkılmış limon suyu ilave ettiğiniz suda bekletin.
Kıymalı iç harcı için; kuru soğanı küçük küpler halinde kesin. Bol suda yıkadığınız pirinçlerin suyunu süzdürün. Pirinç, doğranmış kuru soğan, maydanoz, zeytinyağı, tuz, karabiber ve kimyon ilavesiyle karıştırın.
Limonlu suda bekleyen ayvaları fazla suyunu süzdürüp fırın tepsisine yerleştirin. İç kısımlarını hazırladığınız kıymalı iç harçla doldurun.
Sıcak suyu üzüm pekmeziyle karıştırıp kenar kısmından fırın tepsisine alın. Ayva dolmalarını önceden ısıtılmış 180-200 derece fırında 30 dakika kadar pişirin. 
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
