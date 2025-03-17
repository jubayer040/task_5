import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:task_5/core/util/mydialog.dart';
import 'package:task_5/core/util/mystring.dart';

class ApiException implements Exception {
  static void handleException(DioException exception, BuildContext ctx) {
    switch (exception.type) {
      case DioException.badResponse:
        handleErrorStatus(exception, ctx);
      case DioExceptionType.cancel:
        MyDialog().showFailedToast(
          title: "Request Cancelled!",
          msg: "The request was cancelled before completion.",
          context: ctx,
        );
      case DioExceptionType.receiveTimeout:
        MyDialog().showFailedToast(
          title: "Receive Timeout",
          msg: "Unable to connect to the device.",
          context: ctx,
        );
      case DioExceptionType.connectionError:
        MyDialog().showFailedToast(
          title: "Connection Error!",
          msg: "Connection error. Please try again.",
          context: ctx,
        );
      case DioExceptionType.connectionTimeout:
        MyDialog().showFailedToast(
          title: "Connection Timeout!",
          msg: "Unable to connect to the server.",
          context: ctx,
        );
      default:
        MyDialog().showFailedToast(msg: MyString.errorMsg, context: ctx);
    }
  }

  static void handleErrorStatus(DioException e, BuildContext ctx) {
    switch (e.response?.statusCode) {
      case 204:
        MyDialog().showFailedToast(
            msg: "204: Sorry, No content is available!", context: ctx);
        break;
      case 400:
        MyDialog().showFailedToast(
          title: "Bad Request",
          msg: " The server could not process the request.",
          context: ctx,
        );
        break;
      case 401:
        MyDialog().showFailedToast(
          title: "Unauthorized",
          msg: "Access is denied due to invalid credentials.",
          context: ctx,
        );
        break;
      case 403:
        MyDialog().showFailedToast(
          title: "Forbidden",
          msg: "You don't have permission to access this resource.",
          context: ctx,
        );
        break;
      case 404:
        MyDialog().showFailedToast(
          title: "Not Found",
          msg: " he requested resource was not found on the server.",
          context: ctx,
        );
        break;
      case 500:
        MyDialog().showFailedToast(
          title: "Internal Server Error",
          msg: " The server encountered an error.",
          context: ctx,
        );
        break;
      default:
        MyDialog().showFailedToast(
          title: "${e.response?.statusCode}",
          msg: "Received unexpected status code",
          context: ctx,
        );
    }
  }
}
