import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'store_ohos_platform_interface.dart';

/// An implementation of [StoreOhosPlatform] that uses method channels.
class MethodChannelStoreOhos extends StoreOhosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('store_ohos');

  @override
  Future<bool> goStore(String appId) async {
    final success = await methodChannel.invokeMethod<bool>('goStore', {
      "appId": appId,
    });
    return success ?? false;
  }
}
