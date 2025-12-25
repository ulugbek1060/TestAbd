import 'package:flutter/material.dart';

import 'generated/app_localizations.dart';


extension LocalizedBuildContext on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
