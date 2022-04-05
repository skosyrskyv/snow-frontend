import 'package:dio/dio.dart';
import 'package:snow_frontend/snow/data/models/snow_model.dart';

class RemoteDatasource {
  var httpClient = Dio();

  Future<List<SnowModel>> fetchSnows() async {
    try {
      Response response =
          await httpClient.get('https://0997-46-48-185-41.ngrok.io/');
      var data = response.data as Iterable;
      return data.map((item) => SnowModel.fromJson(item)).toList();
    } on DioError catch (error) {
      print(error.message);
    } catch (e) {
      print('unhandled error');
    }
    return [];
  }
}
