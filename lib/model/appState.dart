class AppState {
  final String loginToken;

  AppState({this.loginToken});

  //用于持久化插件调用
  static AppState fromJson(dynamic json) => (AppState(loginToken: json['loginToken']));

  //用于持久化插件调用
  Map<String,dynamic> toJson() => ({loginToken: loginToken});
}
