import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ubs/model/form_model.dart';
import 'package:ubs/view_model/errors/failures.dart';
import 'package:ubs/view_model/repos/form_repo.dart';
import 'package:ubs/view_model/services/firebase_utils.dart';

class FormRepoImpl extends FormRepo {
  @override
  Future<Either<Faliure, dynamic>> applyForm(FormModel form) async {
    try {
      await FireBaseUtils.addFormToFireStore(form).timeout(
        const Duration(milliseconds: 500),
        onTimeout: () {
          Fluttertoast.showToast(
            msg: 'Form submitted successfully!',
            toastLength: Toast.LENGTH_SHORT,
          );
        },
      );
      return right('');
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
