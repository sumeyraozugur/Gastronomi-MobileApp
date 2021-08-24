import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Kunefe extends StatelessWidget {

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
                  buildTextTitleVariation1("Künefe"),
                  //buildTextSubTitleVariation1(""),
                ],
              ),
            ),
             Positioned(
                    right:-90,
                    child: Hero(
                      tag: "assets/images/kunefe.jpg",
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/kunefe.jpg"),
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

                  buildTextSubTitleVariation1("250 gr tel kadayıf"),
                  buildTextSubTitleVariation1("150 gr tuzsuz künefe peyniri"),
                  buildTextSubTitleVariation1("4 yemek kaşığı tereyağı"),
                  buildTextSubTitleVariation1("1 çay kaşığı pekmez"),
                  buildTextSubTitleVariation1("ŞERBETİ İÇİN;"),
                  buildTextSubTitleVariation1("2 su bardağı su"),
                  buildTextSubTitleVariation1("2 su bardağı toz şeker"),
                  buildTextSubTitleVariation1("1 çay kaşığı limon suyu"),
                  buildTextSubTitleVariation1("ÜZERİ İÇİN;"),
                  buildTextSubTitleVariation1("Toz antep fıstığı"),
                  buildTextSubTitleVariation1("Süt kaymağı veya dondurma (isteğe bağlı)"),
                 
              

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
İlk olarak künefenin şerbeti hazırlanır. Şerbet için, su ve şeker bir tencereye alınarak kaynamaya bırakılır. (Şerbetin dibine tutmaması için ara ara karıştırılır.)
Şerbet kaynamaya başlayınca şekerin kesilmemesi için 1 çay kaşığı limon suyu eklenip 10-15 dakika kadar daha kaynatılır ve şerbet soğumaya bırakılır.
Künefe için, tereyağı kısık ateşte erimeye bırakılır.
Eriyen tereyağı bir kenara alınarak bekletilir.
Tereyağı donduktan sonra altında tereyağının suyu olacaktır bu suyu kullanmayın.
Hafif donmuş olan tereyağına 1 çay kaşığı pekmezi eklenerek muhallebi kıvamına gelecek şekilde karıştırılır.
Varsa künefe tepsisi yoksa alüminyum veya teflon tavanın altı bu pekmezli yağ karışımı ile yağlanır.
Kadayıf tel tel tiftiklenerek ayrılır.
Ardından bıçakla 1 cm kalınlığında kesilerek iki parçaya ayrılır.
Ayırdığımız kadayıfın bir parçası yağlanmış tepsinin dibine aralarda boşluk kalmayacak şekilde serilir.
Rendelenmiş peynirler kadayıfın üzerine yayılır.
Diğer kadayıf da peynirin üzerinde boşluk kalmayacak şekilde kapatılır.
Kenarları düzeltilir ve başka bir tepsi altıyla veya eliniz ile üzerine bastırılır.
İyice bastırarak arasında boşluk kalmamasını dikkat edin.
En kısık ateşte ocağın üzerinde tepsi çevrilerek pişirilir.
Altının tamamen kızardığından emin olduğunuzda tepsiyi bir tabağın veya tepsinin üzerine ters çevrilir ve diğer tarafının pişmesi için ikinci tepsinin içi de yağlanır.
Kızaran kısım üstte kalacak şekilde künefe tepsiye yerleştirilir ve altı kızartılır. Böylece iki tarafı da kızarmış olur.
Şerbeti kenarından başlanarak dökülür. Antep fıstığı veya süt kaymağı ile servis edilir. 
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
