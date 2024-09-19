class OpenIdConectionDiscovery {
  String? issuer;
  String? authorizationEndpoint;
  String? tokenEndpoint;
  String? userinfoEndpoint;
  String? jwksUri;
  List<String>? scopesSupported;
  List<String>? responseTypesSupported;
  List<String>? grantTypesSupported;
  List<String>? subjectTypesSupported;
  List<String>? idTokenSigningAlgValuesSupported;

  OpenIdConectionDiscovery({
    this.issuer,
    this.authorizationEndpoint,
    this.tokenEndpoint,
    this.userinfoEndpoint,
    this.jwksUri,
    this.scopesSupported,
    this.responseTypesSupported,
    this.grantTypesSupported,
    this.subjectTypesSupported,
    this.idTokenSigningAlgValuesSupported,
  });

  factory OpenIdConectionDiscovery.fromJson(Map<String, dynamic> json) =>
      OpenIdConectionDiscovery(
        issuer: json['issuer'],
        authorizationEndpoint: json['authorization_endpoint'],
        tokenEndpoint: json['token_endpoint'],
        userinfoEndpoint: json['userinfo_endpoint'],
        jwksUri: json['jwks_uri'],
        scopesSupported: json['scopes_supported'],
        responseTypesSupported: json['response_types_supported'],
        grantTypesSupported: json['grant_types_supported'],
        subjectTypesSupported: json['subject_types_supported'],
        idTokenSigningAlgValuesSupported:
            json['id_token_signing_alg_values_supported'],
      );

  Map<String, dynamic> toJson() => {
        "issuer": issuer,
        "authorization_endpoint": authorizationEndpoint,
        "token_endpoint": tokenEndpoint,
        "userinfo_endpoint": userinfoEndpoint,
        "jwks_uri": jwksUri,
        "scopes_supported": scopesSupported,
        "response_types_supported": responseTypesSupported,
        "grant_types_supported": grantTypesSupported,
        "subject_types_supported": subjectTypesSupported,
        "id_token_signing_alg_values_supported":
            idTokenSigningAlgValuesSupported,
      };
}
