import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String yazarAdi;
  final String dogumTarihi;
  final String meslek;
  final String onemliEserler;
  final String metin;
  final String avatarImagePath;

  PostWidget({
    required this.yazarAdi,
    required this.dogumTarihi,
    required this.meslek,
    required this.onemliEserler,
    required this.metin,
    required this.avatarImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(avatarImagePath),
                radius: 45,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      yazarAdi,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Doğum Tarihi: $dogumTarihi',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Meslek: $meslek',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Öne Çıkan Eserler: $onemliEserler',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: Text(yazarAdi),
                    ),
                    body: SingleChildScrollView(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(avatarImagePath),
                            radius: 45,
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Doğum Tarihi: $dogumTarihi',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Meslek: $meslek',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Öne Çıkan Eserler: $onemliEserler',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                            metin,
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            child: Text(
              'Detayları Gör',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PostListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yazarlar'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          PostWidget(
            yazarAdi: 'Mehmet Oz',
            avatarImagePath: "assets/images/p1.jpg",
            dogumTarihi: '17 Haziran 1960',
            meslek: 'Kalp Cerrahı, Yazar, Televizyon Sunucusu',
            onemliEserler: 'The 7 Keys to Health',
            metin:
                'Mehmet Oz, Amerikalı bir kalp cerrahı, yazar ve televizyon sunucusudur. "The 7 Keys to Health" adlı eseriyle tanınır ve sağlık alanında birçok kitap yazmıştır. Aynı zamanda Dr. Oz Showun sunucusudur ve sağlık konularında geniş kitlelere ulaşmıştır.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Andrew Weil',
            avatarImagePath: "assets/images/p2.jpg",
            dogumTarihi: '8 Haziran 1942',
            meslek: 'Doktor, Yazar',
            onemliEserler: 'Healthy Aging',
            metin:
                'Andrew Weil, Amerikalı bir doktor ve yazardır. "Healthy Aging" adlı eseriyle tanınır ve sağlıklı yaşlanma konusunda bir otorite olarak kabul edilir. Ayrıca doğal ve tamamlayıcı tıp alanında çalışmalarıyla da bilinir.',
          ),
          SizedBox(height: 10,),
          PostWidget(
            yazarAdi: 'Dean Ornish',
            avatarImagePath: "assets/images/p3.jpg",
            dogumTarihi: '16 Temmuz 1953',
            meslek: 'Doktor, Yazar',
            onemliEserler: 'The Spectrum',
            metin:
                'Dean Ornish, Amerikalı bir doktor ve yazardır. "The Spectrum" adlı eseriyle tanınır ve sağlık alanında önemli katkılarda bulunmuştur. Özellikle kalp sağlığı ve sağlıklı yaşam konularında çalışmalarıyla bilinir.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Michael Pollan',
            avatarImagePath: "assets/images/p4.jpg",
            dogumTarihi: '6 Şubat 1955',
            meslek: 'Yazar, Gazeteci',
            onemliEserler: 'In Defense of Food',
            metin:
                'Michael Pollan, Amerikalı bir yazar ve gazetecidir. "In Defense of Food" adlı eseriyle tanınır ve gıda endüstrisi ve beslenme konularında eleştirel yaklaşımıyla bilinir. Ayrıca doğal ve organik beslenme konularında da çalışmaları bulunmaktadır.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Dan Buettner',
            avatarImagePath: "assets/images/p5.jpg",
            dogumTarihi: '18 Ekim 1960',
            meslek: 'Yazar, Araştırmacı',
            onemliEserler: 'The Blue Zones',
            metin:
                'Dan Buettner, Amerikalı bir yazar ve araştırmacıdır. "The Blue Zones" adlı eseriyle tanınır ve uzun yaşam ve sağlıklı yaşam tarzları üzerine yaptığı araştırmalarıyla bilinir. Buettner, dünyadaki uzun ömürlü insan topluluklarını incelemesiyle tanınır.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Michael Greger',
            avatarImagePath: "assets/images/p6.jpg",
            dogumTarihi: '25 Ekim 1972',
            meslek: 'Doktor, Yazar',
            onemliEserler: 'How Not to Die',
            metin:
                'Michael Greger, Amerikalı bir doktor ve yazardır. "How Not to Die" adlı eseriyle tanınır ve beslenme ve sağlık konularında geniş bir okuyucu kitlesi tarafından takip edilmektedir. Ayrıca "NutritionFacts.org" adlı bir web sitesinin kurucusudur.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Steven R. Gundry',
            avatarImagePath: "assets/images/p7.jpg",
            dogumTarihi: '11 Temmuz 1950',
            meslek: 'Doktor, Yazar',
            onemliEserler: 'The Plant Paradox',
            metin:
                'Steven R. Gundry, Amerikalı bir doktor ve yazardır. "The Plant Paradox" adlı eseriyle tanınır ve sağlıklı beslenme ve anti-enflamatuar diyet konularında uzmanlaşmıştır. Gundry, beslenme ve sağlık üzerine birçok kitap ve makale yazmıştır.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'T. Colin Campbell',
            avatarImagePath: "assets/images/p8.jpg",
            dogumTarihi: '3 Ocak 1934',
            meslek: 'Doktor, Biyokimyacı',
            onemliEserler: 'The China Study',
            metin:
                'T. Colin Campbell, Amerikalı bir doktor ve biyokimyacıdır. "The China Study" adlı eseriyle tanınır ve beslenme, sağlık ve kanser arasındaki ilişki üzerine yaptığı araştırmalarla bilinir. Campbell, bitkisel beslenmenin sağlık üzerindeki etkileri konusunda uzmanlaşmıştır.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Gretchen Rubin',
            avatarImagePath: "assets/images/p9.jpg",
            dogumTarihi: '14 Aralık 1965',
            meslek: 'Yazar',
            onemliEserler: 'The Happiness Project',
            metin:
                'Gretchen Rubin, Amerikalı bir yazardır. "The Happiness Project" adlı eseriyle tanınır ve kişisel gelişim ve mutluluk konularında kitaplar yazmıştır. Ayrıca blog yazarı ve konuşmacı olarak da aktiftir.',
          ),
          SizedBox(height: 10),
          PostWidget(
            yazarAdi: 'Timothy Ferriss',
            avatarImagePath: "assets/images/p10.jpg",
            dogumTarihi: '20 Temmuz 1977',
            meslek: 'Yazar, Girişimci',
            onemliEserler: 'The 4-Hour Workweek, The 4-Hour Body',
            metin:
                'Timothy Ferriss, Amerikalı bir yazardır ve aynı zamanda girişimcidir. "The 4-Hour Workweek" ve "The 4-Hour Body" gibi eserleriyle tanınır. Ferriss, kişisel gelişim ve etkili iş yapma konularında uzmanlaşmıştır ve birçok kitap yazmıştır.',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PostListPage(),
  ));
}
