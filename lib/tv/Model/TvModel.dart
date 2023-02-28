class TvModel {
  String? tvg_id;
  String? tvg_name;
  String? tvg_logo;
  String? group_title;

  TvModel({
    this.tvg_id,
    this.tvg_name,
    this.tvg_logo,
    this.group_title,
  });

  TvModel.fromJson(Map<String, dynamic> json) {
    tvg_id = json['tvg_id'];
    tvg_name = json['tvg-name'];
    tvg_logo = json['tvg-logo'];
    group_title = json['group-title'];
  }
}
