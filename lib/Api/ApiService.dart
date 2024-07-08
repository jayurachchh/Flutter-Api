import 'package:http/http.dart';
import 'package:retrofit/retrofit.dart';
abstract class ApiService
{
  @GET("/duFaculty")
  Future<Response>getduFaculty();
}