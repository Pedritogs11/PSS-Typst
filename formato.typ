//Sergio: Esta tabla se reutiliza dos veces en contenido.typ, entonces para evitar redundancia la he creado aquí para, con solo llamarla, hacer que se muestre en el documento.
//Cambiar número de página que aparecen en la tabla, intentar hacer que se actualicen solos
#let tabla_resumen_fases_obra() = table(
  columns: 5, 
  table.header([Fase de obra], [Apdo. y pag. PSS], [Maquinaria], [Apdo. y pag. PSS], [Recurso preventivo]),
  [Actuaciones previas], [4.1.1 Fase 1 (Pág. 17)], [Pequeñas herramientas eléctricas / de mano /], [],[Sí],
  [Ejecución de la estructura de soportes de módulos y montaje de los módulos FV y combiner box], [4.1.2 FASE 2 (Pág. 18)], [Equipo de elevación: Camión grúa / Equipo de Soldadura eléctrica], [8.3 Camión grúa 8.1/8.2 Pequeñas herramientas eléctricas (Pág. 50-52)], [Sí],
  [Ejecución de canalizaciones y pequeños trabajos de albañilería], [4.1.3 Fase 3 (Pág. 19)], [Pequeñas herramientas eléctricas / de mano / Plataforma con cestillo], [8.1 / 8.2 Pequeñas herramientas eléctricas / de mano / 8.6 Plataforma elevadora (Pág. 50/51/58)], [Sí],
  [Montaje de inversores y ejecución de la instalación eléctrica], [4.1.4 Fase 4 (Pág. 19)], [Pequeñas herramientas eléctricas / de mano], [8.1 / 8.2 Pequeñas herramientas eléctricas / de mano (Pág. 50/51)], [Sí],
  [Puesta en marcha de la instalación y monitorización], [4.1.5 Fase 5 (Pág. 19)], [], [], [Sí],
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
//Los puntos antes de "filas.map" sirven para expandir la lista dentro de la tabla como si lo hubiera escrito a mano. Escribe automáticamente tantas filas como datos haya en data.jason, evitando tener que escribir a mano cada fila, facilitando la modificación de la tabla.
//"map" crea un array de arrays, y #table no entiende ese dato, tenemos que separarlo en los array individuales, y eso lo hacemos con "flatten".


