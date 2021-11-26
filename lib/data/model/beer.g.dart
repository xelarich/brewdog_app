// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Beer _$BeerFromJson(Map<String, dynamic> json) => Beer(
      id: json['id'] as int,
      name: json['name'] as String?,
      tagline: json['tagline'] as String?,
      firstBrewed: json['first_brewed'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      adv: (json['adv'] as num?)?.toDouble(),
      ibu: json['ibu'] as int?,
      targetFg: json['target_fg'] as int?,
      targetDg: (json['target_dg'] as num?)?.toDouble(),
      ebc: json['ebc'] as int?,
      srm: json['srm'] as int?,
      ph: (json['ph'] as num?)?.toDouble(),
      attenuationLevel: (json['attenuation_level'] as num?)?.toDouble(),
      volume: Volume.fromJson(json['volume'] as Map<String, dynamic>),
      boilVolume: json['boil_volume'] == null
          ? null
          : Volume.fromJson(json['boil_volume'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : Method.fromJson(json['method'] as Map<String, dynamic>),
      ingredients: json['ingredients'] == null
          ? null
          : Ingredients.fromJson(json['ingredients'] as Map<String, dynamic>),
      foodPairings: (json['food_pairing'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      brewersTips: json['brewers_tips'] as String?,
      contributedBy: json['contributed_by'] as String?,
    );

Map<String, dynamic> _$BeerToJson(Beer instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tagline': instance.tagline,
      'first_brewed': instance.firstBrewed,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'adv': instance.adv,
      'ibu': instance.ibu,
      'target_fg': instance.targetFg,
      'target_dg': instance.targetDg,
      'ebc': instance.ebc,
      'srm': instance.srm,
      'ph': instance.ph,
      'attenuation_level': instance.attenuationLevel,
      'volume': instance.volume,
      'boil_volume': instance.boilVolume,
      'method': instance.method,
      'ingredients': instance.ingredients,
      'food_pairing': instance.foodPairings,
      'brewers_tips': instance.brewersTips,
      'contributed_by': instance.contributedBy,
    };

Volume _$VolumeFromJson(Map<String, dynamic> json) => Volume(
      value: (json['value'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$VolumeToJson(Volume instance) => <String, dynamic>{
      'value': instance.value,
      'unit': instance.unit,
    };

Ingredients _$IngredientsFromJson(Map<String, dynamic> json) => Ingredients(
      malts: (json['malts'] as List<dynamic>?)
          ?.map((e) => Malt.fromJson(e as Map<String, dynamic>))
          .toList(),
      hops: (json['hops'] as List<dynamic>?)
          ?.map((e) => Hop.fromJson(e as Map<String, dynamic>))
          .toList(),
      yeast: json['yeast'] as String?,
    );

Map<String, dynamic> _$IngredientsToJson(Ingredients instance) =>
    <String, dynamic>{
      'malts': instance.malts,
      'hops': instance.hops,
      'yeast': instance.yeast,
    };

Hop _$HopFromJson(Map<String, dynamic> json) => Hop(
      name: json['name'] as String?,
      amount: json['amount'] == null
          ? null
          : Volume.fromJson(json['amount'] as Map<String, dynamic>),
      add: json['add'] as String?,
      attribute: json['attribute'] as String?,
    );

Map<String, dynamic> _$HopToJson(Hop instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'add': instance.add,
      'attribute': instance.attribute,
    };

Malt _$MaltFromJson(Map<String, dynamic> json) => Malt(
      name: json['name'] as String?,
      amount: json['amount'] == null
          ? null
          : Volume.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MaltToJson(Malt instance) => <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
    };

Method _$MethodFromJson(Map<String, dynamic> json) => Method(
      mashTemp: (json['mash_temp'] as List<dynamic>?)
          ?.map((e) => MashTemp.fromJson(e as Map<String, dynamic>))
          .toList(),
      fermentation: json['fermentation'] == null
          ? null
          : Fermentation.fromJson(json['fermentation'] as Map<String, dynamic>),
      twist: json['twist'] as String?,
    );

Map<String, dynamic> _$MethodToJson(Method instance) => <String, dynamic>{
      'mash_temp': instance.mashTemp,
      'fermentation': instance.fermentation,
      'twist': instance.twist,
    };

Fermentation _$FermentationFromJson(Map<String, dynamic> json) => Fermentation(
      temp: json['temp'] == null
          ? null
          : Volume.fromJson(json['temp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FermentationToJson(Fermentation instance) =>
    <String, dynamic>{
      'temp': instance.temp,
    };

MashTemp _$MashTempFromJson(Map<String, dynamic> json) => MashTemp(
      temp: json['temp'] == null
          ? null
          : Volume.fromJson(json['temp'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$MashTempToJson(MashTemp instance) => <String, dynamic>{
      'temp': instance.temp,
      'duration': instance.duration?.inMicroseconds,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) => ResponseData(
      code: json['code'] as int,
      meta: json['meta'],
      data: json['data'] as List<dynamic>,
    );

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'code': instance.code,
      'meta': instance.meta,
      'data': instance.data,
    };
