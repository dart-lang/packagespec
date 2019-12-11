// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// General superclass of most errors and exceptions thrown by this package.
///
/// Only covers errors thrown while parsing package configuration files.
/// Programming errors and I/O exceptions are not covered.
abstract class PackageConfigError {
  PackageConfigError._();
}

class PackageConfigArgumentError extends ArgumentError implements PackageConfigError {
  PackageConfigArgumentError(Object/*?*/ value, String name, String message)
      : super.value(value, name, message);
}

class PackageConfigFormatException extends FormatException implements PackageConfigError {
  PackageConfigFormatException(String message, Object/*?*/ value, [int /*?*/ index])
      : super(message, value, index);
}