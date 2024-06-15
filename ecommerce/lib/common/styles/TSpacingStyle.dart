import 'package:ecommerce/utills/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class TSpacingStyel{
  static const EdgeInsetsGeometry paddingWithAppBarHeight=EdgeInsets.only(
    top:TSize.appBarHeight,
    left:TSize.defaultSpace,
    bottom: TSize.defaultSpace,
    right: TSize.defaultSpace,
  );
}