import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:task/bloc/company_bloc.dart';
import 'package:task/model/company_model.dart';
import 'package:task/networking/response.dart';

import 'company_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  CompanyBloc _companyBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _companyBloc=CompanyBloc();

 
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _companyBloc.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator( onRefresh: () => _companyBloc.fetchData(),
      child: StreamBuilder<Response<CompanyModel>>(
          stream: _companyBloc.companyStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              switch (snapshot.data.status) {
                case Status.LOADING:
                  return Center(
                    child: Text(
                      snapshot.data.message,
                    ),
                  );
                  break;
                case Status.COMPLETED:
                  return CompanyView(
                    companyModel: snapshot.data.data,
                  );
                  break;
                case Status.ERROR:
                   return Center(
                    child: Text(
                      snapshot.data.message,
                    ),
                  );
                  break;
              }
            }
            return Container();
          },
        ),
      ),
    );
  }
}
