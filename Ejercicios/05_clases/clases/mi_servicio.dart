class MiServicio {
  static final MiServicio _singleton = new MiServicio._();

  factory MiServicio() => _singleton;

  MiServicio._();

  String url = 'https://abc';
  String key = '12345';
}
