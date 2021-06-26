import 'dart:convert';

class BoletoModel {
  final String? name;
  final String? duaDate;
  final double? value;
  final String? barcode;
  BoletoModel({
    this.name,
    this.duaDate,
    this.value,
    this.barcode,
  });

  BoletoModel copyWith({
    String? name,
    String? duaDate,
    double? value,
    String? barcode,
  }) {
    return BoletoModel(
      name: name ?? this.name,
      duaDate: duaDate ?? this.duaDate,
      value: value ?? this.value,
      barcode: barcode ?? this.barcode,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'duaDate': duaDate,
      'value': value,
      'barcode': barcode,
    };
  }

  factory BoletoModel.fromMap(Map<String, dynamic> map) {
    return BoletoModel(
      name: map['name'],
      duaDate: map['duaDate'],
      value: map['value'],
      barcode: map['barcode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BoletoModel.fromJson(String source) =>
      BoletoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BoletoModel(name: $name, duaDate: $duaDate, value: $value, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is BoletoModel &&
        other.name == name &&
        other.duaDate == duaDate &&
        other.value == value &&
        other.barcode == barcode;
  }

  @override
  int get hashCode {
    return name.hashCode ^ duaDate.hashCode ^ value.hashCode ^ barcode.hashCode;
  }
}
