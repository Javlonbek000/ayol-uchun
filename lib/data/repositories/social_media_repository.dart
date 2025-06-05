import 'package:ayol_uchun/core/client.dart';
import 'package:ayol_uchun/data/models/social_media/social_media_model.dart';

class SocialMediaRepository {
  final ApiClient client;

  SocialMediaRepository({required this.client});

  Future<List<SocialMediaModel>> getSocialMedias() async {
    final rawSocialMedia = await client.genericGetRequest<List<dynamic>>(
      '/social-accounts/list',
    );
    return rawSocialMedia
        .map((social) => SocialMediaModel.fromJson(social))
        .toList();
  }
}
