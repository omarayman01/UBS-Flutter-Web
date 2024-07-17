part of 'apply_form_cubit.dart';

@immutable
sealed class ApplyFormState {}

final class ApplyFormInitial extends ApplyFormState {}

final class ApplyFormLoading extends ApplyFormState {}

final class ApplyFormSuccess extends ApplyFormState {
  final dynamic response;

  ApplyFormSuccess({required this.response});
}

final class ApplyFormFailure extends ApplyFormState {
  final String errMessage;

  ApplyFormFailure({required this.errMessage});
}
