class Unreadmessages {
  String? name;
  String? message;
  String? image;
  dynamic time;
  Unreadmessages(
      {required this.name,
        required this.message,
        required this.image,
        required this.time});
}

List<Unreadmessages> unreadmessageslist = [
  Unreadmessages(
      name: 'Twitter',
      message: 'Here is the link: http://zoom.com/',
      image: 'assets/images/twiter.png',
      time: '12.39'),
  Unreadmessages(
      name: 'Gojek Indonesia',
      message: 'Lets keep in touch.',
      image: 'assets/images/twiter.png',
      time: ' 12.39'),
  Unreadmessages(
      name: 'Dana',
      message: 'Thank you for your attention!',
      image: 'assets/images/twiter.png',
      time: 'Yesterday'),
];