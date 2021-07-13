import 'package:flutter/material.dart';

class Country {
  String name;
  String capital;
  List<dynamic> altSpelling;
  String relevance;
  String region;
  String subregion;
  List<dynamic> translations;
  String population;
  List<dynamic> latlng;
  String demonym;
  String area;
  String gini;
  List<dynamic> timezones;
  List<dynamic> callingCodes;
  List<dynamic> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<dynamic> currencies;
  List<dynamic> languages;

  Country(
      {@required String name,
      @required String capital,
      @required List<dynamic> altSpelling,
      @required String relevance,
      @required String region,
      @required String subregion,
      @required List<dynamic> translations,
      @required String population,
      @required List<dynamic> latlng,
      @required String demonym,
      @required String area,
      @required String gini,
      @required List<dynamic> timezones,
      @required List<dynamic> callingCodes,
      @required List<dynamic> topLevelDomain,
      @required String alpha2Code,
      @required String alpha3Code,
      @required List<dynamic> currencies,
      @required List<dynamic> languages});

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name'],
      capital: json['capital'],
      altSpelling: json['altSpelling'],
      relevance: json['relevance'],
      region: json['region'],
      subregion: json['subregion'],
      translations: json['translations'],
      population: json['population'],
      latlng: json['latlng'],
      demonym: json['demonym'],
      area: json['area'],
      gini: json['gini'],
      timezones: json['timezones'],
      callingCodes: json['callingCodes'],
      topLevelDomain: json['topLevelDomain'],
      alpha2Code: json['alpha2Code'],
      alpha3Code: json['alpha3Code'],
      currencies: json['currencies'],
      languages: json['languages'],
    );
  }
}
