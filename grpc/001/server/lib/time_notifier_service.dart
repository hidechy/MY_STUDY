// import 'dart:ffi';
// import 'dart:typed_data';
//
// import 'package:grpc/grpc.dart';
// import 'package:grpc_gen/grpc_gen.dart';
//
// class TimeNotifierService extends TimeNotifierServiceBase {
//   Stream<TimeNotificationResponse> notifierStream(
//       ServiceCall call, TimeNotificationRequest request) {
//     print('間隔: ${request.interval}秒');
//     var current = DateTime.now().toUtc();
//     final timer = Stream<TimeNotificationResponse>.periodic(
//       Duration(seconds: request.interval),
//       ((computationCount) {
//         current = current.add(
//           Duration(seconds: request.interval),
//         );
//         print('時刻: $current');
//         return TimeNotificationResponse(
//           unixTime: current.millisecondsSinceEpoch as Int64?,
//         );
//       }),
//     );
//     return timer;
//   }
//
//   @override
//   Future<TimeNotificationResponse> notifier(
//       ServiceCall call, TimeNotificationRequest request) {
//     // TODO: implement notifier
//     throw UnimplementedError();
//   }
// // @override
// // Stream<TimeNotificationResponse> notifier(
// //   ServiceCall call,
// //   TimeNotificationRequest request,
// // ) {
// //   print('間隔: ${request.interval}秒');
// //   var current = DateTime.now().toUtc();
// //   final timer = Stream<TimeNotificationResponse>.periodic(
// //     Duration(seconds: request.interval),
// //     ((computationCount) {
// //       current = current.add(
// //         Duration(seconds: request.interval),
// //       );
// //       print('時刻: $current');
// //       return TimeNotificationResponse(
// //         unixTime: current.millisecondsSinceEpoch,
// //       );
// //     }),
// //   );
// //   return timer;
// // }
// }
