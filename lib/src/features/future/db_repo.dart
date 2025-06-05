class AppUser {
  final String name;
  final int age;

  const AppUser({
    required this.name,
    required this.age,
  });
}

abstract class DbRepository {
  void updateUserName(String newName) {}
}

class MyDbRepository extends DbRepository {
  @override
  void updateUserName(String newName) {
    // Custom implementation for MyDbRepository
  }
}
