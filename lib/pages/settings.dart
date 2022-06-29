import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme/cubit/dynamic_theme_cubit.dart';
import 'package:theme/themes/themes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Theme Settings'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: AppTheme.values.length,
            itemBuilder: (context, index) {
              final itemAppTheme = AppTheme.values[index];

              return Card(
                elevation: 5,
                color: appThemeData[itemAppTheme]!.primaryColor,
                child: ListTile(
                  onTap: () => context.read<DynamicThemeCubit>().changeTheme(itemAppTheme),
                  title: Text(
                    itemAppTheme.toString(),
                    style: appThemeData[itemAppTheme]!.textTheme.bodyText1,
                  ),
                ),
              );
            }
          );
        },
      ),
    );
  }
}
