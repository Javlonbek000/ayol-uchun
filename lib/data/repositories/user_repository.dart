import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/user/me/me_model.dart';

class UserRepository {
  final ApiClient client;

  UserRepository({required this.client});

  Future<MeModel?> getMyInformation() async {
    var me = await client.genericGetRequest<Map<String,dynamic>>('/auth/me');
    return MeModel.fromJson(me);
  }
}