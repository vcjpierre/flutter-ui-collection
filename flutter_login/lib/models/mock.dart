
class DataModel {
  String title;
  String desc;
  String img;
  bool isActive;

  DataModel({
    this.title,
    this.desc,
    this.img,
    this.isActive
  });

}

List<DataModel> beaches = [

   DataModel(
    title: "Simply dummy",
    desc: "text of the printing",
    img: "assets/images/img_1.jpg",
    isActive: false
  ),
  DataModel(
    title: "Lorem Ipsum",
    desc: "Contrary to popular belief",
    img: "assets/images/img_2.jpg",
    isActive: true
  ),
  DataModel(
    title: "What is Lorem",
    desc: "Contrary to popular belief",
    img: "assets/images/img_3.jpg",
    isActive: true
  ),
  DataModel(
    title: "Where does it",
    desc: "Contrary to popular belief",
    img: "assets/images/img_4.jpg",
    isActive: false
  )

];