import 'package:flutter/material.dart';

class Environment {
  const Environment._();

  static const String development = 'development';
  static const String staging = 'staging';
  static const String production = 'production';
  static const String test = 'test';
}

class ImageConstant {
  // Image folder path
  static String imagePath = 'assets/images';
  static String imageNavPath = 'assets/images/nav';

  static String imgThumbsUp = '$imagePath/img_thumbs_up.svg';

  // Common images
  static String imgEmail = '$imagePath/img_email.svg';

  static String imgPassword = '$imagePath/img_password.svg';

  static String imgArrowDown = '$imagePath/img_arrow_down.svg';

  static String imgArrowDownBlueGray = '$imagePath/img_arrowdown_blue_gray_700.svg';

  static String imgNotification = '$imagePath/img_notification.svg';

  static String imageNotFound = 'assets/images/image_not_found.png';

  static String imgRectangle67 = '$imagePath/img_rectangle_67.png';

  static String imgAvatar47x47 = '$imagePath/img_avatar_47x47.png';

  static String imgMasterCard = '$imagePath/img_master_card.svg';

  static String imgRectangle67133x251 =
      '$imagePath/img_rectangle_67_133x251.png';

  static String imgAvatar = '$imagePath/img_avatar.png';

  static String imgRaisedAmount = '$imagePath/img_raised_amount.svg';

  static String imgRating = '$imagePath/img_rating.svg';

  static String imgChat = '$imagePath/img_chat.svg';

  // Nav item
  static String navHome = '$imageNavPath/home.svg';
  static String navDashboard = '$imageNavPath/dashboard.svg';
  static String navCampaign = '$imageNavPath/campaign.svg';
  static String navSetting = '$imageNavPath/setting.svg';
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
