class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assigment = [
  AssignmentData("Mobile Development", "Couroutines", "2023/05/5", "2023/5/20",
      "Submitted"),
  AssignmentData("Web development", "Angular", " 5 April 2023", "21 April 2023",
      "Pending"),
  AssignmentData(
      "Machine learning ", "Python", "2 Feb 2023", " 15 Feb 2023", "Pending"),
  AssignmentData(
      "Cyber Security", "Linux", "20 Mai 2023", "30 Mai 2023", "Pending"),
];
