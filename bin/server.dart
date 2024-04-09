import 'dart:math';

// ignore: depend_on_referenced_packages
import 'package:fixnum/src/int64.dart';
import 'package:grpc/grpc.dart';

import './gen/main.pbgrpc.dart';

class Messenger extends MessangerServiceBase {
  @override
  Future<Msg> trans(ServiceCall call, Msg request) async {
    Msg msg = Msg();
    msg.messageId = Random().nextInt(999) as Int64;
    msg.meg = 'server recieved your message: ${request.meg}';

    return msg;
  }
}
