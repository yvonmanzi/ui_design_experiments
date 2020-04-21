class User {
  String username;
  String password;

  User(this.username, this.password);

  Map<String, dynamic> toMap() {
    return {'username': username, 'password': password};
  }

  User.fromMap(dynamic o) {
    this.username = o['username'];
    this.password = o['password'];
  }
}
