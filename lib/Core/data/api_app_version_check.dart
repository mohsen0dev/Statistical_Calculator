import 'package:dio/dio.dart';

class HttpClient {
  static Dio instance = Dio();
}

class ApiService {}

Future<List<AppVersionCode>> getAppVersionCode() async {
  final response = await HttpClient.instance.get('##');
  print(response.data.toString());
  final List<AppVersionCode> students = [];
  if (response.data is List<dynamic>) {
    (response.data as List<dynamic>).forEach((element) {
      students.add(AppVersionCode.fromJson(element));
    });
  }
  return students;
}

class AppVersionCode {
  // final String? type;
  // final String? message;
  final ReleaseData? release;

  AppVersionCode({this.release});

  factory AppVersionCode.fromJson(Map<String, dynamic> json) {
    return AppVersionCode(
      // type: json['type'],
      // message: json['message'],
      release: ReleaseData.fromJson(json['release']),
    );
  }
}

class ReleaseData {
  // final String? creationDate;
  final List<Package>? packages;
  // final bool? autoPublish;
  // final int? stagedRolloutPercentage;
  // final String? changelogFa;
  // final String? changelogEn;

  ReleaseData({
    // this.creationDate,
    this.packages,
    // this.autoPublish,
    // this.stagedRolloutPercentage,
    // this.changelogFa,
    // this.changelogEn
  });

  factory ReleaseData.fromJson(Map<String, dynamic> json) {
    return ReleaseData(
      // creationDate: json['creation_date'],
      packages:
          List<Package>.from(json['packages'].map((x) => Package.fromJson(x))),
      // autoPublish: json['auto_publish'],
      // stagedRolloutPercentage: json['staged_rollout_percentage'],
      // changelogFa: json['changelog_fa'],
      // changelogEn: json['changelog_en'],
    );
  }
}

class Package {
  // final List<dynamic>? additionalFiles;
  // final int? apkSize;
  // final String? sha1Hash;
  final int? versionCode;
  final String? versionName;
  // final int? apiLevel;
  // final int? targetApiLevel;
  // final String? uploadDate;
  // final String? cpuArchitectures;
  // final int? dpi;
  // final String? locale;

  Package({
    //   this.additionalFiles,
    // this.apkSize,
    // this.sha1Hash,
    this.versionCode,
    this.versionName,
    // this.apiLevel,
    // this.targetApiLevel,
    // this.uploadDate,
    // this.cpuArchitectures,
    // this.dpi,
    // this.locale
  });

  factory Package.fromJson(Map<String, dynamic> json) {
    return Package(
      // additionalFiles: json['additional_files'],
      // apkSize: json['apk_size'],
      // sha1Hash: json['sha1_hash'],
      versionCode: json['version_code'],
      versionName: json['version_name'],
      // apiLevel: json['api_level'],
      // targetApiLevel: json['target_api_level'],
      // uploadDate: json['upload_date'],
      // cpuArchitectures: json['cpu_architectures'],
      // dpi: json['dpi'],
      // locale: json['locale'],
    );
  }
}
