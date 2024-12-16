# store_ohos

一键跳转至鸿蒙应用商店，可用来进行应用更新

## Platform Support

| 鸿蒙 |
|:--:| 
| ✅  | 

## Usage

```yaml
store_ohos: 
  git:
    url: https://gitee.com/chdown/store_ohos.git
    ref: master
```

```dart
/// 跳转到应用商店
/// [appId] 若为开发者ID是需要添加C，例如：C1142586279411547392
/// [appId] 若为包名时，例如：com.xxx.xxxx
StoreOhos.goStore(appid);
```