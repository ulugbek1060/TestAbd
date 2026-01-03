// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get error_network_title => 'No Internet Connection';

  @override
  String get error_timeout_title => 'Request Timed Out';

  @override
  String get error_bad_request_title => 'Invalid Request';

  @override
  String get error_unauthorized_title => 'Unauthorized';

  @override
  String get error_not_found_title => 'Not Found';

  @override
  String get error_server_title => 'Server Error';

  @override
  String get error_storage_title => 'Storage Error';

  @override
  String get error_unknown_title => 'Unexpected Error';
}
