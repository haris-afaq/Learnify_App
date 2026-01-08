

import 'package:learnify_app/utils/auth_states.dart';

class ApiResponse<T> {
  Status status;
  T? data;
  String? message;

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.completed(this.data) : status = Status.completed;

  ApiResponse.error(this.message) : status = Status.error;
}