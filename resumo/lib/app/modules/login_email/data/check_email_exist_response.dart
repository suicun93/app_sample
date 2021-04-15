class CheckEmailExistResponse {
  CheckEmailExistResponse({
    this.message,
  });

  String message;

  factory CheckEmailExistResponse.fromJson(Map<String, dynamic> json) =>
      CheckEmailExistResponse(
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
      };
}
