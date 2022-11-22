import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_firestore_stream/domain/chat/chat.dart';
import 'package:riverpod_firestore_stream/dto/chat/chat_req_dto.dart';

// 리턴 : Stream<List<Chat>>
final chatStreamProvider = StreamProvider.autoDispose<List<Chat>>((ref) {
  //ref.onDispose(() { });
  final db = FirebaseFirestore.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>> stream = db.collection("chat").snapshots();
  return stream.map((snapshot) => snapshot.docs.map((doc) => Chat.fromJson(doc.data())).toList());
});

final chatFirestoreRepositoryProvider = Provider((ref) {
  return ChatFirestoreRepository();
});

class ChatFirestoreRepository {
  final db = FirebaseFirestore.instance;

  Future<DocumentReference> insert(ChatInsertReqDto dto) {
    return db.collection("chat").add(dto.toJson());
  }
}
