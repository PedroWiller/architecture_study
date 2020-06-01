import 'package:architecture/app/models/advisor_model.dart';
import 'package:architecture/app/viewModels/apiadvisor_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class HomeController{

  final ApiIdvisorViewModel viewModel;

  HomeController(this.viewModel);

  ValueNotifier<AdvisorModel> get time => viewModel.apiIdvisorViewModel;

  get(){
    viewModel.fill();
  }

}