class VerifyProofContent {
  String? nullifierHash;
  String? merkleRoot;
  String? proof;
  String? verificationLevel;
  String? action;
  String? signalHash;

  VerifyProofContent({
    this.nullifierHash,
    this.merkleRoot,
    this.proof,
    this.verificationLevel,
    this.action,
    this.signalHash,
  });

  factory VerifyProofContent.fromJson(Map<String, dynamic> json) => VerifyProofContent(
    nullifierHash: json['nullifier_hash'],
    merkleRoot: json['merkle_root'],
    proof: json['proof'],
    verificationLevel: json['verification_level'],
    action: json['action'],
    signalHash: json['signal_hash'],
  );

  Map<String, dynamic> toJson() => {
        "nullifier_hash": nullifierHash,
        "merkle_root": merkleRoot,
        "proof": proof,
        "verification_level": verificationLevel,
        "action": action,
        "signal_hash": signalHash,
      };
}
