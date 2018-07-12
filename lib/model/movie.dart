class Movie {
  final String title;
  final String openingCrawl;
  final String director;
  final String producer;
  final String releaseDate;
  final int episodeId;

  Movie({
    this.title,
    this.episodeId,
    this.releaseDate,
    this.openingCrawl,
    this.director,
    this.producer
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      releaseDate: json['release_date'],
      episodeId: json['episode_id'],
      openingCrawl: json['opening_crawl'],
      director: json['director'],
      producer: json['producer']
    );
  }
}