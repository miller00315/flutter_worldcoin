class ExchangeCodeDataParams {
  final String? code;
  final String? grantType;
  final String? redirectUri;

  ExchangeCodeDataParams({
    required this.code,
    required this.grantType,
    required this.redirectUri,
  });

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'grant_type': grantType,
      'redirect_uri': redirectUri,
    };
  }

  factory ExchangeCodeDataParams.fromJson(Map<String, dynamic> json) {
    return ExchangeCodeDataParams(
      code: json['code'],
      grantType: json['grant_type'],
      redirectUri: json['redirect_uri'],
    );
  }
}
