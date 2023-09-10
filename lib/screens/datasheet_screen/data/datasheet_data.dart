class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  // nhebik ye Intaaf behi !!!

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(2023, "April", "Android develoment ", "Monday", "00.01"),
  DataSheet(2021, "Febrary", "Web develoment ", "Monday", "13.00"),
  DataSheet(2022, "Juin", "Machine Learning ", "Saturday", "10.30"),
  DataSheet(2016, "September", "Cyber Security", "Thuesday", "13.01"),
  DataSheet(2018, "October", "Trading", "Sunday", "12.00"),
  DataSheet(2010, "May", "Data Science", "Wednesday", "09.45"),
  DataSheet(2023, "July", "Frontend Development", "Friday", "14.30"),
  DataSheet(2021, "August", "Backend Development", "Thursday", "11.15"),
];
