// The file contains all method messages for AMQP class Connection (id: 10)
//
// File was auto-generated by generate_bindings.dart at 2019-03-21 11:46:08.114155
//
// Do not modify

// ignore_for_file: empty_constructor_bodies

part of dart_amqp.protocol;

class ConnectionStart implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 10;

  // Message arguments
  int versionMajor;
  int versionMinor;
  Map<String, Object> serverProperties;
  String mechanisms;
  String locales;

  ConnectionStart.fromStream(TypeDecoder decoder) {
    versionMajor = decoder.readUInt8();
    versionMinor = decoder.readUInt8();
    serverProperties = decoder.readFieldTable("serverProperties");
    mechanisms = decoder.readLongString();
    locales = decoder.readLongString();
  }

  void serialize(TypeEncoder encoder) {}
}

class ConnectionStartOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 11;

  // Message arguments
  Map<String, Object> clientProperties;
  String mechanism;
  String response;
  String locale;

  ConnectionStartOk();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeFieldTable(clientProperties)
      ..writeShortString(mechanism)
      ..writeLongString(response)
      ..writeShortString(locale);
  }
}

class ConnectionSecure implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 20;

  // Message arguments
  String challenge;

  ConnectionSecure.fromStream(TypeDecoder decoder) {
    challenge = decoder.readLongString();
  }

  void serialize(TypeEncoder encoder) {}
}

class ConnectionSecureOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 21;

  // Message arguments
  String response;

  ConnectionSecureOk();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeLongString(response);
  }
}

class ConnectionTune implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 30;

  // Message arguments
  int channelMax;
  int frameMax;
  int heartbeat;

  ConnectionTune.fromStream(TypeDecoder decoder) {
    channelMax = decoder.readUInt16();
    frameMax = decoder.readUInt32();
    heartbeat = decoder.readUInt16();
  }

  void serialize(TypeEncoder encoder) {}
}

class ConnectionTuneOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 31;

  // Message arguments
  int channelMax;
  int frameMax;
  int heartbeat;

  ConnectionTuneOk();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(channelMax)
      ..writeUInt32(frameMax)
      ..writeUInt16(heartbeat);
  }
}

class ConnectionOpen implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 40;

  // Message arguments
  String virtualHost;
  String reserved_1;
  bool reserved_2;

  ConnectionOpen();

  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeShortString(virtualHost)
      ..writeShortString(reserved_1)
      ..writeBits([reserved_2]);
  }
}

class ConnectionOpenOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 41;

  // Message arguments
  String reserved_1;

  ConnectionOpenOk.fromStream(TypeDecoder decoder) {
    reserved_1 = decoder.readShortString();
  }

  void serialize(TypeEncoder encoder) {}
}

class ConnectionClose implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 50;

  // Message arguments
  int replyCode;
  String replyText;
  int classId;
  int methodId;

  ConnectionClose();
  ConnectionClose.fromStream(TypeDecoder decoder) {
    replyCode = decoder.readUInt16();
    replyText = decoder.readShortString();
    classId = decoder.readUInt16();
    methodId = decoder.readUInt16();
  }
  void serialize(TypeEncoder encoder) {
    encoder
      ..writeUInt16(msgClassId)
      ..writeUInt16(msgMethodId)
      ..writeUInt16(replyCode)
      ..writeShortString(replyText)
      ..writeUInt16(classId)
      ..writeUInt16(methodId);
  }
}

class ConnectionCloseOk implements Message {
  final bool msgHasContent = false;
  final int msgClassId = 10;
  final int msgMethodId = 51;

  // Message arguments

  ConnectionCloseOk();
  ConnectionCloseOk.fromStream(TypeDecoder decoder) {}
  void serialize(TypeEncoder encoder) {
    encoder..writeUInt16(msgClassId)..writeUInt16(msgMethodId);
  }
}
