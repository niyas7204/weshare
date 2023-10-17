import 'package:weshare/core/helpers/enums.dart';

class StateResponse<T> {
  String? errorMessage;
  T? data;
  StateStatus? status;
  StateResponse(this.data, this.status, this.errorMessage);
  StateResponse.loading() : status = StateStatus.loading;
  StateResponse.success(this.data) : status = StateStatus.success;
  StateResponse.error(this.errorMessage) : status = StateStatus.error;
  StateResponse.intial() : status = StateStatus.initial;
}
