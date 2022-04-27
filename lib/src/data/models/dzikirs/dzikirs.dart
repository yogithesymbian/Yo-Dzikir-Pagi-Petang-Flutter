class Dzikirs {
  final String? title;
  final String? iqra;
  final Meaning? meaning; // means
  final Avail? avail; // positive
  final String? surah;
  final String? ayat;
  final int? mandatoryRead;
  final bool? isMorning;

  const Dzikirs({
    this.title,
    this.iqra,
    this.meaning,
    this.avail,
    this.surah,
    this.ayat,
    this.mandatoryRead,
    this.isMorning,
  });
}

class Meaning {
  final String? idMeaning;
  final String? enMeaning;
  const Meaning({
    this.idMeaning,
    this.enMeaning,
  });
}

class Avail {
  final String? idAvail;
  final String? enAvail;
  const Avail({
    this.idAvail,
    this.enAvail,
  });
}

final dzikirs_master = [
  const Dzikirs(
    title:
        'Antara Shubuh hingga siang hari ketika matahari akan bergeser ke barat',
    iqra: 'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
    meaning: Meaning(
      idMeaning:
          'Aku berlindung kepada Allah dari godaan syaitan yang terkutuk.',
      enMeaning: '',
    ),
    avail: Avail(
      idAvail: null,
      enAvail: null,
    ),
    surah: null,
    ayat: null,
    mandatoryRead: null,
    isMorning: true,
  ),
  const Dzikirs(
    title: 'Membaca ayat Kursi',
    iqra:
        'اللَّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ، لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ، لَهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الْأَرْضِ، مَنْ ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ، يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ، وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلاَّ بِمَا شَاءَ، وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالْأَرْضَ، وَلَا يَئُودُهُ حِفْظُهُمَا، وَهُوَ الْعَلِيُّ الْعَظِيمُ',
    meaning: Meaning(
      idMeaning:
          'Allah, tidak ada ilah (yang berhak disembah) melainkan Dia, yang hidup kekal lagi terus menerus mengurus (makhluk-Nya). Dia tidak mengantuk dan tidak tidur. Kepunyaan-Nya apa yang di langit dan di bumi. Tiada yang dapat memberi syafa’at di sisi-Nya tanpa seizin-Nya. Dia mengetahui apa-apa yang di hadapan mereka dan di belakang mereka. Mereka tidak mengetahui apa-apa dari ilmu Allah melainkan apa yang dikehendaki-Nya. Kursi Allah meliputi langit dan bumi. Dia tidak merasa berat memelihara keduanya. Dan Dia Maha Tinggi lagi Maha besar.',
      enMeaning: '',
    ),
    avail: Avail(
      idAvail:
          'Siapa yang membacanya ketika petang, maka ia akan dilindungi (oleh Allah dari berbagai gangguan) hingga pagi. Siapa yang membacanya ketika pagi, maka ia akan dilindungi hingga petang.',
      enAvail: null,
    ),
    surah: 'QS. Al Baqarah',
    ayat: '255',
    mandatoryRead: 1,
    isMorning: true,
  ),
  const Dzikirs(
    title: 'Membaca surat Al Ikhlas, Al Falaq, An Naas',
    iqra:
        'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n قُلْ هُوَ اللَّهُ أَحَدٌ اللَّهُ الصَّمَدُ لَمْ يَلِدْ وَلَمْ يُولَدْ وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ',
    meaning: Meaning(
      idMeaning:
          'Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.',
      enMeaning: '',
    ),
    avail: Avail(
      idAvail: null,
      enAvail: null,
    ),
    surah: 'QS. Al Ikhlas',
    ayat: '1-4',
    mandatoryRead: 1,
    isMorning: true,
  ),
  const Dzikirs(
    title: 'Petang (TODO) Membaca surat Al Ikhlas, Al Falaq, An Naas',
    iqra:
        'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n قُلْ هُوَ اللَّهُ أَحَدٌ اللَّهُ الصَّمَدُ لَمْ يَلِدْ وَلَمْ يُولَدْ وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ',
    meaning: Meaning(
      idMeaning:
          'Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.',
      enMeaning: '',
    ),
    avail: Avail(
      idAvail: null,
      enAvail: null,
    ),
    surah: 'QS. Al Ikhlas',
    ayat: '1-4',
    mandatoryRead: 1,
    isMorning: false,
  ),
  const Dzikirs(
    title: 'Petang (TODO 1) Membaca surat Al Ikhlas, Al Falaq, An Naas',
    iqra:
        'بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ\n قُلْ هُوَ اللَّهُ أَحَدٌ اللَّهُ الصَّمَدُ لَمْ يَلِدْ وَلَمْ يُولَدْ وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ',
    meaning: Meaning(
      idMeaning:
          'Dengan menyebut nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah: Dialah Allah, Yang Maha Esa. Allah adalah ilah yang bergantung kepada-Nya segala urusan. Dia tidak beranak dan tiada pula diperanakkan, dan tidak ada seorang pun yang setara dengan Dia.',
      enMeaning: '',
    ),
    avail: Avail(
      idAvail: null,
      enAvail: null,
    ),
    surah: 'QS. Al Ikhlas',
    ayat: '1-4',
    mandatoryRead: 1,
    isMorning: false,
  ),
];
