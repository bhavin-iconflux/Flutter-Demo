class Data {
  int? id;
  String? title;
  String? year;
  String? genre;
  String? poster;

  Data({this.id, this.title, this.year, this.genre, this.poster});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    year = json['year'];
    genre = json['genre'];
    poster = json['poster'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['year'] = this.year;
    data['genre'] = this.genre;
    data['poster'] = this.poster;
    return data;
  }
}