import 'package:cyber_education/models/cyber.dart';
import 'package:flutter/material.dart';

class CyberCourses with ChangeNotifier {
  List<Cyber> _cyber = [
    Cyber(
      id: 'm1',
      name: "Pentesting",
      imageUrl: 'assets/images/cyber.jpg',
      description:
          "Pentest amalga oshirilayotgan jarayonda mutaxassislar tizimni buzish yoki tajovuzkorlarga maxfiy ma'lumotlarga kirish imkonini beradigan muammolarni qidiradi va tahlil qiladi. Ular shuningdek, haqiqiy tajovuzkor pozitsiyasidan turib, tizimni turli yo'llar bilan buzishga harakat qilib ko'rishadi. ",
      coursePrice: 120.0,
    ),
    Cyber(
      id: 'm2',
      name: "KiberXavfsizlik",
      imageUrl: 'assets/images/security.png',
      description:
          "Kiber xavfsizlik mutaxassislari bizning kompyuter tizimlarimiz xakerlardan xavfsizligini ta'minlash uchun ishlaydi. Bundan tashqari, ular juda ko'p martaba yo'llari tanlash uchun, chunki ko'pchilik tashkilotlar o'z tizimlarini ishonchli va xavfsiz saqlash mahoratiga bog'liq. ",
      coursePrice: 100.0,
    ),
    Cyber(
      id: 'm3',
      name: "Kali Linux",
      imageUrl: 'assets/images/linux.png',
      description: "Ajoyib Kali Linux kurslari",
      coursePrice: 70.0,
    )
  ];

  List<Cyber> get list {
    return [..._cyber];
  }

  Cyber findById(String cyberId) {
    return _cyber.firstWhere(
      (cyber) => cyber.id == cyberId,
    );
  }
}
