import 'package:architecture/app/interfaces/client_http_service_interface.dart';
import 'package:architecture/app/models/advisor_model.dart';
import 'apiadivisor_repository_interface.dart';

class ApiAdvisorRepository implements IApiAdvisor {
  final IClientHttp client;
  ApiAdvisorRepository(this.client);

  @override
  Future<AdvisorModel> get() async {
    var json = await client.get(
        "http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=89fef15eea072ba2c8c747e8904df644");

    var  model =  AdvisorModel.fromJson(json[0]);

    return model;
  }
}
