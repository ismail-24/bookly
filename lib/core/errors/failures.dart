import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          'Connection timeout with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          'Send timeout with ApiServer',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          'Receive timeout with ApiServer',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          'Bad certificate with ApiServer',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          'Request to api server was cancelled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          'Connecion Error',
        );
      case DioExceptionType.unknown:
        if (dioError.message!.contains(
          'SocketException',
        )) {
          return ServerFailure(
            'No Internet Connection',
          );
        }
        return ServerFailure(
          'Unexpected Error, Please try again',
        );
      default:
        return ServerFailure(
          'Oops something went wrong, try again later',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    switch (statusCode) {
      case 400:
      case 401:
      case 403:
        return ServerFailure(response['errors']['message']);
      case 404:
        return ServerFailure('your request not found, please try again');
      case 500:
        return ServerFailure('Internal server error, please try later');
      default:
        return ServerFailure('oops something went wrong, try again later');
    }
  }
}
