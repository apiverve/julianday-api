/// Response models for the Julian Day Calculator API.

/// API Response wrapper.
class JuliandayResponse {
  final String status;
  final dynamic error;
  final JuliandayData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  JuliandayResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory JuliandayResponse.fromJson(Map<String, dynamic> json) => JuliandayResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? JuliandayData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Julian Day Calculator API.

class JuliandayData {
  String? gregorian;
  num? julianDayNumber;
  num? modifiedJulianDate;
  String? dayOfWeek;
  num? weekNumber;
  num? dayOfYear;
  num? daysFromToday;

  JuliandayData({
    this.gregorian,
    this.julianDayNumber,
    this.modifiedJulianDate,
    this.dayOfWeek,
    this.weekNumber,
    this.dayOfYear,
    this.daysFromToday,
  });

  factory JuliandayData.fromJson(Map<String, dynamic> json) => JuliandayData(
      gregorian: json['gregorian'],
      julianDayNumber: json['julianDayNumber'],
      modifiedJulianDate: json['modifiedJulianDate'],
      dayOfWeek: json['dayOfWeek'],
      weekNumber: json['weekNumber'],
      dayOfYear: json['dayOfYear'],
      daysFromToday: json['daysFromToday'],
    );
}

class JuliandayRequest {
  String date;

  JuliandayRequest({
    required this.date,
  });

  Map<String, dynamic> toJson() => {
      'date': date,
    };
}
