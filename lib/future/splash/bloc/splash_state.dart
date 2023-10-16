part of 'splash_bloc.dart';

sealed class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

final class SplashInitial extends SplashState {}

class SplashLoading extends SplashState {}

class SplashLoaded extends SplashState {
  final DogResponseData dogModel;
  const SplashLoaded(this.dogModel);
}

class SplashError extends SplashState {
  final String? message;
  const SplashError(this.message);
}
