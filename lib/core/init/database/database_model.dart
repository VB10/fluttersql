abstract class DatabaseModel<T> {
  T fromJson(Map<String, dynamic> json);
  Map<String, Object> toJson();
}
