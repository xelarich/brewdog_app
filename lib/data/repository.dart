import 'package:brewdog_app/data/model/beer.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'repository.g.dart';

@RestApi(baseUrl: "https://api.punkapi.com/v2" )
abstract class RestClient{
  factory RestClient(Dio dio,{String baseUrl}) = _RestClient;

  @GET("/beers/2")
  Future<List<Beer>> getBeer();


}