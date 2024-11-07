import 'dart:async'; // Asegúrate de que este archivo exista
import 'package:asistencia_upeu/modelo/ActividadModeloFire.dart';
import 'package:asistencia_upeu/util/NetworConnection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActividadFireRepository {
  // Referencia a la colección de Firebase
  final CollectionReference db = FirebaseFirestore.instance.collection("actividad");

  // Obtener todas las actividades
  Future<List<ActividadModeloFire>> getActividad() async {
    if (await isConected()) { // Comprobamos si hay conexión a internet
      try {
        var data = await db.get();  // Obtener todos los documentos de la colección
        var actividad = data.docs.map((d) {
          // Firebase ya devuelve un Map<String, dynamic>, por lo que no necesitas decodificar
          ActividadModeloFire eventData = ActividadModeloFire.fromJson(d.data() as Map<String, dynamic>);
          eventData.id = d.id; // Asignar el ID del documento de Firebase
          print("Data ${eventData.id}");
          return eventData;
        }).toList();
        return actividad;
      } catch (e) {
        print("Error al obtener actividades: $e");
        return []; // Retorna una lista vacía en caso de error
      }
    } else {
      print('No hay conexión a internet');
      return []; // Retorna una lista vacía si no hay conexión
    }
  }

  // Crear una nueva actividad
  Future<void> createActividad(ActividadModeloFire actividad) async {
    if (await isConected()) {  // Verificamos la conexión
      try {
        await db.add(actividad.toMap());  // Crear un nuevo documento en Firebase
        print("Actividad creada con éxito");
      } catch (onError) {
        print("Error al crear actividad: $onError");
      }
    } else {
      print('No hay conexión a internet');
    }
  }

  // Eliminar una actividad por ID
  Future<void> deleteActividad(String id) async {
    if (await isConected()) {  // Comprobamos si hay conexión
      try {
        await db.doc(id).delete();  // Eliminar el documento con el ID proporcionado
        print("Actividad eliminada con éxito");
      } catch (error) {
        print("Error al eliminar actividad: $error");
      }
    } else {
      print('No hay conexión a internet');
    }
  }

  // Buscar una actividad por ID
  Future<ActividadModeloFire?> buscarActividad(String id) async {
    if (await isConected()) {  // Verificamos la conexión
      try {
        var data = await db.doc(id).get();  // Obtener el documento con el ID proporcionado
        if (data.exists) {
          return ActividadModeloFire.fromJson(data.data() as Map<String, dynamic>);  // Devolver el modelo con los datos de Firebase
        } else {
          print("Actividad no encontrada");
          return null;  // Si no existe el documento, retornar null
        }
      } catch (e) {
        print("Error al buscar actividad: $e");
        return null;  // En caso de error, retornar null
      }
    } else {
      print('No hay conexión a internet');
      return null;  // Si no hay conexión, retornar null
    }
  }

  // Actualizar una actividad
  Future<void> updateActividad(String id, ActividadModeloFire actividad) async {
    if (await isConected()) {  // Comprobamos si hay conexión a internet
      try {
        await db.doc(id).update(actividad.toMap());  // Actualizar el documento con el ID proporcionado
        print("Actividad actualizada con éxito");
      } catch (error) {
        print("Error al actualizar actividad: $error");
      }
    } else {
      print('No hay conexión a internet');
    }
  }
}