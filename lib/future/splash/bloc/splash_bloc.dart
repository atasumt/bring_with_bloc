import 'package:bloc/bloc.dart';
import 'package:brinch_with_bloc/core/helper/logger.dart';
import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';
import 'package:brinch_with_bloc/core/repository/dog_repository.dart';
import 'package:brinch_with_bloc/core/utils/routes.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    final DogRepository _apiRepository = DogRepository();

    on<GetDogList>((event, emit) async {
      try {
        emit(SplashLoading());
        final dogList = await _apiRepository.getDog();

        Future(() {
          cacheImages(dogList.message!);
        });

        emit(SplashLoaded(dogList));
      } on DioException {
        emit(const SplashError("Failed to fetch data. is your device online?"));
      }
    });
  }

  Future<void> loadImage(String imageUrl) async {
    try {
      await precacheImage(NetworkImage(imageUrl), globalCtx);
    } catch (e) {
      logger().d('Failed to load and cache the image: $e');
    }
  }

  Future<void> cacheImages(List<String> imageUrls) async {
    for (var imageUrl in imageUrls) {
      await loadImage(imageUrl);
    }
  }
}
