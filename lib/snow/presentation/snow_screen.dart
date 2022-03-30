import 'package:flutter/material.dart';
import 'package:snow_frontend/snow/data/models/snow_model.dart';
import 'package:snow_frontend/snow/presentation/widgets/snow_list_item.dart';

class SnowScreen extends StatelessWidget {
  const SnowScreen({Key? key}) : super(key: key);

  Widget _listItemBuilder(context, index) {
    return SnowListItem(snow: SnowModel(name: 'snow $index', description: 'description',),);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: _listItemBuilder,),
    );
  }
}
