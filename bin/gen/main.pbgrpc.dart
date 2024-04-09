//
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'main.pb.dart' as $0;

export 'main.pb.dart';

@$pb.GrpcServiceName('Messanger')
class MessangerClient extends $grpc.Client {
  static final _$trans = $grpc.ClientMethod<$0.Msg, $0.Msg>(
      '/Messanger/Trans',
      ($0.Msg value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Msg.fromBuffer(value));

  MessangerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.Msg> trans($0.Msg request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trans, request, options: options);
  }
}

@$pb.GrpcServiceName('Messanger')
abstract class MessangerServiceBase extends $grpc.Service {
  $core.String get $name => 'Messanger';

  MessangerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Msg, $0.Msg>(
        'Trans',
        trans_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Msg.fromBuffer(value),
        ($0.Msg value) => value.writeToBuffer()));
  }

  $async.Future<$0.Msg> trans_Pre($grpc.ServiceCall call, $async.Future<$0.Msg> request) async {
    return trans(call, await request);
  }

  $async.Future<$0.Msg> trans($grpc.ServiceCall call, $0.Msg request);
}
