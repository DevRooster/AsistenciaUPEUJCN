import 'package:asistencia_upeu/modelo/ActividadModeloFire.dart';
import 'package:asistencia_upeu/repository/actividadFireRepository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'actividad_event.dart';
part 'actividad_state.dart';

class ActividadBloc extends Bloc<ActividadEvent, ActividadState> {

  late final ActividadFireRepository _actividadFireRepository;

  ActividadBloc(this._actividadFireRepository) : super(ActividadInitialState()) {
    on<ActividadEvent>((event, emit) async{

      // TODO: implement event handler

      print("Bloc x");
      if(event is ListarActividadEvent){
        emit(ActividadLoadingState());
        try{
          print("pasox!!");
          List<ActividadModeloFire> PersonaList= await _actividadFireRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        } catch(e){
          emit(ActividadError(e as Error)) ;
        }
      }else if(event is DeleteActividadEvent){
        try{
          await _actividadFireRepository.deleteActividad(event.actividad!.id);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadFireRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }else if(event is CreateActividadEvent){
        try{
          await _actividadFireRepository.createActividad(event.actividad!);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadFireRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }else if(event is UpdateActividadEvent){
        try{
          await _actividadFireRepository.updateActividad(event.actividad!.id, event.actividad!);
          emit(ActividadLoadingState());
          List<ActividadModeloFire> PersonaList= await _actividadFireRepository.getActividad();
          emit(ActividadLoadedState(PersonaList));
        }catch(e){
          emit(ActividadError(e as Error));
        }
      }




    });
  }
}
