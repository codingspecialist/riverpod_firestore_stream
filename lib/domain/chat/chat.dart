class Chat {
  String id;
  String from;
  String to;
  String msg;

  Chat({required this.id, required this.from, required this.to, required this.msg});

  Map<String, dynamic> toJson() => {
        "id": id,
        "from": from,
        "to": to,
        "msg": msg,
      };

  // map -> dart (fromJson)
  factory Chat.fromJson(Map<String, dynamic> json, {String? id}) => Chat(
        id: id ?? json["id"],
        from: json["from"],
        to: json["to"],
        msg: json["msg"],
      );
}
