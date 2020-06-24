import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:task/model/company_model.dart';
import 'package:task/others/custom_functions.dart';
import 'package:task/view/custom_header_text.dart';

import 'custom_view_functions.dart';

class CompanyView extends StatefulWidget {
  CompanyModel companyModel;
  CompanyView({this.companyModel});
  @override
  _CompanyViewState createState() => _CompanyViewState();
}

class _CompanyViewState extends State<CompanyView> {
  PageController _pageController;
  int _pageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return   Container(
          child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * .30,
                    color: Colors.grey,
                    width: double.infinity,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Center(
                          child: PageView.builder(
                            itemBuilder: (ctx, index) => Container(
                              color: Colors.grey[800],
                              child: Opacity(
                                opacity: .7,
                                child: Image.network(
                                  widget.companyModel.img[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            itemCount: widget.companyModel.img.length,
                            controller: _pageController,
                            onPageChanged: (i) {
                              setState(() {
                                _pageIndex = i;
                              });
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            margin: EdgeInsets.only(top: 45, left: 13, right: 13),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.share,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20, left: 13),
                            child: DotsIndicator(
                              dotsCount: widget.companyModel.img.length,
                              position: double.parse(_pageIndex.toString()),
                              decorator: DotsDecorator(
                                size: const Size.square(8.0),
                                activeSize: const Size.square(13),
                                spacing: EdgeInsets.all(4),
                                activeColor: Colors.white,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Scrollbar(
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  text: '# ${widget.companyModel.interest}',
                                  isHeader: true,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  text: widget.companyModel.title,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CustomHeaderText(
                                  text: mappingDateTime(widget.companyModel.date),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CustomHeaderText(
                                  text: widget.companyModel.address,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: Colors.grey,
                                  backgroundImage: NetworkImage(widget
                                      .companyModel.trainerImg
                                      .replaceAll("https", "http")),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomHeaderText(
                                  text: widget.companyModel.trainerName,
                                  isHeader: true,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  text: widget.companyModel.trainerInfo,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  text: 'عن الدورة',
                                  isHeader: true,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  text: widget.companyModel.occasionDetail
                                      .replaceAll('\n', " "),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: <Widget>[
                                CustomHeaderText(
                                  isHeader: true,
                                  text: 'تكلفة الدورة',
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ...getReservationItems(
                                widget.companyModel.reservTypes),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.purple,
                      textColor: Colors.white,
                      child: Text(
                        'قم بالحجز الأن',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  )
                ],
              )),
        
      
    );
  }
}
