import 'package:flutter/material.dart';

class AppModeBottomSheet extends StatelessWidget {
  final ScrollController scrollController;

  const AppModeBottomSheet({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [

        ],
      ),
    );
  }
}


// class _Item extends StatelessWidget {
//   final bool isSelected;
//   final Locale locale;
//
//   const _Item({required this.isSelected, required this.locale});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundImage: AssetImage(locale.getFlag()),
//         radius: 12,
//       ),
//       title: Text(locale.getDisplayName(context.l10n)),
//       trailing:
//       isSelected
//           ? Container(
//         decoration: BoxDecoration(
//           color: Theme.of(context).colorScheme.secondary,
//           borderRadius: 50.borderRadius,
//         ),
//         child: const Icon(
//           Icons.check_rounded,
//           color: Colors.white,
//           size: 20,
//         ),
//       )
//           : null,
//       onTap: () async {
//         locator<LanguageService>().saveLanguage(locale);
//         context.pop();
//       },
//     );
//   }
// }

