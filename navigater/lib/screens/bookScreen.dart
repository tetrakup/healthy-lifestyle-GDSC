import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Gap(8),
          //
          BookWidget(
            kitapAdi: "The 7 Keys to Health",
            yazar: "Mehmet Oz",
            avatarImagePath: "assets/images/kitap1.jpg",
            fiyat: "25.99 USD",
            puan: "4.3",
            metin:
                "The 7 Keys to Health, Mehmet Oz tarafından kaleme alınan bir eserdir. Dr. Oz, sağlık ve yaşam tarzı konularını ele aldığı bu kitabında, sağlıklı yaşam için önemli anahtarların neler olduğunu açıklıyor ve okuyuculara sağlıklı bir yaşam için pratik ipuçları sunuyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "Healthy Aging",
            yazar: "Andrew Weil",
            avatarImagePath: "assets/images/kitap2.jpg",
            fiyat: "18.50 USD",
            puan: "4.6",
            metin:
                "Healthy Aging, Andrew Weil tarafından kaleme alınan bir eserdir. Dr. Weil, yaşlanma sürecini sağlıklı bir şekilde yönetmenin yollarını ele aldığı bu kitabında, yaşlanmanın fiziksel ve zihinsel etkilerini anlatıyor ve yaşlanmayı pozitif bir deneyim olarak görmeyi teşvik ediyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "The Spectrum",
            yazar: "Dean Ornish",
            avatarImagePath: "assets/images/kitap3.jpg",
            fiyat: "20.25 USD",
            puan: "4.7",
            metin:
                "The Spectrum, Dean Ornish tarafından kaleme alınan bir eserdir. Dr. Ornish, sağlıklı bir yaşam için beslenme, egzersiz ve stres yönetimi gibi faktörlerin önemini vurguladığı bu kitabında, okuyuculara sağlıklı yaşam için uygulanabilir stratejiler sunuyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "In Defense of Food",
            yazar: "Michael Pollan",
            avatarImagePath: "assets/images/kitap4.jpg",
            fiyat: "16.99 USD",
            puan: "4.5",
            metin:
                "In Defense of Food, Michael Pollan tarafından kaleme alınan bir eserdir. Pollan, modern beslenme alışkanlıklarını sorguladığı bu kitabında, sağlıklı ve dengeli beslenme konusunda önemli bilgiler ve öneriler sunuyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "The Blue Zones",
            yazar: "Dan Buettner",
            avatarImagePath: "assets/images/kitap5.jpg",
            fiyat: "22.75 USD",
            puan: "4.8",
            metin:
                "The Blue Zones, Dan Buettner tarafından kaleme alınan bir eserdir. Buettner, dünyanın en uzun süre yaşayan insanlarının yaşam tarzlarını ve alışkanlıklarını incelediği bu kitabında, uzun ve sağlıklı bir yaşam sürmenin sırlarını ortaya koyuyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "How Not to Die",
            yazar: "Michael Greger",
            avatarImagePath: "assets/images/kitap6.jpg",
            fiyat: "21.50 USD",
            puan: "4.9",
            metin:
                "How Not to Die, Michael Greger tarafından kaleme alınan bir eserdir. Dr. Greger, beslenme ve sağlık konularında bilimsel kanıtlara dayalı olarak hazırladığı bu kitabında, ölümcül hastalıklardan nasıl kaçınabileceğimizi ve sağlıklı bir yaşam için ne yapmamız gerektiğini anlatıyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "The Plant Paradox",
            yazar: "Steven R. Gundry",
            avatarImagePath: "assets/images/kitap7.jpg",
            fiyat: "24.99 USD",
            puan: "4.6",
            metin:
                "The Plant Paradox, Steven R. Gundry tarafından kaleme alınan bir eserdir. Dr. Gundry, beslenme ve sağlık konularında farklı bir bakış açısı sunan bu kitabında, bazı bitkilerin insan sağlığına zararlı olabileceği konusunda bilgiler veriyor ve sağlıklı beslenme önerileri sunuyor.",
          ),
          Gap(8),
          BookWidget(
            kitapAdi: "The China Study",
            yazar: "T. Colin Campbell",
            avatarImagePath: "assets/images/kitap8.jpg",
            fiyat: "19.75 USD",
            puan: "4.7",
            metin:
                "The China Study, T. Colin Campbell tarafından kaleme alınan bir eserdir. Dr. Campbell, beslenme ve sağlık konularında önemli bir araştırma olan bu kitabında, Çin'deki beslenme alışkanlıklarının insan sağlığı üzerindeki etkilerini inceley",
          ),
          Gap(8),
          BookWidget(
    kitapAdi: "The Happiness Project",
    yazar: "Gretchen Rubin",
    avatarImagePath: "assets/images/kitap9.jpg",
    fiyat: "17.99 USD",
    puan: "4.4",
    metin:
        "The Happiness Project, Gretchen Rubin tarafından kaleme alınan bir eserdir. Rubin, kişisel gelişim ve mutluluk konularını ele aldığı bu kitabında, mutluluğu artırmak için yapılacak adımları ve uygulanabilir stratejileri okuyucularla paylaşıyor.",
          ),
          Gap(8),
          BookWidget(
    kitapAdi: "The Four Hour Body",
    yazar: "Timothy Ferriss",
    avatarImagePath: "assets/images/kitap10.jpg",
    fiyat: "23.25 USD",
    puan: "4.5",
    metin:
        "The Four Hour Body, Timothy Ferriss tarafından kaleme alınan bir eserdir. Ferriss, sağlık, fitness ve vücut geliştirme konularını ele aldığı bu kitabında, zamanınızı ve çabanızı en verimli şekilde nasıl kullanabileceğinizi anlatıyor ve okuyuculara sağlıklı bir yaşam için pratik ipuçları sunuyor.",
          ),
        ],
      ),
    );
  }
}

class BookWidget extends StatelessWidget {
  final String kitapAdi;
  final String yazar;
  final String avatarImagePath;
  final String fiyat;
  final String puan;
  final String metin;

  BookWidget({
    required this.kitapAdi,
    required this.yazar,
    required this.avatarImagePath,
    required this.fiyat,
    required this.puan,
    required this.metin,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(avatarImagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kitapAdi,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Yeni eklenen özellik
                            ),
                          ),
                          Text(
                            'Yazar: $yazar',
                            style: TextStyle(
                              fontSize: 16,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey, // Yeni eklenen özellik
                            ),
                          ),
                          Gap(35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Fiyatı: $fiyat',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Yeni eklenen özellik
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Puanı: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Yeni eklenen özellik
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                puan,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black, // Yeni eklenen özellik
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookDetailsScreen(
                                    kitapAdi: kitapAdi,
                                    yazar: yazar,
                                    avatarImagePath: avatarImagePath,
                                    fiyat: fiyat,
                                    puan: puan,
                                    metin: metin,
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
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookDetailsScreen(
                              kitapAdi: kitapAdi,
                              yazar: yazar,
                              avatarImagePath: avatarImagePath,
                              fiyat: fiyat,
                              puan: puan,
                              metin: metin,
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
/*          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsScreen(
                    kitapAdi: kitapAdi,
                    yazar: yazar,
                    avatarImagePath: avatarImagePath,
                    fiyat: fiyat,
                    puan: puan,
                    metin: metin,
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
          ),*/
        ],
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final String kitapAdi;
  final String yazar;
  final String avatarImagePath;
  final String fiyat;
  final String puan;
  final String metin;

  BookDetailsScreen({
    required this.kitapAdi,
    required this.yazar,
    required this.avatarImagePath,
    required this.fiyat,
    required this.puan,
    required this.metin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(avatarImagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              kitapAdi,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Yeni eklenen özellik
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Yazar: $yazar',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.grey, // Yeni eklenen özellik
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Icon(
                  index < int.parse(puan.split('.')[0])
                      ? Icons.star
                      : Icons.star_border,
                  color: index < int.parse(puan.split('.')[0])
                      ? Colors.amber
                      : Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              metin,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BookScreen(),
  ));
}
