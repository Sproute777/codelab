class User {
  const User(this.id);
  final String id;

  static const empty = User('');

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
