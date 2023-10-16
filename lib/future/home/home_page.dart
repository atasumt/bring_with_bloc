import 'package:brinch_with_bloc/core/common/global_app_bar.dart';
import 'package:brinch_with_bloc/core/common/global_bottom_navigation_bar.dart';
import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';
import 'package:brinch_with_bloc/future/home/field/home_search_text_field.dart';
import 'package:brinch_with_bloc/future/home/widgets/home_grid_view_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final DogResponseData dogModel;

  const HomePage(
    this.dogModel, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(
          title: Text(
        'AppNation',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
      )),
      body: Stack(
        children: [
          HomeGridViewWidget(dogModel: dogModel),
          const HomeSearchTextField(),
        ],
      ),
      bottomNavigationBar: const GlobalBottomNavigationBar(),
    );
  }
}
