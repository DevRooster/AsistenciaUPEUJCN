part of 'actividad_bloc.dart';

@immutable
sealed class ActividadEvent {}

class ListarActividadEvent extends ActividadEvent{
  ListarActividadEvent(){print("Evento si");}
//ListarActividadEvent({required ActividadModeloFire actividad}):super(actividad:actividad);
}

class DeleteActividadEvent extends ActividadEvent{
  ActividadModeloFire actividad;
  DeleteActividadEvent(this.actividad);
//DeleteActividadEvent({required ActividadModeloFire actividad}):super(actividad:actividad);
}

class UpdateActividadEvent extends ActividadEvent{
  ActividadModeloFire actividad;
  UpdateActividadEvent(this.actividad);
//UpdateActividadEvent({required ActividadModeloFire actividad}):super(actividad:actividad);
}

class CreateActividadEvent extends ActividadEvent{
  ActividadModeloFire actividad;
  CreateActividadEvent(this.actividad);
//CreateActividadEvent({required ActividadModeloFire actividad}):super(actividad:actividad);
}

