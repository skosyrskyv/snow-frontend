import 'package:flutter/material.dart';
import 'package:snow_frontend/snow/data/models/snow_model.dart';

class SnowListItem extends StatelessWidget {
final SnowModel snow;
  const SnowListItem({Key? key, required this.snow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(snow.name) ,
      subtitle: Text(snow.description),
      leading: Image.network(snow.image, width: 50,),
    );
  }
}
