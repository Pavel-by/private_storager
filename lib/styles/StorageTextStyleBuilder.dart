import 'package:flutter/material.dart';

import 'Style.dart';

class StorageTextStyle {
  const StorageTextStyle();

  get base => StorageTextStyleBuilder.base();
  get sectionHeader => StorageTextStyleBuilder.sectionHeader();
}

class StorageTextStyleBuilder {
  static TextStyle _base = TextStyle(
    fontFamily: "Georgia",
  );

  static TextStyle _sectionHeader = _base.copyWith(
    fontSize: 20,
    color: Style.color.textTitle,
  );

  final TextStyle style;

  StorageTextStyleBuilder(this.style);

  factory StorageTextStyleBuilder.base() => StorageTextStyleBuilder(_base);

  factory StorageTextStyleBuilder.sectionHeader() =>
      StorageTextStyleBuilder(_sectionHeader);


}
