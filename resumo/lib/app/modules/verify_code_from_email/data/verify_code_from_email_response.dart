class VerifyCodeFromEmailResponse {
  VerifyCodeFromEmailResponse({
    this.message,
  });

  String message;

  factory VerifyCodeFromEmailResponse.fromJson(Map<String, dynamic> json) =>
      VerifyCodeFromEmailResponse(
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
      };
}
