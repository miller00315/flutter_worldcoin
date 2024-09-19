class JwkKeys {
  String? e;
  String? n;
  String? kty;
  String? kid;

  JwkKeys({
    this.e,
    this.n,
    this.kty,
    this.kid,
  });

  factory JwkKeys.fromJson(Map<String, dynamic> json) => JwkKeys(
    e: json['e'],
    n: json['n'],
    kty: json['kty'],
    kid: json['kid'],
  );

  Map<String, dynamic> toJson() => {
        "e": e,
        "n": n,
        "kty": kty,
        "kid": kid,
      };
}
