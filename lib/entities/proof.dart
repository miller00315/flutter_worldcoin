class Proof {
  bool? success;
  String? action;
  String? nullifierHash;
  DateTime? createdAt;

  Proof({
    this.success,
    this.action,
    this.nullifierHash,
    this.createdAt,
  });

  factory Proof.fromJson(Map<String, dynamic> json) => Proof(
      success: json['success'],
      action: json['action'],
      nullifierHash: json['nullifier_hash'],
      createdAt: DateTime.tryParse(json['created_at']));

  Map<String, dynamic> toJson() => {
        "success": true,
        "action": action,
        "nullifier_hash": nullifierHash,
        "created_at": createdAt?.toIso8601String(),
      };
}
