import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class Music extends Equatable {
  final String title;
  final String artist;
  final String imageUrl;
  final String duration;

  const Music({
    @required this.title,
    @required this.artist,
    @required this.imageUrl,
    @required this.duration,
  });
  @override
  List<Object> get props => [
        title,
        artist,
        imageUrl,
        duration,
      ];

  @override
  bool get stringify => true;
}
