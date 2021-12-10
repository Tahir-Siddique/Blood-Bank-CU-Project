class WalkthroughModel {
  String ImagePath, title, description;

  WalkthroughModel({this.ImagePath, this.title, this.description});

  void setImagePath(String getImagePath) {
    ImagePath = getImagePath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImagePath() {
    return ImagePath;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

List<WalkthroughModel> getWalkThroughScreen() {
  List<WalkthroughModel> slider = new List<WalkthroughModel>();
  WalkthroughModel walkthroughModel = new WalkthroughModel();
  // 1
  walkthroughModel.setImagePath("assets/login.png");
  walkthroughModel.setTitle("Authentication");
  walkthroughModel.setDescription("Safe and secure authentication");
  slider.add(walkthroughModel);
  walkthroughModel = new WalkthroughModel();

  // 2
  walkthroughModel.setImagePath("assets/search.png");
  walkthroughModel.setTitle("Search");
  walkthroughModel.setDescription("Search Donar near you in case of emergency");
  slider.add(walkthroughModel);
  walkthroughModel = new WalkthroughModel();
  // 3
  walkthroughModel.setImagePath("assets/share.png");
  walkthroughModel.setTitle("Share");
  walkthroughModel
      .setDescription("Sharing is always good so share this to your relatives");
  slider.add(walkthroughModel);
  walkthroughModel = new WalkthroughModel();
  // 4
  walkthroughModel.setImagePath("assets/medicine.png");
  walkthroughModel.setTitle("Donate");
  walkthroughModel.setDescription("Donate to individual cases in one step");
  slider.add(walkthroughModel);

  walkthroughModel = new WalkthroughModel();

  // 5
  walkthroughModel.setImagePath("assets/hospital.png");
  walkthroughModel.setTitle("Hospital?Manage Donation");
  walkthroughModel
      .setDescription("Donate to hospital and blood bank in one step");
  slider.add(walkthroughModel);

  return slider;
}
