class AuthoraizeParams {
  final String redirectUri;
  final String responseType;
  final List<String> scope;
  final String clientId;

  AuthoraizeParams({
    required this.redirectUri,
    required this.responseType,
    required this.scope,
    required this.clientId,
  });

  factory AuthoraizeParams.fromJson(Map<String, String> map) {
    return AuthoraizeParams(
      redirectUri: map['redirect_uri'] ?? '',
      responseType: map['response_type'] ?? '',
      scope: (map['scope'] ?? '').split(' '),
      clientId: map['client_id'] ?? '',
    );
  }

  Map<String, String> tojson() {
    return {
      'redirect_uri': redirectUri,
      'response_type': responseType,
      'scope': scope.join(' '),
      'client_id': clientId,
    };
  }
}
