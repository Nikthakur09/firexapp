class Profile{
  late  String name;
  late  String photo;
  late  String phone;
  late int coins;
  late  String membership;
  // constructor for creating object of the class.
  Profile(
    {required this.name,
    required this.photo, 
    required this.phone,
    required this.coins ,
     required this.membership
    });

  static Profile fromJSON(dynamic map) {
    return Profile(
        name: map['name']??' ',
        photo: map['photo']??'_',
        phone: map['phone']??'_',
        coins: map['coins']??'_',
        membership :map["Membership"] ?? '_'
      );
  }

}