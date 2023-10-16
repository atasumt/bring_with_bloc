import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';

abstract class DogRepositoryInterface {
  Future<DogResponseData> getDog();
}
