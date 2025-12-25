import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

abstract class WSNotificationsSource {
  Future<void> connectWebSocket(int userId, Function(dynamic location) dataReceived);
  Future<void> closeWebSocket();
}

@LazySingleton(as: WSNotificationsSource)
class WSNotificationsSourceImpl implements WSNotificationsSource {
  WebSocketChannel? _channel;

  @override
  Future<void> closeWebSocket() async {
    if (_channel != null) {
      await _channel!.sink.close();
      _channel = null;
    }
  }

  @override
  Future<void> connectWebSocket(
    int userId,
    Function(dynamic location) dataReceived,
  ) async {
    _channel = WebSocketChannel.connect(
      Uri.parse('wss://backend.testabd.uz/ws/notifications/$userId/'),
    );
    _channel!.stream.listen((message) {
      dataReceived(message);
    });
  }
}
