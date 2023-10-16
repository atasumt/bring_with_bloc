part of 'bottom_nav_bar_notifier_bloc.dart';

sealed class BottomNavBarNotifierState extends Equatable {
  const BottomNavBarNotifierState({required this.tabIndex});

  final int tabIndex;
}

final class BottomNavBarNotifierInitial extends BottomNavBarNotifierState {
  const BottomNavBarNotifierInitial({required super.tabIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [tabIndex];
}
