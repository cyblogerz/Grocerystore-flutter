class StoryViewModel {
  final String name;
  final String img;

  StoryViewModel({required this.name, required this.img});
}

List<StoryViewModel> StoryViewData = [
  StoryViewModel(name: "Vegetables", img: "images/veg.jpg"),
  StoryViewModel(name: "Fruits", img: "images/fruit.jpg"),
  StoryViewModel(name: "Diary", img: "images/diary.jpg"),
  StoryViewModel(name: "Seafood", img: "images/seafood.jpg"),
  StoryViewModel(name: "Bakery", img: "images/bakery.jpg"),
];
