class Tarea {
  String _titulo;

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }
  String _descripcion;

  String get descripcion => _descripcion;

  set descripcion(String value) {
    _descripcion = value;
  }

  Tarea({required String titulo, required String descripcion}) : _descripcion = descripcion, _titulo = titulo;
  

  
}
