
import 'package:architecture/app/models/advisor_model.dart';

abstract class  IApiAdvisor {
  Future<AdvisorModel> get();
}