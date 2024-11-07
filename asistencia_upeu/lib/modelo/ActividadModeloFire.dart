import 'package:flutter/material.dart';

@immutable
class ActividadModeloFire {
  final String id;
  final String nombreActividad;
  final String fecha;
  final String horai;
  final String minToler;
  final String latitud;
  final String longitud;
  final String estado;
  final String evaluar;
  final String userCreate;
  final String mater;
  final String validInsc;
  final String asisSubact;
  final String entsal;
  final String offlinex;

  // Constructor principal
  ActividadModeloFire({
    required this.id,
    required this.nombreActividad,
    required this.fecha,
    required this.horai,
    required this.minToler,
    required this.latitud,
    required this.longitud,
    required this.estado,
    required this.evaluar,
    required this.userCreate,
    required this.mater,
    required this.validInsc,
    required this.asisSubact,
    required this.entsal,
    required this.offlinex,
  });

  // Constructor vacío o por defecto
  ActividadModeloFire.unlaunched()
      : id = "",
        nombreActividad = "",
        fecha = "",
        horai = "",
        minToler = "",
        latitud = "",
        longitud = "",
        estado = "",
        evaluar = "",
        userCreate = "",
        mater = "",
        validInsc = "",
        asisSubact = "",
        entsal = "",
        offlinex = "";

  // Constructor fromJson
  factory ActividadModeloFire.fromJson(Map<String, dynamic> json) {
    return ActividadModeloFire(
      id: json['id'] ?? "",
      nombreActividad: json['nombreActividad'] ?? "",
      fecha: json['fecha'] ?? "",
      horai: json['horai'] ?? "",
      minToler: json['minToler'] ?? "",
      latitud: json['latitud'] ?? "",
      longitud: json['longitud'] ?? "",
      estado: json['estado'] ?? "",
      evaluar: json['evaluar'] ?? "",
      userCreate: json['userCreate'] ?? "",
      mater: json['mater'] ?? "",
      validInsc: json['validInsc'] ?? "",
      asisSubact: json['asisSubact'] ?? "",
      entsal: json['entsal'] ?? "",
      offlinex: json['offlinex'] ?? "",
    );
  }

  // Método toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombreActividad': nombreActividad,
      'fecha': fecha,
      'horai': horai,
      'minToler': minToler,
      'latitud': latitud,
      'longitud': longitud,
      'estado': estado,
      'evaluar': evaluar,
      'userCreate': userCreate,
      'mater': mater,
      'validInsc': validInsc,
      'asisSubact': asisSubact,
      'entsal': entsal,
      'offlinex': offlinex,
    };
  }

  // Método toMap
  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'nombreActividad': this.nombreActividad,
      'fecha': this.fecha,
      'horai': this.horai,
      'minToler': this.minToler,
      'latitud': this.latitud,
      'longitud': this.longitud,
      'estado': this.estado,
      'evaluar': this.evaluar,
      'userCreate': this.userCreate,
      'mater': this.mater,
      'validInsc': this.validInsc,
      'asisSubact': this.asisSubact,
      'entsal': this.entsal,
      'offlinex': this.offlinex,
    };
  }
}