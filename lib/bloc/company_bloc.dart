import 'dart:async';

import 'package:task/model/company_model.dart';
import 'package:task/networking/response.dart';
import 'package:task/repository/main_company_repository.dart';

class CompanyBloc {
  CompanyRepository _companyRepository;
  StreamController _companyController;

  StreamSink<Response<CompanyModel>> get companySink => _companyController.sink;

  Stream<Response<CompanyModel>> get companyStream => _companyController.stream;

  CompanyBloc() {
    _companyController = StreamController<Response<CompanyModel>>();
    _companyRepository = CompanyRepository();
    fetchData();
  }

  fetchData() async {
    companySink.add(Response.loading('... جاري التحميل'));
    try {
      CompanyModel model = await _companyRepository.fetchCompanyData();
      companySink.add(Response.completed(model));
    } catch (e) {
      companySink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _companyController?.close();
  }
}
