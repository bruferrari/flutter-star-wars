class Movie {
  final String title;
  final String releaseDate;
  final int episodeId;

  Movie({this.title, this.episodeId, this.releaseDate});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      releaseDate: json['release_date'],
      episodeId: json['episode_id']
    );
  }
}