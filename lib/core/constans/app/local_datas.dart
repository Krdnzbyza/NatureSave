import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:naturesave/models/account.dart';
import 'package:naturesave/models/recycler_box.dart';

class LocalDatas {
  static const String girlAvatar =
      'https://i.pinimg.com/originals/2d/f7/df/2df7df421c88f37cb0385bb1f55a989c.png';
  static const String manAvatar =
      'https://image.winudf.com/v2/image1/Y29tLmJ1bnR5YXBweC5hdnRhcm1ha2VyX3NjcmVlbl8wXzE1NjM0OTUwODFfMDg3/screen-0.jpg?fakeurl=1&type=.jpg';
  List<RecycleBox> boxList = [
    RecycleBox(
        boxId: '0001',
        fulness: 87.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 82,
        bottleCount: 12,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 1)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74208988065302, 30.331658114158387)),
    RecycleBox(
        boxId: '0002',
        fulness: 35.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 55,
        bottleCount: 21,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.740553527803414, 30.32983421199624)),
    RecycleBox(
        boxId: '0003',
        fulness: 22.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 20,
        bottleCount: 30,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74138764603933, 30.327602056878494)),
    RecycleBox(
        boxId: '0004',
        fulness: 0.40,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 12,
        bottleCount: 0,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74219582918398, 30.32845962639581)),
    RecycleBox(
        boxId: '0005',
        fulness: 3.30,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 0,
        bottleCount: 0,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.7427385927429, 30.3271848899422)),
    RecycleBox(
        boxId: '0006',
        fulness: 98.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 10,
        bottleCount: 42,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74374266069149, 30.32813848519973)),
    RecycleBox(
        boxId: '0007',
        fulness: 67.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 46,
        bottleCount: 15,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.743819388256945, 30.329787976470957)),
    RecycleBox(
        boxId: '0008',
        fulness: 45.8,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 33,
        bottleCount: 24,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.744214709887494, 30.331246102715607)),
    RecycleBox(
        boxId: '0009',
        fulness: 57.2,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 62,
        bottleCount: 21,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.742645133974285, 30.333496179103673)),
    RecycleBox(
        boxId: '0010',
        fulness: 33.5,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 44,
        bottleCount: 18,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74166921040111, 30.332909451979866)),
    RecycleBox(
        boxId: '0011',
        fulness: 80.3,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 71,
        bottleCount: 21,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.7444356551526, 30.33452304786773)),
    RecycleBox(
        boxId: '0012',
        fulness: 12.7,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 50,
        bottleCount: 3,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.7432730664166, 30.33798920584157)),
    RecycleBox(
        boxId: '0013',
        fulness: 55.9,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 33,
        bottleCount: 6,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.740619552458725, 30.336066571440682)),
    RecycleBox(
        boxId: '0014',
        fulness: 34.4,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 25,
        bottleCount: 27,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.73970994727285, 30.333448899928847)),
    RecycleBox(
        boxId: '0015',
        fulness: 0.0,
        city: 54,
        province: 01,
        street: 01,
        bagCount: 20,
        bottleCount: 60,
        lastCleanDate: Timestamp.fromDate(DateTime(2021, 2, 19)),
        lastrefillDate: Timestamp.fromDate(DateTime(2021, 2, 15)),
        dateOfStart: Timestamp.fromDate(DateTime(2021, 2, 1)),
        geoPoint: GeoPoint(40.74065374788451, 30.331661662243818)),
  ];

  List<Account> userList = [
    Account(avatar: manAvatar, nameAndSurname: 'VB10', point: 2453),
    Account(
        avatar: manAvatar, nameAndSurname: 'Levent Kantaroğlu', point: 2154),
    Account(avatar: manAvatar, nameAndSurname: 'Sadık Şener', point: 1456),
    Account(avatar: manAvatar, nameAndSurname: 'Onur Kitap', point: 2023),
    Account(avatar: girlAvatar, nameAndSurname: 'Buse Akyüz', point: 1765),
    Account(avatar: manAvatar, nameAndSurname: 'Buğra Göksu', point: 1343),
    Account(avatar: girlAvatar, nameAndSurname: 'Dilan Acun', point: 1246),
    Account(avatar: girlAvatar, nameAndSurname: 'Mira Küçük', point: 2655),
    Account(avatar: girlAvatar, nameAndSurname: 'Nisanur Soydaş', point: 1678),
    Account(
        avatar: manAvatar, nameAndSurname: 'Egemen Kağan Duman', point: 1516),
  ];

  List<String> donateList = [
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-01.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-02.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-03.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-04.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-05.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-06.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-07.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-08.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-09.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-10.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-11.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-12.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-13.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-14.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-15.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-16.png',
    'https://sustainabledevelopment.un.org/content/sdgsummit/images/E_SDG%20goals_icons-individual-rgb-17.png',
  ];
}
