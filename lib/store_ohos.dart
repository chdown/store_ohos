import 'store_ohos_platform_interface.dart';

class StoreOhos {
  /// 跳转到应用商店
  /// [appId] 若为开发者ID是需要添加C，例如：C1142586279411547392
  /// [appId] 若为包名时，例如：com.xxx.xxxx
  static Future<bool> goStore(String appId) {
    return StoreOhosPlatform.instance.goStore(appId);
  }
}
