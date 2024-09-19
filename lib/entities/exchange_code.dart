class ExchangeCode {
  String? accessToken;
  String? tokenType;
  int? expiresIn;
  String? scope;
  String? idToken;

  ExchangeCode({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.scope,
    this.idToken,
  });

  factory ExchangeCode.fromJson(Map<String, dynamic> json) => ExchangeCode(
    accessToken: json['access_token'],
    tokenType: json['token_type'],
    expiresIn: json['expires_in'],
    scope: json['scope'],
    idToken: json['id_token'],
  );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
        "scope": scope,
        "id_token": idToken,
      };
}
