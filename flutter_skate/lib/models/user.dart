
class UserModel {
  String title;
  String desc;
  String img;
  bool isActive;

  UserModel({
    this.title,
    this.desc,
    this.img,
    this.isActive
  });

}

List<UserModel> users = [
   UserModel(
    title: "@seteales",
    desc: "Los Angeles, United States",
    img: "assets/images/1.jpg",
    isActive: false
  ),
  UserModel(
    title: "@kfred",
    desc: "New York, United States",
    img: "assets/images/2.jpg",
    isActive: true
  ),
  UserModel(
    title: "@jeffreym",
    desc: "Los Angeles, United States",
    img: "assets/images/3.jpg",
    isActive: true
  ),
  UserModel(
    title: "@zacong",
    desc: "Los Angeles, United States",
    img: "assets/images/4.jpg",
    isActive: false
  )
];