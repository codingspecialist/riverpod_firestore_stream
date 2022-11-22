class ChatInsertReqDto {
  String from;
  String to;
  String msg;

  ChatInsertReqDto({required this.from, required this.to, required this.msg});

  // dart -> map (toJson)
  Map<String, dynamic> toJson() => {
        "from": from,
        "to": to,
        "msg": msg,
      };

  // map -> dart (fromJson)
  factory ChatInsertReqDto.fromJson(Map<String, dynamic> json) => ChatInsertReqDto(
        from: json["from"],
        to: json["to"],
        msg: json["msg"],
      );
}

// class ChatDeleteReqDto {
//
// }
