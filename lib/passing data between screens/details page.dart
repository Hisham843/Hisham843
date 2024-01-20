import 'package:flutter/material.dart';
import 'package:project_june1/passing%20data%20between%20screens/dummy%20data.dart';

class ProductDetails extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final Productid =ModalRoute.of(context)?.settings.arguments;

    final Product =product.firstWhere((element) => element['id']==Productid);
    return Scaffold(
      appBar: AppBar(
        title: Text(Product['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(Product['image']))),
            ),
            Text(
              Product['name'],
              style: TextStyle(fontSize: 40),
            ),
            Text(
              Product['description'],
              style: TextStyle(fontSize: 20),
            ),
            Text('${Product['price']}'
                style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
