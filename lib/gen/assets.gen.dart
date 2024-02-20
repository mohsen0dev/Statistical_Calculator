/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  $AssetsFontsInterfontsGen get interfonts => const $AssetsFontsInterfontsGen();
  $AssetsFontsVazirfontsGen get vazirfonts => const $AssetsFontsVazirfontsGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo_dark.png
  AssetGenImage get logoDark =>
      const AssetGenImage('assets/images/logo_dark.png');

  /// File path: assets/images/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/logo_white.png');

  /// List of all assets
  List<AssetGenImage> get values => [logoDark, logoWhite];
}

class $AssetsJsonimagesGen {
  const $AssetsJsonimagesGen();

  /// File path: assets/jsonimages/Animation1.json
  String get animation1 => 'assets/jsonimages/Animation1.json';

  /// List of all assets
  List<String> get values => [animation1];
}

class $AssetsFontsInterfontsGen {
  const $AssetsFontsInterfontsGen();

  /// File path: assets/fonts/interfonts/Inter-Black.ttf
  String get interBlack => 'assets/fonts/interfonts/Inter-Black.ttf';

  /// File path: assets/fonts/interfonts/Inter-Bold.ttf
  String get interBold => 'assets/fonts/interfonts/Inter-Bold.ttf';

  /// File path: assets/fonts/interfonts/Inter-ExtraBold.ttf
  String get interExtraBold => 'assets/fonts/interfonts/Inter-ExtraBold.ttf';

  /// File path: assets/fonts/interfonts/Inter-ExtraLight.ttf
  String get interExtraLight => 'assets/fonts/interfonts/Inter-ExtraLight.ttf';

  /// File path: assets/fonts/interfonts/Inter-Light.ttf
  String get interLight => 'assets/fonts/interfonts/Inter-Light.ttf';

  /// File path: assets/fonts/interfonts/Inter-Medium.ttf
  String get interMedium => 'assets/fonts/interfonts/Inter-Medium.ttf';

  /// File path: assets/fonts/interfonts/Inter-Regular.ttf
  String get interRegular => 'assets/fonts/interfonts/Inter-Regular.ttf';

  /// File path: assets/fonts/interfonts/Inter-SemiBold.ttf
  String get interSemiBold => 'assets/fonts/interfonts/Inter-SemiBold.ttf';

  /// File path: assets/fonts/interfonts/Inter-Thin.ttf
  String get interThin => 'assets/fonts/interfonts/Inter-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        interBlack,
        interBold,
        interExtraBold,
        interExtraLight,
        interLight,
        interMedium,
        interRegular,
        interSemiBold,
        interThin
      ];
}

class $AssetsFontsVazirfontsGen {
  const $AssetsFontsVazirfontsGen();

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Black.ttf
  String get vazirmatnBlack => 'assets/fonts/vazirfonts/Vazirmatn-Black.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Bold.ttf
  String get vazirmatnBold => 'assets/fonts/vazirfonts/Vazirmatn-Bold.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-ExtraBold.ttf
  String get vazirmatnExtraBold =>
      'assets/fonts/vazirfonts/Vazirmatn-ExtraBold.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-ExtraLight.ttf
  String get vazirmatnExtraLight =>
      'assets/fonts/vazirfonts/Vazirmatn-ExtraLight.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Light.ttf
  String get vazirmatnLight => 'assets/fonts/vazirfonts/Vazirmatn-Light.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Medium.ttf
  String get vazirmatnMedium => 'assets/fonts/vazirfonts/Vazirmatn-Medium.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Regular.ttf
  String get vazirmatnRegular =>
      'assets/fonts/vazirfonts/Vazirmatn-Regular.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-SemiBold.ttf
  String get vazirmatnSemiBold =>
      'assets/fonts/vazirfonts/Vazirmatn-SemiBold.ttf';

  /// File path: assets/fonts/vazirfonts/Vazirmatn-Thin.ttf
  String get vazirmatnThin => 'assets/fonts/vazirfonts/Vazirmatn-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        vazirmatnBlack,
        vazirmatnBold,
        vazirmatnExtraBold,
        vazirmatnExtraLight,
        vazirmatnLight,
        vazirmatnMedium,
        vazirmatnRegular,
        vazirmatnSemiBold,
        vazirmatnThin
      ];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsJsonimagesGen jsonimages = $AssetsJsonimagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
