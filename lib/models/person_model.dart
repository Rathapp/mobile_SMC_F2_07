class Person {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String job;
  final String city;
  final String image;

  Person({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.job,
    required this.city,
    required this.image,
  });

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      job: json['job'],
      city: json['city'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'job': job,
      'city': city,
      'image': image,
    };
  }
}