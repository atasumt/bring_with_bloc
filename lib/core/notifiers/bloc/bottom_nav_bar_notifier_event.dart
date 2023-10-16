part of 'bottom_nav_bar_notifier_bloc.dart';

sealed class BottomNavBarNotifierEvent extends Equatable {
  const BottomNavBarNotifierEvent();
}

class TabChange extends BottomNavBarNotifierEvent {
  final int tabIndex;

  const TabChange({required this.tabIndex});

  @override
  // TODO: implement props
  List<Object?> get props => [tabIndex];
}
