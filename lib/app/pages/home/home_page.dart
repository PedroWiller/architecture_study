import 'package:architecture/app/models/advisor_model.dart';
import 'package:architecture/app/pages/home/home_controller.dart';
import 'package:architecture/app/repositories/apiadivisor_repository.dart';
import 'package:architecture/app/services/client_http_service.dart';
import 'package:architecture/app/viewModels/apiadvisor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'components/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
      ApiIdvisorViewModel(ApiAdvisorRepository(ClientHttpService())));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
          onPressed: () {
            controller.get();
          }),
      body: Center(
        child: Column(
          children: <Widget>[
            CustomSwitchWidget(),
            ValueListenableBuilder<AdvisorModel>(
              valueListenable: controller.time,
              builder: (context, model, child) {
                if (model?.text == null) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Column(
                  children: <Widget>[
                    Text(model.country),
                    Text(model.date),
                    Text(model.text),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
