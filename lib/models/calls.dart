enum CallType { video, audio }
enum CallStatus { missed, called }

class Calls {
  final String name, time, image;
  final CallType callType;
  final bool isActive;
  final CallStatus callStatus;
  Calls(
      {this.name = '',
      this.time = '',
      this.image = '',
      this.isActive = true,
      this.callType = CallType.audio,
      this.callStatus = CallStatus.called});
}

List<Calls> callsData = [
  Calls(
      name: "Jenny Wilson",
      time: "3m ago",
      image: "assets/images/user.png",
      callType: CallType.audio,
      isActive: true,
      callStatus: CallStatus.called),
  Calls(
      name: "Esther Howard",
      time: "5m ago",
      image: "assets/images/user_2.png",
      callType: CallType.video,
      isActive: false,
      callStatus: CallStatus.missed),
  Calls(
      name: "Ralph Edwards",
      time: "10m ago",
      image: "assets/images/user_3.png",
      callType: CallType.audio,
      isActive: false,
      callStatus: CallStatus.missed),
  Calls(
      name: "Jacob Jones",
      time: "2d ago",
      image: "assets/images/user_4.png",
      callType: CallType.video,
      isActive: true,
      callStatus: CallStatus.called),
  Calls(
      name: "Albert Flores",
      time: "5d ago",
      image: "assets/images/user_5.png",
      callType: CallType.audio,
      isActive: true,
      callStatus: CallStatus.called),
  Calls(
      name: "Jenny Wilson",
      time: "18m ago.",
      image: "assets/images/user.png",
      callType: CallType.video,
      isActive: true,
      callStatus: CallStatus.called),
  Calls(
      name: "Esther Howard",
      time: "18m ago",
      image: "assets/images/user_2.png",
      callType: CallType.audio,
      isActive: true,
      callStatus: CallStatus.called),
  Calls(
      name: "Ralph Edwards",
      time: "18m ago",
      image: "assets/images/user_3.png",
      callType: CallType.audio,
      isActive: true,
      callStatus: CallStatus.called),
];
