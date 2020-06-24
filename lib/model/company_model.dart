class CompanyModel {
  int _id;
  String _title;
  List<String> _img;
  String _interest;
  int _price;
  String _date;
  String _address;
  String _trainerName;
  String _trainerImg;
  String _trainerInfo;
  String _occasionDetail;
  String _latitude;
  String _longitude;
  bool _isLiked;
  bool _isSold;
  bool _isPrivateEvent;
  bool _hiddenCashPayment;
  int _specialForm;
  Null _questionnaire;
  Null _questExplanation;
  List<ReservTypes> _reservTypes;

  CompanyModel(
      {int id,
      String title,
      List<String> img,
      String interest,
      int price,
      String date,
      String address,
      String trainerName,
      String trainerImg,
      String trainerInfo,
      String occasionDetail,
      String latitude,
      String longitude,
      bool isLiked,
      bool isSold,
      bool isPrivateEvent,
      bool hiddenCashPayment,
      int specialForm,
      Null questionnaire,
      Null questExplanation,
      List<ReservTypes> reservTypes}) {
    this._id = id;
    this._title = title;
    this._img = img;
    this._interest = interest;
    this._price = price;
    this._date = date;
    this._address = address;
    this._trainerName = trainerName;
    this._trainerImg = trainerImg;
    this._trainerInfo = trainerInfo;
    this._occasionDetail = occasionDetail;
    this._latitude = latitude;
    this._longitude = longitude;
    this._isLiked = isLiked;
    this._isSold = isSold;
    this._isPrivateEvent = isPrivateEvent;
    this._hiddenCashPayment = hiddenCashPayment;
    this._specialForm = specialForm;
    this._questionnaire = questionnaire;
    this._questExplanation = questExplanation;
    this._reservTypes = reservTypes;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;
  List<String> get img => _img;
  set img(List<String> img) => _img = img;
  String get interest => _interest;
  set interest(String interest) => _interest = interest;
  int get price => _price;
  set price(int price) => _price = price;
  String get date => _date;
  set date(String date) => _date = date;
  String get address => _address;
  set address(String address) => _address = address;
  String get trainerName => _trainerName;
  set trainerName(String trainerName) => _trainerName = trainerName;
  String get trainerImg => _trainerImg;
  set trainerImg(String trainerImg) => _trainerImg = trainerImg;
  String get trainerInfo => _trainerInfo;
  set trainerInfo(String trainerInfo) => _trainerInfo = trainerInfo;
  String get occasionDetail => _occasionDetail;
  set occasionDetail(String occasionDetail) => _occasionDetail = occasionDetail;
  String get latitude => _latitude;
  set latitude(String latitude) => _latitude = latitude;
  String get longitude => _longitude;
  set longitude(String longitude) => _longitude = longitude;
  bool get isLiked => _isLiked;
  set isLiked(bool isLiked) => _isLiked = isLiked;
  bool get isSold => _isSold;
  set isSold(bool isSold) => _isSold = isSold;
  bool get isPrivateEvent => _isPrivateEvent;
  set isPrivateEvent(bool isPrivateEvent) => _isPrivateEvent = isPrivateEvent;
  bool get hiddenCashPayment => _hiddenCashPayment;
  set hiddenCashPayment(bool hiddenCashPayment) =>
      _hiddenCashPayment = hiddenCashPayment;
  int get specialForm => _specialForm;
  set specialForm(int specialForm) => _specialForm = specialForm;
  Null get questionnaire => _questionnaire;
  set questionnaire(Null questionnaire) => _questionnaire = questionnaire;
  Null get questExplanation => _questExplanation;
  set questExplanation(Null questExplanation) =>
      _questExplanation = questExplanation;
  List<ReservTypes> get reservTypes => _reservTypes;
  set reservTypes(List<ReservTypes> reservTypes) => _reservTypes = reservTypes;

  CompanyModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _img = json['img'].cast<String>();
    _interest = json['interest'];
    _price = json['price'];
    _date = json['date'];
    _address = json['address'];
    _trainerName = json['trainerName'];
    _trainerImg = json['trainerImg'];
    _trainerInfo = json['trainerInfo'];
    _occasionDetail = json['occasionDetail'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _isLiked = json['isLiked'];
    _isSold = json['isSold'];
    _isPrivateEvent = json['isPrivateEvent'];
    _hiddenCashPayment = json['hiddenCashPayment'];
    _specialForm = json['specialForm'];
    _questionnaire = json['questionnaire'];
    _questExplanation = json['questExplanation'];
    if (json['reservTypes'] != null) {
      _reservTypes = new List<ReservTypes>();
      json['reservTypes'].forEach((v) {
        _reservTypes.add(new ReservTypes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['img'] = this._img;
    data['interest'] = this._interest;
    data['price'] = this._price;
    data['date'] = this._date;
    data['address'] = this._address;
    data['trainerName'] = this._trainerName;
    data['trainerImg'] = this._trainerImg;
    data['trainerInfo'] = this._trainerInfo;
    data['occasionDetail'] = this._occasionDetail;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['isLiked'] = this._isLiked;
    data['isSold'] = this._isSold;
    data['isPrivateEvent'] = this._isPrivateEvent;
    data['hiddenCashPayment'] = this._hiddenCashPayment;
    data['specialForm'] = this._specialForm;
    data['questionnaire'] = this._questionnaire;
    data['questExplanation'] = this._questExplanation;
    if (this._reservTypes != null) {
      data['reservTypes'] = this._reservTypes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ReservTypes {
  int _id;
  String _name;
  int _count;
  int _price;

  ReservTypes({int id, String name, int count, int price}) {
    this._id = id;
    this._name = name;
    this._count = count;
    this._price = price;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  int get count => _count;
  set count(int count) => _count = count;
  int get price => _price;
  set price(int price) => _price = price;

  ReservTypes.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _count = json['count'];
    _price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['count'] = this._count;
    data['price'] = this._price;
    return data;
  }
}
