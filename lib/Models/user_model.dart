
import 'package:cliffordproperty/Models/image_model.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  ImageModel? image;
  String? password;
  String? dob;
  String? gender;
  String? fcm;
  String? permission;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.image,
    this.password,
    this.dob,
    this.gender,
    this.fcm,
    this.permission,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    image = json['image'] != null ? ImageModel.fromJson(json['image']) : null;
    password = json['password'];
    dob = json['dob'];
    gender = json['gender'];
    fcm = json['fcm'];
    permission = json['permission'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    json['id'] = id;
    json['name'] = name;
    json['email'] = email;
    json['image'] = image != null ? image!.toJson() : null;
    json['password'] = password;
    json['dob'] = dob;
    json['gender'] = gender;
    json['fcm'] = fcm;
    json['permission'] = permission;
    return json;
  }
}
