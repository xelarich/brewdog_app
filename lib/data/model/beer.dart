import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'beer.g.dart';

@JsonSerializable()
class Beer {
  //325 beers
  final int id;
  final String? name;
  final String? tagline;
  @JsonKey(name: 'first_brewed')
  final String? firstBrewed;
  final String? description;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final double? adv;
  final int? ibu;
  @JsonKey(name: 'target_fg')
  final int? targetFg;
  @JsonKey(name: 'target_dg')
  final double? targetDg;
  final int? ebc;
  final int? srm;
  final double? ph;
  @JsonKey(name: 'attenuation_level')
  final double? attenuationLevel;
  final Volume volume;
  @JsonKey(name: 'boil_volume')
  final Volume? boilVolume;
  final Method? method;
  final Ingredients? ingredients;
  @JsonKey(name: 'food_pairing')
  final List<String>? foodPairings;
  @JsonKey(name: 'brewers_tips')
  final String? brewersTips;
  @JsonKey(name: 'contributed_by')
  final String? contributedBy;

  Beer({required this.id,
     this.name,
     this.tagline,
     this.firstBrewed,
     this.description,
     this.imageUrl,
     this.adv,
     this.ibu,
     this.targetFg,
     this.targetDg,
     this.ebc,
     this.srm,
     this.ph,
     this.attenuationLevel,
    required this.volume,
     this.boilVolume,
     this.method,
     this.ingredients,
     this.foodPairings,
     this.brewersTips,
     this.contributedBy});

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);
}

@JsonSerializable()
class Volume {
  final double? value;
  final String? unit;

  Volume({ this.value,  this.unit});

  factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);
}

@JsonSerializable()
class Ingredients {
  final List<Malt>? malts;
  final List<Hop>? hops;
  final String? yeast;

  Ingredients({
    this.malts,
    this.hops,
    this.yeast,
  });

  factory Ingredients.fromJson(Map<String, dynamic> json) => _$IngredientsFromJson(json);
}

@JsonSerializable()
class Hop {
  final String? name;
  final Volume? amount;
  final String? add;
  final String? attribute;

  Hop({
    required this.name,
    required this.amount,
    required this.add,
    required this.attribute,
  });

  factory Hop.fromJson(Map<String, dynamic> json) => _$HopFromJson(json);
}

@JsonSerializable()
class Malt {
  final String? name;
  final Volume? amount;

  Malt({ this.name,  this.amount});

  factory Malt.fromJson(Map<String, dynamic> json) => _$MaltFromJson(json);
}

@JsonSerializable()
class Method {
  @JsonKey(name:'mash_temp' )
  final List<MashTemp>? mashTemp;
  final Fermentation? fermentation;
  final String? twist;

  Method({ this.mashTemp,
     this.fermentation,
     this.twist});

  factory Method.fromJson(Map<String, dynamic> json) => _$MethodFromJson(json);
}

@JsonSerializable()
class Fermentation {
  final Volume? temp;

  Fermentation({ this.temp});

  factory Fermentation.fromJson(Map<String, dynamic> json) => _$FermentationFromJson(json);
}

@JsonSerializable()
class MashTemp {
  final Volume? temp;
  final Duration? duration;

  MashTemp({ this.temp,  this.duration});

  factory MashTemp.fromJson(Map<String, dynamic> json) => _$MashTempFromJson(json);
}

@JsonSerializable()
class ResponseData{
  int code;
  dynamic meta;
  List<dynamic>data;
  ResponseData({required this.code, this.meta, required this.data});
  factory ResponseData.fromJson(Map<String, dynamic> json) => _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}




