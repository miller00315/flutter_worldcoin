class HumanVerification {
  final String likelyHuman;
  final String credentialType;

  HumanVerification({
    required this.likelyHuman,
    required this.credentialType,
  });

  factory HumanVerification.fromJson(Map<String, dynamic> json) {
    return HumanVerification(
      likelyHuman: json['likely_human'],
      credentialType: json['credential_type'],
    );
  }
}