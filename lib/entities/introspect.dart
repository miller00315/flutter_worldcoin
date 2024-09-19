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

  Map<String, dynamic> toJson() => {
        "active": active,
        "client_id": clientId,
        "exp": exp,
        "sub": sub,
      };
}
