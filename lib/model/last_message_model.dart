import 'package:flutter_app_chat/constants.dart';

class LastMessageModel {
  String senderUID;
  String contactUID;
  String contactName;
  String contactImage;
  String message;
  MessageEnum messageType;
  DateTime timeSent;
  bool isSeen;

  LastMessageModel({
    required this.senderUID,
    required this.contactUID,
    required this.contactName,
    required this.contactImage,
    required this.message,
    required this.messageType,
    required this.timeSent,
    required this.isSeen,
  });

  //to Map
  Map<String, dynamic> toMap() {
    return {
      Constants.senderUID: senderUID,
      Constants.contactUID: contactUID,
      Constants.contactName: contactName,
      Constants.contactImage: contactImage,
      Constants.message: message,
      Constants.messageType: messageType.name,
      Constants.timeSent: timeSent.microsecondsSinceEpoch,
      Constants.isSeen: isSeen,
    };
  }

  factory LastMessageModel.fromMap(Map<String, dynamic> map) {
    return LastMessageModel(
      senderUID: map[Constants.senderUID] ?? '',
      contactUID: map[Constants.contactUID] ?? '',
      contactName: map[Constants.contactName] ?? '',
      contactImage: map[Constants.contactImage] ?? '',
      message: map[Constants.message] ?? '',
      messageType: map[Constants.senderUID].toString().toMessageEnum(),
      timeSent: DateTime.fromMicrosecondsSinceEpoch(map[Constants.senderUID]),
      isSeen: map[Constants.isSeen] ?? false,
    );
  }

  copyWith({
    required String contactUID,
    required String contactName,
    required String contactImage,
  }) {
    return LastMessageModel(
        senderUID: senderUID,
        contactUID: contactUID,
        contactName: contactName,
        contactImage: contactImage,
        message: message,
        messageType: messageType,
        timeSent: timeSent,
        isSeen: isSeen);
  }
}
