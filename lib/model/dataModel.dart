import 'package:freezed_annotation/freezed_annotation.dart';
part 'dataModel.freezed.dart';
part 'dataModel.g.dart';
 @freezed


class ApiModel with _$ApiModel{
   const factory ApiModel({
    required int id,required int userId,required String body,required String title
   })= _ApiModel;
   
  factory ApiModel.fromJson(Map<String, dynamic> json) =>
      _$ApiModelFromJson(json);
  
   }