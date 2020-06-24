import 'package:intl/intl.dart';

String mappingDateTime(String myDate) {
  String date = DateFormat('EEEE, d/M, h:mm:a').format(DateTime.parse(myDate));

  String dayName = mappingDayName(date.split(',')[0]);
  String day=date.split(',')[1].split('/')[0];

  String monthName = mappingMonthName(date.split(',')[1]);

  String hour=date.split(',')[2].split(':')[0];
  String min=date.split(',')[2].split(':')[1];
  String per=(date.split(',')[2].split(':')[2]=="AM")?"صباحا":"مساءا";

  String fullDate=dayName+" ,"+day+" "+monthName+" , "+min+" :"+hour+" "+per;
  return fullDate;
}

String mappingMonthName(String m) {
  int month = int.parse(m.split('/')[1]);

  var monthMap = {
    1: 'يناير',
    2: 'فبراير',
    3: 'مارس',
    4: 'ابريل',
    5: 'مايو',
    6: 'يونيو',
    7: 'يوليو',
    8: 'اغسطس',
    9: 'سبتمبر',
    10: 'اكتوبر',
    11: 'نوفمبر',
    12: 'ديسمبر'
  };
  return monthMap[month];
}

String mappingDayName(String day) {
  var dayMap = {
    'Friday': 'الجمعة',
    'Saturday': 'السبت',
    'Sunday': 'الأحد',
    'Monday': 'الأثنين',
    'Theusday': 'الثلاثاء',
    'Wednesday': 'الأربعاء',
    'Thursday': 'الخميس',
  };
  return dayMap[day];
}
