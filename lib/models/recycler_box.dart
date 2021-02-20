import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class RecyclerBox {
  String boxId;
  String geoh;
  double fulness;
  int city;
  int province;
  int street;
  int bagCount;
  Timestamp lastCleanDate;
  Timestamp lastrefillDate;
  Timestamp lastBottleCount;
  Timestamp dateOfStart;
  GeoPoint geoPoint;
  RecyclerBox({
    this.boxId,
    this.geoh,
    this.fulness,
    this.city,
    this.province,
    this.street,
    this.bagCount,
    this.lastCleanDate,
    this.lastrefillDate,
    this.lastBottleCount,
    this.dateOfStart,
    this.geoPoint,
  });

  RecyclerBox copyWith({
    String boxId,
    String geoh,
    double fulness,
    int city,
    int province,
    int street,
    int bagCount,
    Timestamp lastCleanDate,
    Timestamp lastrefillDate,
    Timestamp lastBottleCount,
    Timestamp dateOfStart,
    GeoPoint geoPoint,
  }) {
    return RecyclerBox(
      boxId: boxId ?? this.boxId,
      geoh: geoh ?? this.geoh,
      fulness: fulness ?? this.fulness,
      city: city ?? this.city,
      province: province ?? this.province,
      street: street ?? this.street,
      bagCount: bagCount ?? this.bagCount,
      lastCleanDate: lastCleanDate ?? this.lastCleanDate,
      lastrefillDate: lastrefillDate ?? this.lastrefillDate,
      lastBottleCount: lastBottleCount ?? this.lastBottleCount,
      dateOfStart: dateOfStart ?? this.dateOfStart,
      geoPoint: geoPoint ?? this.geoPoint,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'boxId': boxId,
      'geoh': geoh,
      'fulness': fulness,
      'city': city,
      'province': province,
      'street': street,
      'bagCount': bagCount,
      'lastCleanDate': lastCleanDate,
      'lastrefillDate': lastrefillDate,
      'lastBottleCount': lastBottleCount,
      'dateOfStart': dateOfStart,
      'geoPoint': geoPoint,
    };
  }

  factory RecyclerBox.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return RecyclerBox(
      boxId: map['boxId'],
      geoh: map['geoh'],
      fulness: map['fulness'],
      city: map['city'],
      province: map['province'],
      street: map['street'],
      bagCount: map['bagCount'],
      lastCleanDate: map['lastCleanDate'],
      lastrefillDate: map['lastrefillDate'],
      lastBottleCount: map['lastBottleCount'],
      dateOfStart: map['dateOfStart'],
      geoPoint: map['geoPoint'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecyclerBox.fromJson(String source) =>
      RecyclerBox.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RecyclerBox(boxId: $boxId, geoh: $geoh, fulness: $fulness, city: $city, province: $province, street: $street, bagCount: $bagCount, lastCleanDate: $lastCleanDate, lastrefillDate: $lastrefillDate, lastBottleCount: $lastBottleCount, dateOfStart: $dateOfStart, geoPoint: $geoPoint)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is RecyclerBox &&
        o.boxId == boxId &&
        o.geoh == geoh &&
        o.fulness == fulness &&
        o.city == city &&
        o.province == province &&
        o.street == street &&
        o.bagCount == bagCount &&
        o.lastCleanDate == lastCleanDate &&
        o.lastrefillDate == lastrefillDate &&
        o.lastBottleCount == lastBottleCount &&
        o.dateOfStart == dateOfStart &&
        o.geoPoint == geoPoint;
  }

  @override
  int get hashCode {
    return boxId.hashCode ^
        geoh.hashCode ^
        fulness.hashCode ^
        city.hashCode ^
        province.hashCode ^
        street.hashCode ^
        bagCount.hashCode ^
        lastCleanDate.hashCode ^
        lastrefillDate.hashCode ^
        lastBottleCount.hashCode ^
        dateOfStart.hashCode ^
        geoPoint.hashCode;
  }
}
