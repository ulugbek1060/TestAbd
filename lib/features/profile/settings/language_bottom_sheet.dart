import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testabd/core/theme/app_colors.dart';
import 'package:testabd/core/theme/app_size.dart';
import 'package:testabd/core/utils/language_service.dart';
import 'package:testabd/di/app_config.dart';
import 'package:testabd/l10n/l10n_extension.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: locator<LanguageService>().stream,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: 16.topBorders,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  18.hSpace,
                  Text(
                    "Select Lang",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      padding: 4.allPadding,
                      decoration: BoxDecoration(
                        color: AppColors.onSurfaceColor(context),
                        borderRadius: 50.borderRadius,
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        color: Theme.of(context).colorScheme.onSurface,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              16.vSpace,
              ListView.builder(
                shrinkWrap: true,
                itemCount: supportedLocales.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final locale = supportedLocales[index];
                  return Column(
                    children: [
                      _Item(
                        isSelected: locale == snapshot.data,
                        locale: locale,
                      ),
                      if (index < supportedLocales.length - 1)
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: AppColors.onSurfaceColor(context),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _Item extends StatelessWidget {
  final bool isSelected;
  final Locale locale;

  const _Item({required this.isSelected, required this.locale});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(locale.getFlag()),
        radius: 12,
      ),
      title: Text(
        locale.getDisplayName(context.l10n),
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      trailing: isSelected
          ? Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: 50.borderRadius,
              ),
              child: const Icon(
                Icons.check_rounded,
                color: Colors.white,
                size: 20,
              ),
            )
          : null,
      onTap: () async {
        locator<LanguageService>().saveLanguage(locale);
        context.pop();
      },
    );
  }
}
