class Chat {
  int id;
  String text;
  bool recieved;
  String timeStamp;
  Chat({
    required this.id,
    required this.text,
    required this.recieved,
    required this.timeStamp,
  });
}

List<Chat> chatMessages = [
  Chat(
      id: 0,
      text:
      'Hi Rafif!, Im Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.',
      recieved: true,
      timeStamp: '10:18'),
  Chat(
      id: 1,
      text: 'Hi Melan, thank you for considering me, this is good news for me.',
      recieved: true,
      timeStamp: '10:18'),
  Chat(
      id: 0,
      text: 'Can we have an interview via google meet call today at 3pm?',
      recieved: true,
      timeStamp: '10:18'),
  Chat(id: 1, text: 'Of course, I can!', recieved: true, timeStamp: '10:18'),
  Chat(
      id: 0,
      text:
      'Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! meet.google.com/dis-sxdu-ave',
      recieved: true,
      timeStamp: '10:18')
];