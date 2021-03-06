class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: "Brant Phelan",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user_1.png",
    time: "5min ago",
    isActive: false,
  ),
  Chat(
    name: "Hayden Gabbitas",
    lastMessage: "Hello friend! I am...",
    image: "assets/images/user_2.png",
    time: "5hr ago",
    isActive: true,
  ),
  Chat(
    name: "Eveline Tough",
    lastMessage: "Do you have update...",
    image: "assets/images/user_3.png",
    time: "1d ago",
    isActive: false,
  ),
  Chat(
    name: "Jazmin Chessum",
    lastMessage: "You’re welcome 😊",
    image: "assets/images/user_4.png",
    time: "2d ago",
    isActive: true,
  ),
  Chat(
    name: "Joshua Kenner",
    lastMessage: "Thanks",
    image: "assets/images/user_5.png",
    time: "3d ago",
    isActive: false,
  ),
  Chat(
    name: "Patrick Pitone",
    lastMessage: "Hope you are doing well...",
    image: "assets/images/user_6.png",
    time: "4d ago",
    isActive: false,
  ),
  Chat(
    name: "Carline Zipsell",
    lastMessage: "Hello friend! I am...",
    image: "assets/images/user_7.png",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "Vale Jerg",
    lastMessage: "Do you have update...",
    image: "assets/images/user_8.png",
    time: "6d ago",
    isActive: false,
  ),
];
