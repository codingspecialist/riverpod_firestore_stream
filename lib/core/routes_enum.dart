enum Routes {
  login("/login"),
  join("/join"),
  home("/home");

  final String path;

  const Routes(this.path);
}
