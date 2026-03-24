//Sergio: Esta tabla se reutiliza dos veces en contenido.typ, entonces para evitar redundancia la he creado aquí para, con solo llamarla, hacer que se muestre en el documento.
//Cambiar número de página que aparecen en la tabla, intentar hacer que se actualicen solos
#let tabla_resumen_fases_obra() = table(
  columns: 5, 
  table.header([FASE DE OBRA], [APDO. Y PAG. PSS], [MAQUINARIA], [APDO. Y PAG. PSS], [RECURSO PREVENTIVO]),
  [ACTUACIONES PREVIAS], [4.1.1 FASE 1 (PÁG. 17)], [PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO /], [],[Sí],
  [EJECUCIÓN DE LA ESTRUCTURA DE SOPORTES DE MÓDULOS Y MONTAJE DE LOS MÓDULOS FV Y COMBINER BOX], [4.1.2 FASE 2 (PÁG. 18)], [EQUIPO DE ELEVACIÓN: CAMIÓN GRÚA EQUIPO DE SOLDADURA ELÉCTRICA], [8.3 CAMIÓN GRÚA 8.1/8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS (PÁG. 50-52)], [Sí],
  [EJECUCIÓN DE CANALIZACIONES Y PEQUEÑOS TRABAJOS DE ALBAÑILERÍA], [4.1.3 FASE 3 (PÁG. 19)], [PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / PLATAFORMA CON CESTILLO], [8.1 / 8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / 8.6 PLATAFORMA ELEVADORA (PÁG. 50/51/58)], [Sí],
  [MONTAJE DE INVERSORES Y EJECUCIÓN DE LA INSTALACIÓN ELÉCTRICA], [4.1.4 FASE 4 (PÁG. 19)], [PEQUEÑAS HERRAMINETAS ELÉCTRICAS / DE MANO], [8.1 / 8.2 PEQUEÑAS HERRAMINETAS ELÉCTRICAS / DE MANO (PÁG. 50/51)], [Sí],
  [PUESTA EN MARCHA DE LA INSTALACIÓN Y MONITORIZACIÓN], [4.1.5 FASE 5 (PÁG. 19)], [], [], [Sí],
)


#let tabla-riesgos(titulo, filas) = [
  #strong(titulo)

  #table(
    columns: (auto, auto, auto, auto),
    table.header(
      [Tipo], [Riesgo], [Tareas], [Señal]
    ),
    ..filas
      .map(f => (
        [#f.tipo],
        [#f.riesgo],
        [#f.tareas],
        [#image(f.senal)],
      ))
      .flatten()
  )
]
//Los puntos antes de "filas.map" sirven para expandir la lista dentro de la tabla como si lo hubiera escrito a mano. Escribe automáticamente tantas filas como datos haya en data.jason, evitando tener que escribir a mano cada fila, facilitando la modificación de la misma.
//"map" crea un array de arrays, y table no entiende ese contenido, tenemos que separarlo en los array individuales, y eso lo hacemos con "flatten".


