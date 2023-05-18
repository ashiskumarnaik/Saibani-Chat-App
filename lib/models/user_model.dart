class UserModel {
  String? uid;
  String? fullname;
  String? email;
  String? profilepic;

  UserModel({this.uid, this.fullname, this.email, this.profilepic});

// Json serialization

// getting map from firebase i.e. to convert map to object.
  UserModel.fromMap(Map<String, dynamic> map) {
    uid = map["uid"];
    fullname = map["fullname"];
    email = map["email"];
    profilepic = map["profilepic"];
  }

// creating map from object for sending to firebase.
  Map<String, dynamic> toMap() {
    return {
      "uid": uid,
      "fullname": fullname,
      "email": email,
      "profilepic": profilepic,
    };
  }
}
