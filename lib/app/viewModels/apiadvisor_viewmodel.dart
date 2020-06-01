import 'package:architecture/app/models/advisor_model.dart';
import 'package:architecture/app/repositories/apiadivisor_repository_interface.dart';
import 'package:flutter/cupertino.dart';

class ApiIdvisorViewModel {
  final apiIdvisorViewModel = ValueNotifier<AdvisorModel>(null);
  final IApiAdvisor repository;

  ApiIdvisorViewModel(this.repository);

  fill() async {
    apiIdvisorViewModel.value = await repository.get();
  }
}
