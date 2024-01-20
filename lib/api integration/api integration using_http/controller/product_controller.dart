import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project_june1/api%20integration/api%20integration%20using_http/service/api_service.dart';

class ProductController extends GetxController{
  //obs -observable
  var isloading =true.obs;
  var ProductList =[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try{
      isloading(true);
      var products =await HttpService.fetchProducts();
      if(products !=null){
        ProductList.value=products;
      }
    }catch(e){
      print(e);
    }finally{
      isloading(false);
    }
  }
}