import 'package:brinch_with_bloc/core/extension/media_quary_extension.dart';
import 'package:brinch_with_bloc/core/model/dog_response_data/dog_response_data.dart';
import 'package:brinch_with_bloc/core/widget/design/const_design.dart';
import 'package:brinch_with_bloc/future/home/button/home_generate_button.dart';
import 'package:flutter/material.dart';

class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({super.key, required this.dogModel});

  final DogResponseData dogModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: dogModel.message?.length ?? 0,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(kFieldDefaultPadding),
        child: Stack(
          fit: StackFit.expand,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0), // Radius değeri 16
                    ),
                    contentPadding: const EdgeInsets.all(0),
                    content: Column(
                      children: [
                        Image.network(
                          dogModel.message![index],
                          height: 300,
                          width: context.width,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Breed',
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 21, color: kPrimaryColor),
                        ),
                        const Divider(),
                        Text(
                          'Breed',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Sub Breed',
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(fontSize: 21, color: kPrimaryColor),
                        ),
                        const Divider(),
                        Text(
                          'Sub Breed1',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
                        ),
                        Text(
                          'Sub Breed2',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                    actions: const <Widget>[
                      HomeGenerateButton(),
                    ],
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kDefaultRadius),
                child: Image.network(
                  dogModel.message![index],
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 145,
              left: 15,
              child: Text(
                'Breed',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 16, color: kBgColor),
              ),
            )
          ],
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
    );
  }
}
