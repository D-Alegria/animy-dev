//import 'package:meta/meta.dart';
//
//class Chat extends Equatable {
//  final String id;
//  final String userId;
//  final double message;
//  final String receivedBy;
//  final DateTime sentAt;
//
//  Chat(
//      {this.id,
//        @required this.userId,
//        @required this.message,
//        @required this.receivedBy,
//        @required this.sentAt},)
//      : super([id, userId, message, receivedBy, sentAt]);
//
//  factory Chat.fromDoc(DocumentSnapshot snapshot) {
//    Chat chat = Chat.fromJson(snapshot.data);
//    return Chat(
//        id: snapshot.documentID,
//        userId: chat.userId,
//        message: chat.message,
//        receivedBy: chat.receivedBy,
//        sentAt: chat.sentAt);
//  }
//
//  factory Chat.fromJson(Map<String, dynamic> jsonMap) {
//    return Chat(
//        userId: (jsonMap['userId']),
//        message: (jsonMap['message']),
//        receivedBy: (jsonMap['receivedBy']),
//        sentAt: (jsonMap['sentAt'] as Timestamp).toDate());
//  }
//
//  Map<String, dynamic> toJson() {
//    return {
//      'userId': userId,
//      'message': message,
//      'receivedBy': receivedBy,
//      'sentAt': sentAt
//    };
//  }
//}