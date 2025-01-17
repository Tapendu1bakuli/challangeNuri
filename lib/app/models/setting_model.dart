import 'package:get/get.dart';

import 'parents/model.dart';

class Setting extends Model {
  String? appName;
  String? salonAppName;
  bool? enableStripe;
  String? defaultTax;
  String? defaultCurrency;
  String? fcmKey;
  bool? enablePaypal;
  String? defaultTheme;
  String? mainColor;
  String? mainDarkColor;
  String? secondColor;
  String? secondDarkColor;
  String? accentColor;
  String? accentDarkColor;
  String? scaffoldDarkColor;
  String? scaffoldColor;
  String? googleMapsKey;
  String? mobileLanguage;
  String? defaultCountryCode;
  String? appVersion;
  bool? enableVersion;
  bool? currencyRight;
  int? defaultCurrencyDecimalDigits;
  bool? enableRazorpay;
  String? distanceUnit;
  String? homeSection1;
  String? homeSection2;
  String? homeSection3;
  String? homeSection4;
  String? homeSection5;
  String? homeSection6;
  String? homeSection7;
  String? homeSection8;
  String? homeSection9;
  String? homeSection10;
  String? homeSection11;
  String? homeSection12;
  List<String>? countries;

  Setting({
    this.appName,
    this.salonAppName,
    this.enableStripe,
    this.defaultTax,
    this.defaultCurrency,
    this.fcmKey,
    this.enablePaypal,
    this.mainColor,
    this.mainDarkColor,
    this.secondColor,
    this.secondDarkColor,
    this.accentColor,
    this.accentDarkColor,
    this.scaffoldDarkColor,
    this.scaffoldColor,
    this.googleMapsKey,
    this.mobileLanguage,
    this.defaultCountryCode,
    this.appVersion,
    this.enableVersion,
    this.currencyRight,
    this.defaultCurrencyDecimalDigits,
    this.enableRazorpay,
    this.distanceUnit,
    this.homeSection1,
    this.homeSection2,
    this.homeSection3,
    this.homeSection4,
    this.homeSection5,
    this.homeSection6,
    this.homeSection7,
    this.homeSection8,
    this.homeSection9,
    this.homeSection10,
    this.homeSection11,
    this.homeSection12,
    this.countries,
  });

  Setting.fromJson(Map<String, dynamic> json) {
    appName = this.stringFromJson(json, 'app_name');
    salonAppName = this.stringFromJson(json, 'salon_app_name');
    defaultTax = json['default_tax'];
    defaultCurrency = json['default_currency'];
    fcmKey = json['fcm_key'];
    defaultTheme = json['default_theme'];
    mainColor = json['main_color'];
    mainDarkColor = json['main_dark_color'];
    secondColor = json['second_color'];
    secondDarkColor = json['second_dark_color'];
    accentColor = json['accent_color'];
    accentDarkColor = json['accent_dark_color'];
    scaffoldDarkColor = json['scaffold_dark_color'];
    scaffoldColor = json['scaffold_color'];
    googleMapsKey = json['google_maps_key'];
    mobileLanguage = json['mobile_language'];
    defaultCountryCode = json['default_country_code'];
    appVersion = json['business_app_version'] == null ? "1.0.0" : json['business_app_version'];
    distanceUnit = json['distance_unit'];
    enableVersion = boolFromJson(json, 'enable_version');
    currencyRight = boolFromJson(json, 'currency_right');
    enableRazorpay = boolFromJson(json, 'enable_razorpay');
    enableStripe = boolFromJson(json, 'enable_stripe');
    enablePaypal = boolFromJson(json, 'enable_paypal');
    defaultCurrencyDecimalDigits =
        int.tryParse(json['default_currency_decimal_digits'] ?? '2') ?? 2;

    if (json['countries'] != null && json['countries'] is List) {
      List<String> dumbList = <String>[];
      countries = <String>[];
      json['countries'].forEach((v) {
        if (v is String) {
          dumbList.add(v);
        }
      });
      countries!.assignAll(dumbList);
    } else
      countries = <String>[defaultCountryCode!];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['app_name'] = this.appName == null ? null : this.appName;
    data['salon_app_name'] = this.salonAppName == null ? null : this.salonAppName;
    data['enable_stripe'] = this.enableStripe == null ? null : this.enableStripe;
    data['default_tax'] = this.defaultTax == null ? null : this.defaultTax;
    data['default_currency'] = this.defaultCurrency == null ? null : this.defaultCurrency;
    data['fcm_key'] = this.fcmKey == null ? null : this.fcmKey;
    data['enable_paypal'] = this.enablePaypal == null ? null : this.enablePaypal;
    data['main_color'] = this.mainColor == null ? null : this.mainColor;
    data['default_theme'] = this.defaultTheme == null ? null : this.defaultTheme;
    data['main_dark_color'] = this.mainDarkColor == null ? null : this.mainDarkColor;
    data['second_color'] = this.secondColor == null ? null : this.secondColor;
    data['second_dark_color'] = this.secondDarkColor == null ? null : this.secondDarkColor;
    data['accent_color'] = this.accentColor == null ? null : this.accentColor;
    data['accent_dark_color'] = this.accentDarkColor == null ? null : this.accentDarkColor;
    data['scaffold_dark_color'] = this.scaffoldDarkColor == null ? null : this.scaffoldDarkColor;
    data['scaffold_color'] = this.scaffoldColor == null ? null : this.scaffoldColor;
    data['google_maps_key'] = this.googleMapsKey == null ? null : this.googleMapsKey;
    data['mobile_language'] = this.mobileLanguage == null ? null : this.mobileLanguage;
    data['default_country_code'] = this.defaultCountryCode == null ? null : this.defaultCountryCode;
    data['app_version'] = this.appVersion == null ? null : this.appVersion;
    data['enable_version'] = this.enableVersion == null ? null : this.enableVersion;
    data['currency_right'] = this.currencyRight == null ? null : this.currencyRight;
    data['default_currency_decimal_digits'] = this.defaultCurrencyDecimalDigits == null ? null : this.defaultCurrencyDecimalDigits;
    data['enable_razorpay'] = this.enableRazorpay == null ? null : this.enableRazorpay;
    data['distance_unit'] = this.distanceUnit == null ? null : this.distanceUnit;
    data['countries'] = this.countries == null ? null : this.countries;
    return data;
  }
}
