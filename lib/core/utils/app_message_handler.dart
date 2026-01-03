import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:testabd/core/errors/app_exception.dart';
import 'package:testabd/l10n/l10n_extension.dart';
import 'package:testabd/router/app_router.dart';

enum MessageType { info, success, warning, error }

extension MessageTypeX on MessageType {
  Color getColor(BuildContext context) {
    switch (this) {
      case MessageType.success:
        return Colors.green;
      case MessageType.warning:
        return Colors.orange;
      case MessageType.error:
        return Theme.of(context).colorScheme.error;
      case MessageType.info:
        return Theme.of(context).colorScheme.primary;
    }
  }

  IconData get icon {
    switch (this) {
      case MessageType.success:
        return Icons.check_circle_outline;
      case MessageType.warning:
        return Icons.warning_amber_rounded;
      case MessageType.error:
        return Icons.error_outline;
      case MessageType.info:
        return Icons.info_outline;
    }
  }
}

extension MessageTypeXOnAppException on AppException {
  MessageType getMessageType() {
    switch (runtimeType) {
      case NetworkException _:
      case TimeoutException _:
        return MessageType.warning;
      case BadRequestException _:
        return MessageType.warning;
      case UnauthorizedException _:
        return MessageType.error;
      case NotFoundException _:
        return MessageType.info;
      case ServerException _:
        return MessageType.error;
      case HiveError _:
        return MessageType.error;
      case UnknownException _:
      default:
        return MessageType.error;
    }
  }

  String title(BuildContext context) {
    if (this is NetworkException || this is TimeoutException) {
      return context.l10n.error_timeout_title;
    } else if (this is BadRequestException) {
      return context.l10n.error_bad_request_title;
    } else if (this is UnauthorizedException) {
      return context.l10n.error_unauthorized_title;
    } else if (this is NotFoundException) {
      return context.l10n.error_not_found_title;
    } else if (this is ServerException) {
      return context.l10n.error_server_title;
    } else if (this is HiveError) {
      return context.l10n.error_storage_title;
    } else {
      return context.l10n.error_unknown_title;
    }
  }
}

abstract class AppMessageHandler {
  void handleDialog(AppException exception);

  void handleSnackBar(AppException exception);
}

@Singleton(as: AppMessageHandler)
class AppMessenger implements AppMessageHandler {
  BuildContext get context => navigatorKey.currentContext!;

  bool _isDialogEnabled = false;
  bool _isSnackBarEnabled = false;

  @override
  void handleDialog(AppException exception) async {
    if (_isDialogEnabled) return;
    _isDialogEnabled = true;
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.0)),
      ),
      builder: (context) {
        final theme = Theme.of(context);

        final title = exception.title(context);
        final message = exception.message;
        final type = exception.getMessageType();
        final color = type.getColor(context);

        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // drag handle
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.dividerColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 16),

              Icon(type.icon, size: 48, color: color),
              const SizedBox(height: 12),

              Text(
                title,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 8),

              Text(
                message,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ),
            ],
          ),
        );
      },
    ).then((_) {
      _isDialogEnabled = false;
    });
  }

  @override
  void handleSnackBar(AppException exception) {
    if (_isSnackBarEnabled) return;
    _isSnackBarEnabled = true;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(exception.message))).closed.then((_) {
      _isSnackBarEnabled = false;
    });
  }
}
