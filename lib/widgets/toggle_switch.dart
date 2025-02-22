import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mqtt_demo_ios/bloc/cubits/toggle_cubit/toggle_cubit.dart';
import 'package:udemy_mqtt_demo_ios/utilities/constants.dart';
import 'package:udemy_mqtt_demo_ios/utilities/custom_decorations.dart';
import 'package:udemy_mqtt_demo_ios/utilities/custom_platform.dart';

class ToggleSwitch extends StatelessWidget {
  ToggleSwitch({super.key});
  final CustomPlatform _customPlatform = CustomPlatform();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleCubit, ToggleState>(
      builder: (context, state) {
        return Container(
          width: Constants.kWidth,
          height: Constants.kHeight,
          padding: const EdgeInsets.all(4.0),
          decoration: CustomDecorations.gradientContainer(
              isActive: state.toggleDeviceState),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.toggleDeviceState
                    ? Constants.kToggleTrue
                    : Constants.kToggleFalse,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: _customPlatform.getPlatformAdjustedFontSize(
                          Constants.kBodySmallFontSize),
                    ),
                textAlign: TextAlign.center,
              ),
              Switch(
                value: state.toggleDeviceState,
                onChanged: (_) =>
                    context.read<ToggleCubit>().updateDeviceState(),
              ),
            ],
          ),
        );
      },
    );
  }
}
