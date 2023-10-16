import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_bar_notifier_event.dart';
part 'bottom_nav_bar_notifier_state.dart';

class BottomNavBarNotifierBloc extends Bloc<BottomNavBarNotifierEvent, BottomNavBarNotifierState> {
  BottomNavBarNotifierBloc() : super(const BottomNavBarNotifierInitial(tabIndex: 0)) {
    on<BottomNavBarNotifierEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(BottomNavBarNotifierInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
