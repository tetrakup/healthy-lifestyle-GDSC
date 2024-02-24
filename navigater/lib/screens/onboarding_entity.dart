class OnBoardingEntity {
  final String? image;
  final String? title;
  final String? description;

  OnBoardingEntity({this.image, this.title, this.description});

  static List<OnBoardingEntity> onBoardingData = [
    OnBoardingEntity(
      image: "books.jpg",
      title: "Sağlıklı Yaşam Yolculuğu",
      description:
          "Sağlıklı bir yaşam tarzına adım atın ve en iyisini elde edin! Size sağlık, mutluluk ve huzur getirecek yolu keşfedin!",
    ),
    OnBoardingEntity(
      image: "books2.jpg",
      title: "Egzersizde Yeni Başlangıçlar",
      description:
          "Sağlıklı bir yaşam için hareket edin! Egzersiz yapmanın önemini keşfedin ve vücudunuzu yeniden şekillendirin!",
    ),
    OnBoardingEntity(
      image: "books3.jpg",
      title: "Beslenme Rehberi",
      description:
          "Sağlıklı beslenmeyle vücudunuzu besleyin ve enerji dolu günler için hazırlanın! Lezzetli ve besleyici tariflerle tanışın!",
    ),
  ];
}
