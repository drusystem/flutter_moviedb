import 'package:flutter_cinema_app/domain/entities/actor.dart';
import 'package:flutter_cinema_app/infrastructure/models/moviedb/credits_response.dart';

class ActorMapper {
  static Actor castToEntity(Cast cast) =>
      Actor(
        id: cast.id, 
        name: cast.name, 
        profilePath: cast.profilePath !=null
          ?'https://image.tmdb.org/t/p/w500${cast.profilePath}'
          :'https://us.123rf.com/450wm/apoev/apoev2107/apoev210700059/171660361-default-avatar-photo-placeholder-gray-profile-picture-icon-man-in-t-shirt.jpg' , 
        character: cast.character
      );
}
