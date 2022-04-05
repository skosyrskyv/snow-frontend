import 'package:flutter/material.dart';
import 'package:snow_frontend/snow/data/datasource/remote_datasource.dart';
import 'package:snow_frontend/snow/data/models/snow_model.dart';
import 'package:snow_frontend/snow/presentation/widgets/snow_list_item.dart';

class SnowScreen extends StatelessWidget {
  const SnowScreen({Key? key}) : super(key: key);

  Widget _listItemBuilder(context, index) {
    return SnowListItem(
      snow: SnowModel(
        name: 'snow $index',
        description: 'description',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: FutureBuilder(
            future: RemoteDatasource().fetchSnows(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Список пуст');
              var listSnow = snapshot.data as List<SnowModel>;
              if (listSnow.isEmpty) return const Text('Список пуст');
              return ListView(
                children: listSnow
                    .map(
                      (snow) => SnowListItem(
                        snow: SnowModel(
                          image: snow.image,
                          name: snow.name,
                          description: snow.description,
                        ),
                      ),
                    )
                    .toList(),
              );
            }),
      ),
    );
  }
}
