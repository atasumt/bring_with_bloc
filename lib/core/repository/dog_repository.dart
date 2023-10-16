import 'package:brinch_with_bloc/core/helper/dio/fetch_dio.dart';
import 'package:brinch_with_bloc/core/helper/error_response_handler.dart';
import 'package:brinch_with_bloc/core/helper/logger.dart';
import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';
import 'package:brinch_with_bloc/core/repository/interface/dog_repository_interface.dart';
import 'package:brinch_with_bloc/core/utils/end_point_consts.dart';

class DogRepository implements DogRepositoryInterface {
  @override
  Future<DogResponseData> getDog() async {
    try {
      var response = await fetchDio().get(EndPointConstants.dogEndPoint).then((res) => DogResponseData.fromJson(res.data));

      return response;
    } catch (e) {
      logger().d(e.toString());
      return DogResponseData.fromJson(errorResponseHandler(e));
    }
  }
}
