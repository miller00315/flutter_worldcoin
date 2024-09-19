class IntrospectRequestData {
  final String token;

  IntrospectRequestData(this.token);

  factory IntrospectRequestData.fromJson(Map<String, dynamic> json) =>
      IntrospectRequestData(json['token']);

  Map<String, dynamic> toJson() => {
        'token': token,
      };
}
