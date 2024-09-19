class Introspect {
  bool? active;
  String? clientId;
  int? exp;
  String? sub;

  Introspect({
    this.active,
    this.clientId,
    this.exp,
    this.sub,
  });

  factory Introspect.fromJson(Map<String, dynamic> json) => Introspect(
        active: json['active'],
        clientId: json['client_id'],
        exp: json['exp'],
        sub: json['sub'],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "client_id": clientId,
        "exp": exp,
        "sub": sub,
      };
}
