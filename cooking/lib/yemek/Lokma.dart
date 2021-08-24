import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lokma extends StatelessWidget {

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
                  buildTextTitleVariation1("Lokma"),
                  //buildTextSubTitleVariation1(""),
                ],
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
                 
                  
                  buildTextSubTitleVariation1("HAMURU İÇİN :"),
                  buildTextSubTitleVariation1("1, 5 su bardağı tepeleme un (bardak ölçüsü 200 ml)"),
                  buildTextSubTitleVariation1("1 su bardağı + 1 yemek kaşığı ılık su"),
                  buildTextSubTitleVariation1("2 tatlı kaşığı şeker"),
                  buildTextSubTitleVariation1("1 fiske tuz (çay kaşığının ucuyla)"),
                  buildTextSubTitleVariation1("1 tatlı kaşığı instant kuru maya veya yarım küçük yaş maya"),
                  buildTextSubTitleVariation1("KIZARTMAK İÇİN :"),
                  buildTextSubTitleVariation1("Sıvı yağ"),
                  buildTextSubTitleVariation1("Şerbeti için :"),
                   buildTextSubTitleVariation1("2, 5 su bardağı şeker"),
                  buildTextSubTitleVariation1("2 su bardağı su"),
                  buildTextSubTitleVariation1("8-10 damla limon suyu"),
                

                  SizedBox(
                    height: 16,
                  ),

                  buildTextTitleVariation2('Hazırlanışı', false),

                  //buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      """
İlk olarak şerbetimiz için şeker ve suyu bir tencereye koyup ocağa alalım.
Kaynamaya başlayınca 14 dakika kadar kısık ateşte kaynatalım, inmeye yakın limon suyunu ilave edip ocaktan alalım. (şerbetimizin mutlaka soğuk olması gerekiyor).
Hamur yoğurma kabımıza unumuzu koyalım, ortasını açıp ılık su, maya ve şekeri koyup kaşıkla karıştıralım.
Tuzu da ilave ederek yumuşak, kek hamurundan biraz katı kıvamda yapıp, üzerini kapatarak 45 dakika kadar mayalandıralım.
Derin bir tencereyi ocağa alıp, bolca sıvı yağ koyup kızdıralım.
Ocağın altını kapatıp, elimizi hamura koyup, yumruk yaparak sıkarken yağa batırılmış çay kaşığıyla üstten çıkan hamuru alıp, kızgın yağa atalım.
Tenceremizin altı bir sıra dolana kadar (her defasında kaşığı yağa batıralım ki hamur yapışmasın) tekrar ocağı açıp, lokmaları ara ara kevgir ile karıştırıp, altın sarısı olunca alarak soğuk şerbetin içine koyalım 1 dakika kadar bekletip, şerbetten çıkartalım. ( fazla bekletirsek lokmalar yumuşak olacaktır).
Bütün lokmalar bitene kadar aynı işlemi devam edelim, lokmalarımız çıtır çıtır nefis oldu servise hazır.
Artan soğuk şerbeti de lokmaların üzerine dökelim. Lokmalar gibi ağzınız tatlı olsun.Deneyeceklere şimdiden afiyet olsun.Püf noktası:
-Lokmalar kızartıp,alındıktan sonra yağ tenceresinin altını (ocağı) mutlaka kapatalım, lokmaları tekrar tencereye koyduktan sonra ocağı açalım ki koyduğumuz lokmalar yavaş yavaş yağın üzerine kabararak çıkmış bulunsun, hepsi aynı anda altın sarısı gibi kızarsın.
Şerbetimiz mutlaka çok soğuk olsun.

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
