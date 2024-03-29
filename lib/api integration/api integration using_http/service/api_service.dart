import 'package:project_june1/api%20integration/api%20integration%20using_http/model/product%20model.dart';
import 'package:http/http.dart' as http;
class HttpService{
  static Future<List<Productmodel>> fetchProducts() async{
    var response =await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode ==200){
      var data =response.body;
      return productmodelFromJson(data);
    }else{
      throw Exception();
    }
  }
}