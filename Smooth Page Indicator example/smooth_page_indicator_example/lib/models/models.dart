class Models {
  String imgAssetAddress;
  String city;
  String description;

  Models({
    required this.city,
    required this.description,
    required this.imgAssetAddress,
  });
}

List<Models> models = [
  Models(
    city: "Paris",
    description:
        "Paris (French pronunciation: ​[paʁi] (audio speaker iconlisten)) is the capital and most populous city of France, with an estimated\n...",
    imgAssetAddress: "assets/images/paris.jpg",
  ),
  Models(
    city: "London",
    description:
        "London is the capital and largest city of England and the United Kingdom. It stands on the River Thames in south-east England at\n...",
    imgAssetAddress: "assets/images/london.jpg",
  ),
  Models(
    city: "Thailand",
    description:
        "Thailand (Thai: ประเทศไทย),[a] historically known as Siam,[b] officially the Kingdom of \n...",
    imgAssetAddress: "assets/images/th.jpg",
  ),
  Models(
    city: "Brazil",
    description:
        "Brazil (Portuguese: Brasil; Brazilian Portuguese: [bɾaˈziw]),[nt 4] officially the Federative Republic of Brazil (Portuguese\n...",
    imgAssetAddress: "assets/images/brazil.jpg",
  ),
  
];
