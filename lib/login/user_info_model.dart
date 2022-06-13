import 'package:json_annotation/json_annotation.dart';

part 'user_info_model.g.dart';


@JsonSerializable()
class UserInfoModel extends Object {

  @JsonKey(name: 'userId')
  int userId;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'avatarUrl')
  String avatarUrl;

  UserInfoModel(this.userId,this.name,this.avatarUrl,);

  factory UserInfoModel.fromJson(Map<String, dynamic> srcJson) => _$UserInfoModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$UserInfoModelToJson(this);
}