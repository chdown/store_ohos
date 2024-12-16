import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'store_ohos_method_channel.dart';

abstract class StoreOhosPlatform extends PlatformInterface {
  /// Constructs a StoreOhosPlatform.
  StoreOhosPlatform() : super(token: _token);

  static final Object _token = Object();

  static StoreOhosPlatform _instance = MethodChannelStoreOhos();

  /// The default instance of [StoreOhosPlatform] to use.
  ///
  /// Defaults to [MethodChannelStoreOhos].
  static StoreOhosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [StoreOhosPlatform] when
  /// they register themselves.
  static set instance(StoreOhosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> goStore(String appId) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
