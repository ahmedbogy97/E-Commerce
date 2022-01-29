class CategoryModel {
  int? _id;
  String? _image;
  String? _name;

  CategoryModel(this._id, this._name, this._image,);

  String? get name => _name;

  String? get image => _image;

  int? get id => _id;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _image = json['avatar'];
  }
}


