
import 'dart:async';

import 'package:task/model/company_model.dart';
import 'package:task/networking/api_provider.dart';

class CompanyRepository {
  ApiProvider _provider = ApiProvider();

  Future<CompanyModel> fetchCompanyData() async {
    final response = await _provider.get("3a1ec9ff-6a95-43cf-8be7-f5daa2122a34");
    return CompanyModel.fromJson(response);
  }
}