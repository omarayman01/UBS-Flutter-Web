import 'package:dartz/dartz.dart';
import 'package:ubs/model/form_model.dart';
import 'package:ubs/view_model/errors/failures.dart';

abstract class FormRepo {
  Future<Either<Faliure, dynamic>> applyForm(FormModel form);
}
