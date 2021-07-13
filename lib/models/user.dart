class User{
  int? id;
  String? email, name, image;

 User({required this.id, required this.image, required this.name, required this.email});
    User.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.email = json['email'];
      this.name = "${json['first_name']} ${json['last_name']}";
      this.image = json['avatar'];
    }
}