import 'package:movie_app/common/screenutil/screenutil.dart';

extension SizeExtentions on double {

  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);
}