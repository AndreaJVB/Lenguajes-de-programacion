void main() {
  Tarea tarea1 = Tarea('Estudiar', 'Programacion', false);
  Tarea tarea2 = Tarea('Tarea a Realizar', 'Hacer ejercicios del capitulo 2', true);
  Tarea listaTarea = Tarea.tareasLista([tarea1, tarea2],);
  
 
  listaTarea.verLista();
  
  //probando metodo cambio de estado
  listaTarea.cambiarEstado(tarea2);
  listaTarea.verLista();
  
  //probando metodo agregar
  Tarea tarea3 = Tarea('Examen', 'Realizar examen proximo', false);
  listaTarea.agregarTarea(tarea3);
  listaTarea.verLista();
  
  //probando metodo eliminar
  listaTarea.eliminarTarea(tarea1);
  listaTarea.verLista();
  listaTarea.eliminarTarea(listaTarea.tareas[1]);
  listaTarea.verLista();
  
}

/******************************CLASE TAREA***********************************/
class Tarea {
  final String? titulo;
  final String? descripcion;
  bool? estado;
  List<Tarea> tareas = [];
//Constructor el cual se agraga el titulo descripcion y estado de cada tarea
  Tarea(this.titulo, this.descripcion, this.estado);
//Segundo constructor el cual se agregan las tareas creadas desde el primer constructor a la lista de tarea
  //al ser algunas propiedades finals entonces se inicializan en null para evitar errores
  Tarea.tareasLista(this.tareas)
      : titulo = null,
        descripcion = null,
        estado = null;

  //Metodo que permite ver la lista completa
  void verLista() {
    for (final Tarea tarea in tareas) {
        print("Titulo: ${tarea.titulo}, Descripcion: ${tarea.descripcion}, Estado: ${tarea.estado== true ? "completado":"incompleto"}");
    }
    print("");
  }
  //Metodo que nos permite agregar mas tareas
  void agregarTarea(Tarea tarea){
    this.tareas.add(tarea);
    print("Tarea Agregada con exito");
    print("");
  }
  //Metodo para eliminar una tarea
  void eliminarTarea(Tarea tarea){
    this.tareas.remove(tarea);
    print("Tarea Eliminada con exito");
    print("");
  }
  //Cambiar estado de la tarea
  void cambiarEstado(Tarea tarea){
    for(int i = 0; this.tareas.length > i; i++){
      if(this.tareas[i] == tarea){
        if(tarea.estado == true){
          tarea.estado = false;
        }else{
          tarea.estado = true;
        }
        this.tareas[i] = tarea;
      }
    }
    print("Tarea cambiada con exito");
    print("");
  }
}