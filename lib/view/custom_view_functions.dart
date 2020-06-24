import 'package:flutter/material.dart';
import 'package:task/model/company_model.dart';
import 'package:task/view/custom_header_text.dart';

List<Widget> getReservationItems(List<ReservTypes> reservations) {
  List<Widget> items = [];
  reservations.forEach((f) { 
       items.add(Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
       CustomHeaderText(
         text: f.name,
       ),
       CustomHeaderText(
         text:  'SAR ${f.price} ',
       )
      ],
    ));
 
  });
 
  return items;
}
