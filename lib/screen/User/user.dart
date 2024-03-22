class User {
  User({
    required this.name,
    required this.email,
    required this.designation,
  });

  final String name;
  final String email;
  final String designation;

  static List<User> getAllUsers() {
    return [
      User(name: 'sk', email: 'sk@gmail.com', designation: 'Mobile Developer'),
      User(name: 'john', email: 'john@gmail.com', designation: 'Web Developer'),
      User(name: 'jane', email: 'jane@gmail.com', designation: 'UI/UX Designer'),
      User(name: 'suja', email: 'suja@gmail.com', designation: 'Mobile Developer'),
      User(name: 'kamal', email: 'kamal@gmail.com', designation: 'Web Developer'),
      User(name: 'kapil', email: 'kapil@gmail.com', designation: 'UI/UX Designer'),
    ];
  }
}