import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:ubs/model/form_model.dart';
import 'package:ubs/view_model/repos/form_repo.dart';

part 'apply_form_state.dart';

class ApplyFormCubit extends Cubit<ApplyFormState> {
  ApplyFormCubit(this.formRepo) : super(ApplyFormInitial());
  final FormRepo formRepo;
  Future<void> applyForm(FormModel form) async {
    emit(ApplyFormLoading());
    var result = await formRepo.applyForm(form);
    result.fold(
        (faliure) => emit(ApplyFormFailure(errMessage: faliure.errMessage)),
        (response) {
      debugPrint("Cubit");
      emit(ApplyFormSuccess(response: response));
    });
  }
}
