class FormModel {
  String? id;
  String? name;
  String? companyName;
  String? phoneNumber;
  String? service;
  String? userMessage;
  String? email;

  FormModel({
    this.id = '',
    required this.name,
    required this.companyName,
    required this.phoneNumber,
    required this.service,
    required this.userMessage,
    required this.email,
  });

  FormModel.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          companyName: json['companyName'],
          phoneNumber: json['phoneNumber'],
          service: json['service'],
          userMessage: json['userMessage'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'companyName': companyName,
        'phoneNumber': phoneNumber,
        'service': service,
        'userMessage': userMessage,
        'email': email,
      };

  void updateFromJson(Map<String, dynamic> json) {
    if (json.containsKey('id')) id = json['id'];
    if (json.containsKey('name')) name = json['name'];
    if (json.containsKey('companyName')) companyName = json['companyName'];
    if (json.containsKey('phoneNumber')) phoneNumber = json['phoneNumber'];
    if (json.containsKey('service')) service = json['service'];
    if (json.containsKey('userMessage')) userMessage = json['userMessage'];
    if (json.containsKey('email')) email = json['email'];
  }

  void copyFrom(FormModel other) {
    id = other.id;
    name = other.name;
    companyName = other.companyName;
    phoneNumber = other.phoneNumber;
    service = other.service;
    userMessage = other.userMessage;
    email = other.email;
  }
}
