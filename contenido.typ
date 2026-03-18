// =======================
// VARIABLES DE LA PLANTILLA
// =======================

#let data = json("data.json")

// #show heading.where(level: 1): it => [
//   #pagebreak()
//   #it
//   #pagebreak()
// ]


// =======================
// DOCUMENTO
// =======================

*DATOS GENERALES*
#table(
  columns: 2,
  [DESCRIPCIÓN], [#data.proyecto.titulo],
  [PROMOTOR], [#data.promotor.nombre],
  [SITUACIÓN OBRA], [#data.proyecto.localizacion.situacion],
  [INSTALADORA], [#data.instaladora.representante, #data.instaladora.nombre],
  [AUTOR DEL PLAN DE SEGURIDAD Y SALUD], [#for (_, valor) in data.autor_pss [#valor \ ]],
  [DIRECCIÓN FACULTATIVA], [#for (_, valor) in data.direccion_facultativa [#valor \ ]],
  [COORDINADOR DE SEGURIDAD Y SALUD], [#for (_, valor) in data.coordinador_pss [#valor \ ]],
  [ENCARGADO DEL RECURSO PREVENTIVO], [#data.sys.encargado_recurso_preventivo]
)

*TABLA RESUMEN DE LAS FASES DE OBRA*

#table(
  columns: 5, 
  table.header([FASE DE OBRA], [APDO. Y \ PAG. PSS], [MAQUINARIA], [APDO. Y \ PAG. PSS], [RECURSO \ PREVENTIVO]),
  [ACTUACIONES \ PREVIAS], [4.1.1 FASE 1 \ (PÁG. 17)], [PEQUEÑAS \ HERRAMIENTAS \ ELÉCTRICAS \ / DE MANO /], [],[Sí],
  [EJECUCIÓN DE LA ESTRUCTURA DE SOPORTES DE MÓDULOS Y MONTAJE DE LOS MÓDULOS FV Y COMBINER BOX], [4.1.2 FASE 2 \ (PÁG. 18)], [EQUIPO DE \ ELEVACIÓN: \ CAMIÓN GRÚA EQUIPO DE SOLDADURA ELÉCTRICA], [8.3 CAMIÓN GRÚA \ 8.1/8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS \ (PÁG. 50-52)], [Sí],
  [EJECUCIÓN DE CANALIZACIONES Y PEQUEÑOS TRABAJOS DE ALBAÑILERÍA], [4.1.3 FASE 3 \ (PÁG. 19)], [PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / PLATAFORMA CON CESTILLO], [8.1 / 8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / 8.6 PLATAFORMA ELEVADORA \ (PÁG. 50/51/58)], [Sí],
  [MONTAJE DE INVERSORES Y EJECUCIÓN DE LA INSTALACIÓN ELÉCTRICA], [4.1.4 FASE 4 \ (PÁG. 19)], [PEQUEÑAS HERRAMINETAS ELÉCTRICAS / DE MANO], [8.1 / 8.2 PEQUEÑAS HERRAMINETAS ELÉCTRICAS / DE MANO \ (PÁG. 50/51)], [Sí],
  [PUESTA EN MARCHA DE LA INSTALACIÓN Y MONITORIZACIÓN], [4.1.5 FASE 5 \ (PÁG. 19)], [], [], [Sí],
)



*OBLIGACIONES DEL COORDINADOR DE SYS EN FASE DE EJECUCIÓN DE LA OBRA.*

Según el artículo 9 del RD 1627/1997, el Coordinador en materia de Seguridad y Salud durante la 
ejecución de la obra deberá desarrollar las siguientes funciones:


+ Coordinar la aplicación de los pirncipios generales de prevención y de seguridad 
  - Al tomar las decisiones técnicas técnicas y de organización con el fin de planificar los distintos trabajos o fases de trabajo que vayan a desarrollarse simultánea o sucesivamente.
  - Al estimar la duración requerida para la ejecución de estos distintos trabajos o fases de trabajo.

+ Coordinar las actividades de la obra para garantizar que los contratistas y, en su caso, los subcontratistas y los trabajadores autónomos apliquen de manera coherente y responsable los principios de la acción preventiva que se recogen en el artículo 15 de la Ley de Prevención de Riesgos Laborales durante la ejecución de la obra y, en particular, en las tareas o actividades a que se refiere el artículo 10 del Real Decreto 1627.
+ Aprobar el plan de seguridad y salud elaborado por el contratista y, en su caso, las modificaciones introducidas en el mismo. 
  La dirección facultativa asumirá esta función cuando no fuera necesaria la designación de coordinador.
+ Organizar la coordinación de actividades empresariales prevista en el artículo 24 de la Ley de Prevención de Riesgos Laborales.
+ Coordinar las acciones y funciones de control de la aplicación correcta de los métodos de trabajo.
+ Adoptar las medidas necesarias para que sólo las personas autorizadas puedan acceder a la obra. 
  La dirección facultativa asumirá esta función cuando no fuera necesaria la designación de coordinador.

instaladora.nombre, como contratista, colaborará en todo lo posible con el coordinador de seguridad para que éste pueda cumplir con sus atribuciones de la forma más eficiente posible.



= Memoria descriptiva


//Sergio.codigo:
#outline(title: "Índice de la memoria")



== Introducción
=== Antecedentes
//Sergio: el 99% de los proyectos de FV a los que les he hecho un PSS son sobre una cubierta de una nave, pero si llega un contratista que quiere el plan y la ejecución de la obra no es sobre una nave, este texto no sirve, ¿lo guardo como variable?
#data.promotor.nombre como promotor de la instalación encarga a #data.instaladora.nombre para la ejecución de *una planta fotovoltaica sobre la cubierta de su nave*.

Con tal motivo, se encarga a #data.instaladora.nombre, la realización del “#data.proyecto.titulo” situada en #data.proyecto.localizacion.situacion, con el fin de que sirva de base al instalador para su ejecución, así como para solicitar de los Organismos Competentes de la Administración las preceptivas autorizaciones de instalación y puesta en servicio. 
La empresa instaladora designada por #data.promotor.nombre es instaladora.nombre instaladora.responsable, como responsable de dicha empresa, redacta el presente Plan de Seguridad y Salud con el fin de analizar, estudiar, desarrollar y complementar, en función del propio sistema de ejecución del contratista las previsiones respecto a la prevención del riesgo de accidentes laborales y enfermedades profesionales, las instalaciones preceptivas de higiene y bienestar y demás prescripciones reglamentarias, así como las contenidas en el Estudio Básico de Seguridad y Salud del Proyecto redactado por instaladora.nombre

=== Objeto del plan de seguridad y salud

El objetivo del presente Plan de Seguridad y Salud es establecer un marco de control y gestión sobre las acciones, actividades, medios materiales y humanos de la empresa instaladora durante la ejecución de la instalación fotovoltaica, y posteriormente en las actividades de operación y mantenimiento. 
La finalidad de un documento de este tipo es evitar y prevenir los riesgos laborales, mientras se protege la integridad física, de los trabajadores que realicen la obra. 
También se busca establecer los procesos, acciones y medios asociados a la prevención de accidentes en el trabajo y las enfermedades profesionales que los riesgos potenciales que no se puedan evitar.

El presente trabajo consiste en la redacción de un "Plan de Seguridad y Salud" fundamentado en el Proyecto de la obra denominada: “#data.proyecto.titulo.”

El objeto de este "Plan de Seguridad y Salud", es diseñar el conjunto de sistemas que permiten abordar de forma integral la seguridad, diseñando la línea de prevención recomendable a cada situación potencial de riesgo, siguiendo las directrices y definiciones del "Estudio de Seguridad y Salud", en el que se inspira para evitar los accidentes laborales y de otra índole durante la duración de los trabajos. 
Este "Plan de Seguridad y Salud" se redacta recogiendo lo preceptuado en el Real Decreto 1627/97, nacido de la transposición de la Directiva 92/57/CEE, de 24 de JULIO, por el que se establece las disposiciones mínimas de seguridad y salud que deben aplicarse en las obras de construcción temporales y móviles y en el que se implanta, mediante la transposición al Derecho español a través del citado Real Decreto la obligatoriedad de inclusión de un "Estudio de Seguridad y Salud" en cualquier obra, pública o privada, en las que se realicen trabajos de construcción o ingeniería civil.

Por lo que antecede y en aplicación de lo contemplado en el artículo 4 del citado Real Decreto que establece la obligatoriedad, por parte del promotor, de elaborar un estudio de seguridad y salud en los proyectos de obras en los que el presupuesto de ejecución por contrata incluido en el proyecto sea igual o superior a los 450.759,08 euros, que la duración estimada de la obra sea superior a 30 días laborales, empleándose en algún momento a más de 20 trabajadores simultáneamente o también que los días detrabajo del total de los trabajadores en la obra, sea superior a 500, o en las obras de túneles, galerías, conducciones subterráneas o presas, y a elaborar un Estudio Básico de Seguridad y Salud en el caso de que no se den ninguno de los supuestos anteriores, y de la aplicación del artículo 5 por el que se establecen los mínimos documentos que deben contener los estudios de seguridad y salud, nace la obligatoriedad por parte de instaladora.nombre, según preceptúa el artículo 7 del Real Decreto 1627 de elaborar un Plan de Seguridad y Salud.

En aplicación de lo preceptuado en el artículo citado en el punto anterior, instaladora.nombre redacta este Plan de Seguridad y Salud en el que se analiza, estudia, desarrolla, y complementa las previsiones contenidas en el Estudio Básico de Seguridad y Salud.

Por lo anterior, este "Plan de Seguridad y Salud" se redacta considerando los riesgos detectables a surgir en el transcurso de esta obra, adaptando a nuestra tecnología las previsiones realizadas en el "Estudio Básico de Seguridad y Salud" del proyecto. 
Esto no quiere decir que no puedan surgir otros riesgos que serán elevados, por el jefe de obra o encargado, al Servicio de Seguridad y Salud de #data.instaladora.nombre, para su estudio de la forma más profunda posible en colaboración estrecha con el Coordinador de Seguridad y Salud durante la ejecución de la obra.

En el desarrollo de esta Memoria, se han identificado los riesgos de las diferentes Unidades de Obra, Máquinas y Equipos, evaluando la eficacia de las protecciones previstas a partir de los datos aportados por el Estudio Seguridad y Salud, siempre aplicando los métodos propios de #data.instaladora.nombre. 
En definitiva, se pretende cumplir con lo legislado y eliminar de la obra la siniestralidad laboral y la enfermedad profesional, elevando así el nivel de las condiciones de trabajo de esta construcción.

Previo al inicio de los trabajos instaladora.nombre entregará al Coordinador de Seguridad y Salud una planificación de los trabajos, comunicando cualquier cambio, notificará si va a subcontratar algún trabajo y efectuará un acta previa al inicio de las obras avisando de la fecha de inicio.


=== Emplazamiento

La planta solar fotovoltaica que se trata se ubicará en la cubierta de la nave con los siguientes datos:

Propiedad: #data.proyecto.empresa.nombre

Dirección: #data.proyecto.localizacion.situacion

Ubicación google maps: #data.proyecto.empresa.enlace_maps

*empresa.foto*

=== Datos generales

Las actuaciones tendrán lugar en la zona sur del aparcamiento de la residencia y en la parcela contigua ocupada por olivar, ambas zonas propiedad de 

#table(
  columns: (auto, auto),
  [DESCRIPCIÓN], [#data.proyecto.titulo],
  [PROMOTOR],[#data.promotor.nombre],
  [SITUACIÓN OBRA], [#data.proyecto.localizacion.situacion],
  [INSTALADORA],[instaladora.nombre, instaladora.cif],
  [AUTOR DEL PLAN DE SEGURIDAD Y SALUD],[#data.autor_pss.nombre, #data.empresa_redactora.nombre],
  [DIRECCIÓN FACULTATIVA],[#for (_, valor) in data.direccion_facultativa [#valor \ ]],
  [COORDINADOR DE SEGURIDAD Y SALUD], [#for (_, valor) in data.coordinador_pss [#valor \ ]],
  [ENCARGADO / RECURSO PREVENTIVO],[#data.sys.encargado_recurso_preventivo],
  [PRESUPUESTO EJECUCIÓN MATERIAL], [#data.presupuesto.pem €],
  [PRESUPUESTO PLAN SEGURIDAD Y SALUD], [#data.presupuesto.p_pss €],
  [PLAZO DE EJECUCIÓN], [#data.proyecto.duracion de trabajo efectivo, en función del suministro se podría alargar en el tiempo cronológico, pero no en trabajo efectivo],
  [JORNADA LABORAL],[Según convenio, siempre que la climatología y los trabajos a efectuar lo permitan],
  [Nº TRABAJADORES PREVISTOS],[Máxima concentración de personal de obra: #data.proyecto.trabajadores.totales operarios. Personal medio de obra: #data.proyecto.trabajadores.media operarios.]
)

-	La empresa contratista, instaladora.nombre, ha adoptado como modalidad preventiva la contratación de servicio de prevención ajeno, teniendo contratado dicho servicio con #data.sys.subcontrata_modelo_preventivo.
-	Relación de empresas subcontratistas y trabajadores autónomos. 
  Cumplimiento de la Ley 32/2006 y 1109/2007 del 24 de agosto desarrollando al anterior. 
  Será obligado el cumplimiento de la Ley 32/2006 DE 18 DE OCTUBRE REGULADORA DE LA SUBCONTRATACIÓN EN EL SECTOR DE LA CONSTRUCCION y el RD. 1109/2007 de 24 DE AGOSTO.
-	Coordinación de actividades: Se harán reuniones especialmente dedicadas a actividades empresariales, cuando confluya más de 1 empresa desempeñando labores en la obra, atendiendo a lo reflejado en el REAL DECRETO 171/2004, de 30 de enero, por el que se desarrolla el artículo 24 de la Ley 31/1995, de 8 de noviembre, de Prevención de Riesgos Laborales, en materia de coordinación de actividades empresariales. BOE nº 27 31/01/2004.

- Aviso coordinador:
  -	Se avisará previamente al coordinador de seguridad y salud del inicio de cualquier trabajo, con una antelación de 48h.
  -	Notificar cualquier cambio con la planificación aportada en el plan de seguridad.
  -	Realizar acta de inicio de coordinación de los trabajos.
  -	Notificar al coordinador previamente la subcontratación, para su aprobación de acceso a la obra.
-	No se ve afectado ningún servicio en el interior de la parcela, tan solo se verá afectado el suministro eléctrico, que será interrumpido para las maniobras de conexión de la instalación proyectada al cuadro general de la nave. 
  Dicha maniobra se coordinará con la empresa para causar el menor impacto posible.

=== Entorno de la obra

La nave en la que se ejecutará la instalación está situada en una calle amplia y con espacio libre en la zona de fachadas para maniobra de vehículos. 
Esta zona libre se encuentra separada de la calle, quedando protegida la zona de trabajo tan solo con impedir el acceso a las zonas usadas. 
En estas zonas se realizarán los acopios, y se puede montar el acceso provisional a la cubierta. 
La nave está dotada de todos los servicios necesarios pudiendo usarse por los trabajadores según acuerdo con la propiedad de la misma.

=== Centro asistencial más cercano y tlf. de urgencias

El centro de urgencias más cercano se encuentra a #data.sys.centro_salud.tiempo #data.sys.centro_salud.ud_tiempo, #data.sys.centro_salud.distancia #data.sys.centro_salud.ud_distancia.

Centro: #data.sys.centro_salud.nombre

Teléfono de contacto: #data.sys.centro_salud.telefono

Ubicación: #data.sys.centro_salud.direccion

#data.sys.centro_salud.enlace_maps

centroSalud.foto

En los planos se detalla el recorrido a seguir desde la obra en caso de ser necesario. 
El citado plano, deberá estar situado en un lugar visible y accesible a la totalidad de los trabajadores de la obra.

Teléfonos de urgencias:

- Emergencias: 112
- Urgencias sanitarias: 061 - #data.sys.telefonos.urgencias
- Bomberos: 080 - #data.sys.telefonos.bomberos
- Policía nacional: 091 
- Policía local: 092 - #data.sys.telefonos.policia_local
- Guardia civil: 062 - #data.sys.telefonos.guardia_civil

=== Documentación obra

Previo el inicio de los trabajos y durante todo el transcurso de la obra se dispondrá en la propia obra de la siguiente documentación:

-	Plan de Seguridad y Salud de la obra.
-	Acta de aprobación del Plan de Seguridad y Salud.
-	Apertura del centro de trabajo.
-	Licencia de obras.
-	Libro de subcontratación si la hay.
-	Acta de nombramiento de recurso preventivo.
-	Actas de adhesión al PSS de cada subcontrata si procede.
-	Listado de personal presente en obra.
-	Designación de manipuladores de vehículos, maquinaria o herramientas especiales.
-	Libro de visitas
-	Nombramiento de supervisor de manejo de cargas.
-	Responsable de línea de vida.

=== Control de accesos a la obra

El procedimiento por parte de instaladora.nombre para el control de acceso a la obra de trabajadores de la contrata como de las subcontratas es el siguiente:

-	El listado de trabajadores será remitido al CSS previo a la ejecución de la obra.
-	Se evitará el acceso de toda persona ajena a la obra.
-	Se deberá avisar por escrito al Coordinador de Seguridad y Salud la intervención de nuevo personal o de alguna subcontrata en un plazo mínimo de 24 horas previo a la entrada en el centro de trabajo.
-	Toda la documentación socio laboral y preventiva tanto de instaladora.nombre como de sus posibles subcontratas estará en poder del CSS en fase de ejecución de la obra.
-	No podrá acceder ningún operario o maquinaria que no se encuentre en el listado de control de autorizados en obra.

== Instalaciones de higiene y bienestar

El número medio de operarios será #data.proyecto.trabajadores.media.

Dado que en la ubicación donde se encuentra la instalación existen instalaciones de Higiene y Bienestar, los trabajadores podrán hacer uso de las mismas, siempre que el propietario lo autorice y redacte un documento en el que quede reflejada dicha autorización.

Se mantendrán las instalaciones en perfecto estado de limpieza y conservación.

Las instalaciones tanto de agua como de electricidad son las propias de la parcela, comprobándose su buen estado o adecuándose cuando fuera necesario.

Se aportará al inicio de la obra el documento que autoriza a instaladora.nombre a hacer uso de las instalaciones del inmueble del cliente.

== Tabla resumen de las fases de obra

#table(
  columns: (auto, auto, auto, auto, auto),
  [FASE DE OBRA],[APDO. Y PÁG. PSS],[MAQUINARIA],[APDO. Y PÁG. PSS],[RECURSO PREVENTIVO],
  [ACTUACIONES PREVIAS],[4.1.1 FASE 1 (PÁG. X)],[PEQEUÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO],[],[SÍ],
  [EJECUCIÓN DE LA ESTRUCTURA DE SOPORTES DE MÓDULOS Y MONTAJE DE LO SMÓDULOS FV Y CAJAS DE CONCENTRACIÓN],[4.1.2. FASE 2 (PÁG. X)],[EQUIPO DE ELEVACIÓN: CAMIÓN GRÚA EQUIPO DE SOLDADURA ELÉCTRICA], [8.3 CAMIÓN GRÚA (PÁG X) 8.1 / 8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO], [SÍ],
  [EJECUCIÓN DE CANALIZACIONES Y PEQUEÑOS TRABAJOS DE ALBAÑILERÍA], [4.1.3 FASE 3 (PÁG. X)], [PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / PLATAFORMA CON CESTILLO], [8.1 / 8.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO / 8.6 PLATAFORMA ELEVADORA (PÁG. X/Y/Z)], [SÍ],
  [MONTAJE DE INVERSORES Y EJECUCIÓN DE LA INSTALACIÓN ELÉCTRICA], [4.1.4 FASE 4 (PÁG. X)], [PEQUÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO], [8.1 /.2 PEQUEÑAS HERRAMIENTAS ELÉCTRICAS / DE MANO (PÁG. X/Y)], [SÍ],
  [PUESTA EN MARCHA DE LA INSTALACIÓN Y MONITORIZACIÓN], [4.1.5 FASE 5 (PÁG. X)], [], [], [SÍ]
)

== Protecciones colectivas durante el proceso constructivo

A continuación, se pretende hacer un recorrido de las protecciones colectivas a colocar en la obra siguiendo el proceso lógico de ejecución de los trabajos.
Se define en este apartado cómo se van a llevar a cabo los trabajos, siguiendo las instrucciones indicadas en el proyecto. 
Además, en este plan de seguridad, se han introducido los procedimientos de trabajo propios del contratista, así como los certificados correspondientes a las medidas de protección tanto individuales como colectivas.

La forma de definir las protecciones colectivas, según los riesgos que se corran en cada caso, consistirá en una primera determinación de los trabajos intervinientes en las diferentes fases definidas en el presente Plan, para pasar posteriormente a relatar cómo se ejecutarán los trabajos, enlazándolo con las protecciones colectivas generales a utilizar durante su ejecución. 
Más adelante se definirán los riesgos particulares que se corren al realizar cada trabajo.

Todas las acciones descritas a continuación deberán ser vigiladas y comprobadas por nuestro recurso preventivo.

=== Fases del proceso constructivo

==== Fase 1: Actuaciones previas

En el inicio de la obra, se señalizará el perímetro y los accesos de forma que cuando se esté trabajando no se pueda circular por las zonas afectadas ni bajo ellas.

En cada uno de los citados accesos, colocaremos carteles de señalización en los que aparecerán, como mínimo, las siguientes leyendas (o similares):
-	“Queda prohibido el acceso a toda persona ajena a la obra”.
-	“Es obligatorio el uso de casco y calzado de protección para la circulación por la obra”.
-	“Es obligatorio el uso de arnés de seguridad”.
-	“Peligro caída a distinto nivel”.
-	“Riesgo eléctrico”.
-	“Peligro caída de objetos”.
-	“Peligro cargas suspendidas”.

Además, colocaremos en lugar visible en cada una de las entradas, una copia de las normas o instrucciones para la circulación de personas por la obra.

El acceso a la cubierta se efectuará mediante escaleras de mano debidamente aseguradas y haciendo uso de dispositivo retráctil anticaídas los anclajes para sujeción de arnés se instalarán previamente al acceso a la cubierta, colocándose antes de subir a la propia cubierta, desde plataforma elevadora o escalera de mano debidamente asegurada.

Una vez se encuentren en buen estado de uso los anclajes necesarios, se puede proceder al acceso a zonas de trabajo del personal pertinentemente anclado mediante el uso de arnés anticaídas.

Una vez en la zona de trabajo se irá anclando el arnés en los soportes previstos para desplazarse a los diferentes puntos de trabajo, se usará para ello absorbedores con doble anclaje, de forma que el cambio de zona se haga con un punto siempre sujeto.

Todas las acciones descritas a continuación deberán ser vigiladas y comprobadas por nuestro recurso preventivo.

==== Fase 2: Ejecución de la estructura de soportes de módulos fv y montaje de los mismos y cajas de concentración

Las actuaciones a realizar son: replanteo y distribución de zonas según proyecto; montaje de estructura soporte de aluminio; montaje de los paneles sobre la estructura, colocación de cajas de fusibles y conexionado de paneles.

Montaje de estructura:

Tras replantear la distribución en cubierta de los módulos y localizar las zonas de anclaje de la estructura se atornillan los soportes en las zonas resistentes localizadas de forma que el anclaje se realice en las vigas de cubierta y no directamente en la chapa de cierre.

Sobre estos apoyos se monta la perfilería que compone la estructura conforme a las instrucciones del fabricante.

Montaje de módulos fotovoltaicos:

Para esta tarea se usará camión grúa, que elevarán los paquetes de paneles desde el suelo hasta la cubierta dejándolos lo más cercanos posibles a la zona de montaje, para evitar desplazamientos excesivos por cubierta. 
Teniendo el paquete de paneles sujeto con la grúa e inmovilizado sobre la cubierta, se procederá al reparto de paneles entre dos operarios. 
Los paneles, una vez distribuidos, se anclarán a la estructura mediante sus presores usando atornillador eléctrico y herramientas de mano adecuadas.

Montaje de cajas de concentración:

Se realizará sobre la misma estructura de los módulos, mediante fijación con tornillería adecuada, sobre la superficie del peto de la nave, o en el interior de la nave cerca del inversor, para decidir su ubicación definitiva se tendrá en cuenta la facilidad de acceso seguro a los mismos en posteriores tareas de mantenimiento.

==== Fase 3: Ejecución de canalizaciones y pequeños trabajos de albañilería

Se instalarán las canalizaciones consistentes en:
-	Bandeja perforada.
- Las medidas de protección colectivas a emplear en esta fase de la obra serán las colocadas, es decir, arnés con doble anclaje y puntos de anclaje en estructura.
-	Bajada de la bandeja a inversor, por fachada de la nave.
-	Se prevé la realización de trabajos de albañilería, los cuáles, aunque son de poca envergadura deben de evaluarse. 
  Se incluyen en esta fase los pequeños trabajos  tales como apertura y cierre de rozas y pasos de muro, recibido a fábricas de soportes, pinturas, etc…

==== Fase 4: Montaje de inversores y ejecución de la instalación eléctrica

El inversor se instalará sobre el muro en el altillo de almacén en el interior de la nave, siguiendo las recomendaciones del fabricante.

Los trabajos a realizar son los usuales en instalaciones eléctricas de baja tensión, ejecutándose con medios tradicionales.

Las instalaciones eléctricas se ajustan a lo dispuesto en la normativa vigente. 
Las instalaciones eléctricas se realizarán en ausencia de tensión, para evitar posibles accidentes eléctricos.

Se incluyen en este apartado la instalación de las protecciones de los inversores, así como los armarios eléctricos que las alojan y la ejecución del alojamiento para el equipo de medida situado en fachada de la nave, según normas de la compañía distribuidora eléctrica.

En esta fase no se contempla la conexión eléctrica de la instalación al cuadro general de protección, operación que, por seguridad, se realizará al terminar las tareas de montaje e instalación.

==== Fase 5: Pueesta en marcha de la instalación y monitorización

Una vez finalizada la instalación se procederá a la conexión de la misma a la red eléctrica, confiriendo tensión al sistema.

Se instalarán los equipos de monitorización y se configurará el sistema.

=== Operaciones y Maquinaria
==== Tendido del cableado

El cable de cobre se introducirá mediante tracción manual por la canalización mediante bandeja perforada en montaje superficial sobre la estructura.

Riesgos más frecuentes:
-	Fatiga física.
-	Lesiones que se pueden producir de una forma inmediata.
-	Acumulación de pequeños traumatismos, aparentemente sin importancia, hasta producir lesiones crónicas.

Las lesiones más frecuentes son:
-	Contusiones.
-	Cortes y heridas.
-	Fracturas
-	Lesiones músculo-esqueléticas.

Se pueden producir en cualquier zona del cuerpo, pero son más sensibles los miembros superiores, y la espalda, en especial en la zona dorso-lumbar.

Normas básicas de seguridad:

Todo el personal que acceda a la obra habrá recibido la información correspondiente a la circulación por la misma. 
Nuestro recurso preventivo deberá/n dejar constancia de ello.

Para reducir el riesgo derivado de empujar y/o tirar de una carga:
-	Reducción de la duración de las acciones que requieren fuerzas de empuje y tracción.
-	Reducción de frecuencia con la que se realizan dichas fuerzas.
-	Evitar ejercer fuerzas por debajo de la altura de las rodillas o por encima del nivel de los hombros.
-	Evitar la inclinación y la torsión del tronco.
-	Evitar movimientos contractivos rápidos.
-	Lubricación.
-	Utilizar calzado de seguridad con suela antideslizante para mejorar la adherencia con el suelo.
-	Manipulación entre varias personas.
-	Realizar pausas, preferentemente flexibles, para evitar la fatiga.
-	Rotación de tareas.
-	Es conveniente que el trabajador pueda regular su ritmo de trabajo.

Protecciones individuales:
-	La manipulación de cargas se efectuará mediante el uso de guantes de protección mecánica.
-	Calzado de seguridad.

Protecciones colectivas:
-	No se permitirá la permanencia de personal ajeno a los trabajos.
-	Si se procede a la descarga de material en las proximidades de zanjas o pozos, se aproximará a una distancia máxima de 1m, garantizada mediante topes.
-	Se delimitarán la zona de trabajos mediante cinta de señalización y vallado.
-	Mientras los trabajos se realicen en cubierta, todo el personal deberá estar anclado a la línea de vida.

==== Cable guía

Herramienta para instalación eléctrica que permite a los instaladores enrutar cables fácilmente.

EPIS:
-	La manipulación del cableado se efectuará mediante el uso de guantes de protección mecánica.

==== Soporte de rodillos para bobinas

Para el desenrollado de las bobinas de cable se utilizarán soportes con rodillos que permiten el giro de la bobina facilitando el tendido del cable.

Características:
-	Soportes de acero en forma de cuña con ranuras en las que hay rodillos desplazables para adaptarlos a distintas medidas de bobinas.

Medidas preventivas:
-	Instalar los equipos sobre una superficie estable y lisa.
-	No sobrepasar las cargas y dimensiones dadas por el fabricante.

EPIS:
-	La manipulación del equipo se efectuará mediante el uso de guantes de protección mecánica.
-	Calzado de seguridad.

Recurso preventivo:

El Recurso Preventivo comprobará que los operarios encargados de la realización de los trabajos detallados se realizan mediante procedimientos de trabajo seguros.

Deberán vigilar el cumplimiento de las actividades preventivas, debiendo permanecer en el centro de trabajo durante el tiempo que se mantenga la situación que determine su presencia.

La presencia del recurso preventivo en esta obra servirá para garantizar el estricto cumplimiento de los métodos de trabajo y, por lo tanto, el control del riesgo.

== Instrucciones de seguridad para la circulación de personas por la obra y de utilización del auxxiliar eléctrico provisional de obra

Se pretende describir en este capítulo una serie de normas (medidas preventivas, prendas de protección individual...) necesarias para poder acceder y circular por la obra de forma segura. 
Estas normas deberán cumplirlas todas las personas que accedan a la obra, independientemente de la labor que vayan a realizar en la misma (trabajadores, suministradores, asistencias técnicas), debiendo estar expuestas en la obra, perfectamente visibles tanto en la entrada a la misma, como en vestuarios y panel de anuncios.

Nuestro recurso preventivo o en su defecto el / los representantes legales de cada empresa que realice algún trabajo en la obra, deberán entregar una copia de las presentes normas a todos sus trabajadores presentes en la obra (incluyendo autónomos, empresas subcontratadas o suministradores). 
De dicha entrega deberá dejarse constancia escrita mediante firma del trabajador, entregando una copia del registro de la misma al coordinador de seguridad.

Como norma general durante el transcurso de la obra se hará uso en todo momento del chaleco reflectante.

El citado registro, es una de las medidas adoptadas para controlar el acceso a obra exigido por el R.D. 1627/97.

Todas las personas que accedan a la obra, deberán entender el español tanto escrito como hablado. 
En caso contrario, tanto las normas citadas a continuación, como los carteles indicadores colocados en la obra o cualquier instrucción, formación o información que se les facilite, deberán darse en el idioma que sepan leer o hablar (según el caso). 
Estas traducciones correrán a cargo del contratista afectado.

=== Normas de acceso y circulación por obra

-	Toda persona que entre en la obra deberá ir provista de calzado de seguridad con plantilla metálica y casco de protección con barbuquejo. 
  Ambas protecciones deberán estar en correcto estado. 
  En caso de realizar algún trabajo con herramientas o materiales que puedan caer, el calzado deberá disponer también de puntera metálica con el fin de controlar el riesgo no evitable de caída de objetos en manipulación. 
  Recuerde que las citadas protecciones tienen una caducidad, pasada la cual no garantizan su efectividad.
-	Puesto que los trabajos se desarrollan principalmente en altura toda persona que trabaje bajo esta circunstancia deberá de tener la formación necesaria para realizar los trabajos en altura correspondientes.
-	Nunca debe pisar un tablón o trozo de madera que esté dejado en el suelo. Podría tener algún clavo dejado por olvido o por estar limpiándolo en ese momento y clavárselo.
-	En caso de ver una señalización de peligro que corte el paso debe evitar el cruzarla. Dicha señalización está indicando una zona de acceso restringido o prohibido. 
  Si tiene necesidad de cruzarla consúltele a nuestro recurso preventivo, le indicarán cuál es la forma correcta de hacerlo.
-	Haga caso de los carteles indicadores existentes por la obra.
- No quite, bajo ningún concepto, una protección colectiva sin antes haberlo consultado y advertido a nuestro recurso preventivo, pues deberá/n tomar las medidas preventivas necesarias antes de dejar la zona desprotegida. 
  Sólo bajo la supervisión de los citados recursos preventivos se puede retirar una protección y/o trabajar sin ella.
-	Si encuentra alguna protección en mal estado o mal colocada, adviértalo inmediatamente a nuestro recurso preventivo.
-	Circule sin prisas.
  No debe ir corriendo por la obra pues podría sufrir un accidente.
-	En caso encontrarse obstáculos (plataformas de trabajo elevadas, con operarios trabajando sobre ellos), esquívelos cambiando de camino. 
  Aunque dé un rodeo, es preferible a que sufra o provoque un accidente por solapes con el trabajo realizado.
-	Si tiene que hacer uso de algún cuadro de auxiliar eléctrico, hágalo utilizando las clavijas adecuadas para su conexión. 
  Si tiene alguna duda pregúnteselo a nuestro recurso preventivo el/ellos le sacarán de dudas.
-	Si le surge cualquier otra duda durante su tránsito por la obra, no improvise, advierta y pregunte a nuestro recurso preventivo, esa es una de sus funciones.

=== Normas de utilización del auxiliar eléctrico provisional de obra

Puesto que la nave dispone de instalación eléctrica en funcionamiento, se hará uso de la misma si fuese necesario, revisándose su correcto estado y funcionamiento, adecuándose en caso de ser necesario. 
Aunque las herramientas previstas funcionan a batería y no se prevé usar la red eléctrica, cabe la posibilidad de tener que usar puntualmente la red, para cargar baterías, por ejemplo. 
En tal caso se usará con permiso de la propiedad y en las condicione de uso seguro que se contemplan en este plan de seguridad.

-	Las conexiones a cuadros eléctricos se realizarán con clavijas normalizadas blindadas (protegidas contra contactos indirectos) y con enclavamiento. Está totalmente prohibido conectar cables pelados directamente a los cuadros sin la utilización de las correspondientes clavijas.
-	Cada toma de corriente suministrará energía eléctrica a un solo aparato, máquina o máquina- herramienta.
-	La tensión siempre estará en la clavija "hembra", nunca en la "macho", para evitar los contactos eléctricos directos.
-	Las tomas de corriente irán provistas de interruptores de corte omnipolar que permita dejarlas sin tensión cuando no hayan de ser utilizadas.
-	Respecto a la utilización de mangueras alargaderas se tendrá en cuenta lo siguiente:
  -	Si son para cortos periodos de tiempo, podrán llevarse tendidas por el suelo, pero arrimadas a los parámetros verticales.
  -	Si van a permanecer un largo periodo de tiempo deberán llevarse colgadas por techo a una altura mínima de 2 m hasta el lugar de trabajo.
  -	En caso de ser necesario empalmarlas, se utilizarán conexiones normalizadas estancas antihumedad o fundas aislantes termo-retráctiles, con protección mínima IP 45.
-	Está totalmente prohibido manipular los cuadros eléctricos. En caso de que observe alguna anomalía en uno de ellos, adviértalo de inmediato a nuestro recurso preventivo de la obra; ellos avisarán al técnico correspondiente para que proceda a su reparación.

== Identificación de riesgos y medidas preventivas a adoptar en las diferentes actividades de obra

En este apartado, pretende realizarse una relación de los trabajos que previsiblemente intervendrán en la ejecución de la obra, así como de la adopción de las medidas preventivas necesarias para su realización.

En cada punto se identifican los riesgos propios tipo existentes por la ejecución de cada trabajo, así como las medidas preventivas y protecciones a adoptar para controlar y reducir dichos riesgos.

Para la definición de cada trabajo, se ha adoptado la forma indicada a continuación:
-	Definición del trabajo: consiste en una enunciación de los trabajos que intervendrán en cada una de las actividades.
-	Medios auxiliares a utilizar: se determinan cuáles son los medios auxiliares que se van a utilizar. 
  La identificación de los riesgos de cada uno de ellos, así como las medidas preventivas y protecciones técnicas a adoptar, vendrán indicadas en el apartado correspondiente a medios auxiliares, por lo que deberá atenderse a lo citado en los mismos.
-	Materiales a utilizar: se indican qué materiales se utilizarán en la ejecución de los trabajos
  Igual que en el punto anterior, deberá atenderse, en cada caso, a lo estipulado en el apartado de materiales del presente Plan.
-	Maquinaria de obra y herramientas: se cita en este punto la maquinaria y herramientas necesarias para la total ejecución de cada trabajo que intervenga en la actividad. 
  Igual que en los puntos anteriores, la identificación de los riesgos de cada tipo de maquinaria o herramienta, así como las medidas preventivas y protecciones técnicas a adoptar vendrán indicadas en el apartado correspondiente a medios auxiliares, por lo que deberá atenderse a lo citado en los mismos.
-	Identificación de riesgos: se aportará una relación de los riesgos propios del trabajo a realizar, sin incluir los pertenecientes a la utilización de medios auxiliares, maquinaria o materiales, puesto que ya se definen en los apartados correspondientes. 
  Dentro de este epígrafe se define, para cada riesgo, lo siguiente:
-	Protecciones colectivas: en caso de utilizar unas protecciones colectivas particulares para la realización de los trabajos que no estén indicadas en el apartado de “Protecciones colectivas a utilizar durante el proceso constructivo” del presente Plan de seguridad, se indican en este punto, en caso contrario no se mencionan.
-	Protecciones individuales: se indica qué protecciones individuales particulares será necesario utilizar para cada una de las actividades intervinientes en cada procedimiento de trabajo. 
  No se incluyen las necesarias para la utilización de los medios auxiliares, maquinaria ni materiales, puesto que ya se definen en los apartados correspondientes.
-	Medidas preventivas: se citan las normas preventivas intrínsecas a la realización de los trabajos, así como (si procede) los procedimientos de trabajo seguro. 
  No se incluyen las necesarias para la utilización de los medios auxiliares, maquinaria ni materiales, puesto que ya se definen en los apartados correspondientes.

=== Trabajos al aire

Este apartado comprende los trabajos a realizar en la cubierta.

Picaduras de insectos:

Cuando trabajamos en el medio natural corremos el riesgo de sufrir picaduras de insectos, principalmente himenópteros como abejas y avispas, o también arañas, escorpiones, escolopendras, etc. 
Aunque la mayoría de estas picaduras sólo causan una molestia leve o fuerte según especies, algunas pueden provocar reacciones alérgicas graves que requieren de atención médica de urgencia.

Medidas preventivas:
-	Durante las marchas o momentos de ascensión, extremar la atención al acceder a la cubierta.
-	No acercarnos conscientemente a panales de abejas ni a nidos de avispas y si el acercamiento ha sido accidental, alejarnos con movimientos lentos. 
  Estos panales se sitúan en los sitios más recónditos.
-	Si un insecto peligroso está volando a nuestro alrededor, lo mejor será quedarnos quietos y tranquilos, ya que si tratamos de matarlo puede hacer que nos pique.
-	Si nos atacan varios insectos lo mejor, sin duda, será alejarnos corriendo. 
  Por ejemplo, las abejas al picar pueden liberar una sustancia química que atrae a otras abejas.
-	Usar ropa que nos cubra la mayor parte posible del cuerpo.
-	Y recuerda que, si se cuela un insecto dentro de nuestro vehículo, debemos parar despacio y abrir todas las ventanas.
-	Si bebes en recipientes que contengan líquidos azucarados, comprueba antes que no existan abejas o avispas en los bordes o el interior.
-	Al dejar ropa en el suelo tras una pausa, comprueba antes de ponértela que no existe ningún insecto peligrosos entre los pliegues.

Primeros auxilios:
+	Lavar el sitio de la picadura con agua y jabón.
+	Quitar el aguijón poniendo una gasa en el área (nunca apriete el aguijón, ni utilice pinzas)
+	Poner hielo en la picadura para reducir la inflamación.
+	No rascar la picadura para evitar provocar mayor inflamación, picazón y riesgo de infección.
+	Procurar permanecer al lado de alguien para asegurarse la atención en caso de reacción alérgica, y en este caso, trasladar a la víctima a un centro sanitario, vigilando las constantes vitales en casos graves.

Recurso preventivo:
-	El Recurso Preventivo comprobará que los operarios encargados de la instalación realizan las operaciones mediante procedimientos de trabajo seguros.
-	Deberán vigilar el cumplimiento de las actividades preventivas, debiendo permanecer en el centro de trabajo durante el tiempo que se mantenga la situación que determine su presencia.
-	La presencia del recurso preventivo en esta obra servirá para garantizar el estricto cumplimiento de los métodos de trabajo y, por lo tanto, el control del riesgo.

=== Montaje de soportes, placas y cableado de la instalación fotovoltaica

Este apartado comprende los trabajos propiamente de la instalación fotovoltaica, englobando desde la descarga del material, montaje de los soportes de módulos, montaje de módulos y extendido del cableado en estructura sin tensión.

El montaje de los paneles se hará sobre una estructura de aluminio previamente fijada a la estructura de la cubierta de la nave mediante tornillería adecuada. 
Una vez terminados los trabajos de montaje, se unen las diferentes series de paneles entre sí y se realiza el tendido con bandeja hasta las cajas de fusibles. 
El tendido de los cables, si se trata de montaje coplanar se realizará antes de colocar los paneles sobre la estructura, para facilitar la labor y evitar riesgos posturales al tener que colocar los cables bajo los paneles.

Medios auxiliares a utilizar:

Para la realización de los trabajos de instalación en altura se hará uso de camión pluma para elevación del material.

Materiales a utilizar:

Los materiales necesarios para la ejecución de estos trabajos serán únicamente la tornillería apropiada para el anclaje y fijación de todos los elementos a la estructura.

Maquinaria de obra y herramientas:

La maquinaria a utilizar en los citados trabajos será:
-	Radial, para cortar los perfiles auxiliares y realizar pequeñas modificaciones
  Taladro, para agujerear y atornillar los elementos a la estructura y entre sí.
-	Pequeña herramienta de mano, tipo tenaza, martillo, destornillador..., para labores varias.
-	Camión pluma.

Identificación de riesgos:

Durante la ejecución del montaje de la instalación, se identifican los siguientes riesgos particulares inherentes al propio trabajo.
- R01: Caídas a distinto nivel.
- R02: Caídas al mismo nivel por falta de orden y limpieza.
- R03: Desplome de material mal apilado.
- R04: Caídas de objetos (En su manipulación)
- R05: Golpes y cortes con elementos desprendidos y con el propio material.
- R06: Golpes y cortes con herramientas.
- R07: Atrapamiento por equipo de elevación de cargas.
- R08: Sobreesfuerzos por manipulación manual de cargas.
- R09: Atropellos por equipos de trabajo o vehículos.
- R10: Proyección de fragmentos o partículas.
- R11: Exposición al ruido.
- R12: Daños a terceros o por terceros.
- R13: Pisadas sobre superficies de tránsito
- RP: Recurso preventivo

=== Conexión del cableado y puesta en marcha de la instalación

Definición del trabajo:

Esta actividad comprende los trabajos para la conexión del cableado necesario para el funcionamiento de la instalación. 
Concluidas todas las conexiones, se procede a la puesta en marcha de la instalación.

Medios auxiliares a utilizar:

Para la realización de los trabajos de instalación en cubierta se hará uso de la plataforma elevadora para el ascenso de personal.

Materiales a utilizar:

Los materiales necesarios para la ejecución de estos trabajos, los cuales serán pequeña tornillería.

Maquinaria de obra y herramientas:

La maquinaria a utilizar en los citados trabajos será:
-	Pequeña herramienta de mano, tipo tenaza, martillo, destornillador..., para labores de bricolaje en cubierta, así como aparatos de medición.

Identificación de riesgos:

Durante la ejecución del montaje de la instalación en cubierta, se identifican los siguientes riesgos particulares inherentes al propio trabajo.
- R14: Caídas desde altura durante las operaciones de cableado.
- R02: Caídas al mismo nivel por falta de orden y limpieza.
- R06: Golpes y cortes con herramientas.
- R10: Proyección de fragmentos o partículas.
- R15: Contactos eléctricos directos e indirectos.
- R16: Riesgo de incendio.
- RP: Recurso preventivo.

=== Medición y limpieza del inversor

Definición del trabajo:

Verificar que la medición del display del inversor coincide con la medición realizada en corriente continua y alterna, realización de la limpieza del inversor.

Medios auxiliares a utilizar:

Se utilizarán escaleras de mano apoyadas sobre el terreno.

Materiales a utilizar:

Los materiales necesarios para la ejecución de estos trabajos, los cuales serán pequeña tornillería.

Maquinaria de obra y herramientas:

La maquinaria a utilizar en los citados trabajos será:
-	Pequeña herramienta de mano, tipo tenaza, martillo, destornillador..., para labores de bricolaje en cubierta, así como aparatos de medición.

Identificación de riesgos:
- R06: Golpes y cortes con herramientas.
- R10: Proyección de fragmentos o partículas.
- R15: Contactos eléctricos directos e indirectos.
- RP: Recurso preventivo

=== Trabajos con tensión

Procedimientos estándar de obligado cumplimiento para minimizar el riesgo eléctrico en trabajos sin tensión. 
El Real Decreto 614/2001 (España), en el anexo II, artículo A.1 define estas cinco reglas básicas:
-	Desconectar, corte visible o efectivo.
-	Enclavamiento, bloqueo y señalización.
-	Comprobación de ausencia de tensión.
-	Puesta a tierra y cortocircuito.
-	Señalización de la zona de trabajo.

==== Desconectar, corte visible o efectivo

Antes de iniciar cualquier trabajo eléctrico sin tensión debemos desconectar todas las posibles alimentaciones a la línea, máquina o cuadro eléctrico. 
Prestaremos especial atención a la alimentación a través de grupos electrógenos y otros generadores, sistemas de alimentación interrumpida, baterías de condensadores, etc.

Consideraremos que el corte ha sido bueno cuando podamos ver por nosotros mismos los contactos abiertos y con espacio suficiente como para asegurar el aislamiento. 
Esto es el corte visible.

Como en los equipos modernos no es posible ver directamente los contactos, los fabricantes incorporan indicadores de la posición de los mismos. 
Si la aparamenta está debidamente homologada, tenemos la garantía de que el corte se ha realizado en condiciones de seguridad; esto es el corte efectivo:

-	Interruptores
-	Seccionadores
-	Pantógrafos
-	Fusibles
-	Puentes flojos

La simple observación de la timonería del dispositivo no es garantía suficiente de la apertura del mismo.

==== Enclavamiento, bloqueo y señalización

Se debe prevenir cualquier posible reconexión, utilizando para ello medios mecánicos (por ejemplo candados). 
Para enclavar los dispositivos de mando no se deben emplear medios fácilmente anulables, tales como cinta aislante, bridas y similares.

Cuando los dispositivos sean telemandados, se debe anular el telemando eliminando la alimentación eléctrica del circuito de maniobra.

En los dispositivos de mando enclavados se señalizará claramente que se están realizando trabajos.

Además, es conveniente advertir a otros compañeros que se ha realizado el corte y el dispositivo está enclavado.

==== Comprobación de ausencia de tensión

En los trabajos eléctricos debe existir la premisa de que, hasta que no se demuestre lo contrario, los elementos que puedan estar en tensión lo estarán de forma efectiva.

Siempre se debe comprobar la ausencia de tensión antes de iniciar cualquier trabajo, empleando los procedimientos y equipos de medida apropiados al nivel de tensión más elevado de la instalación.

Haber realizado los pasos anteriores no garantiza la ausencia de tensión en la instalación.

La verificación de ausencia de tensión debe hacerse en cada una de las fases y en el conductor neutro, en caso de existir. 
También se recomienda verificar la ausencia de tensión en todas las masas accesibles susceptibles de quedar eventualmente sin tensión.

==== Puesta a tierra y en cortocircuito

Este paso es especialmente importante, ya que creará una zona de seguridad virtual alrededor de la zona de trabajo.

En el caso de que la línea o el equipo volviesen a ponerse en tensión, bien por una realimentación, un accidente en otra línea (fallo de aislamiento) o descarga atmosférica (rayo), se produciría un cortocircuito y se derivaría la corriente de falta a Tierra, quedando sin peligro la parte afectada por los trabajos.

Los equipos o dispositivos de puesta a tierra deben soportar la intensidad máxima de defecto trifásico de ese punto de la instalación sin estropearse. 
Además, las conexiones deben ser mecánicamente resistentes y no soltarse en ningún momento. 
Hay que tener presente que un cortocircuito genera importantes esfuerzos electrodinámicos.

Las tierras se deben conectar en primer lugar a la línea, para después realizar la puesta a tierra. 
Los dispositivos deben ser visibles desde la zona de trabajo.

Si primero se conectan las tierras a las líneas, se corre el riesgo de recibir una descarga porque las líneas pueden estar con tensión. 
Primero hay que poner las tierras “a tierra” y luego recién conectar las líneas.

Es recomendable poner cuatro juegos de puentes de cortocircuito y puesta a tierra, uno al comienzo y al final del tramo que se deja sin servicio, y otros dos lo más cerca posible de la zona de trabajo.

Aunque este sistema protege frente al riesgo eléctrico, puede provocar otros riesgos, como caídas o golpes, porque en el momento del cortocircuito se produce un gran estruendo que puede asustar al técnico.

==== Señalización de la zona de trabajo

La zona dónde se están realizando los trabajos se señalizará por medio de vallas, conos o dispositivos análogos. 
Si procede, también se señalizarán las zonas seguras para el personal que no está trabajando en la instalación.

=== Identificación, descripción de riesgos y recurso preventivo

==== RP: Recurso preventivo

El Recurso Preventivo comprobará que los operarios encargados de la instalación realizan las operaciones mediante procedimientos de trabajo seguros.

Deberán vigilar el cumplimiento de las actividades preventivas, debiendo permanecer en el centro de trabajo cuando se realicen los trabajos de conexión a la red principal.

==== R01: Caídas a distinto nivel

- Caídas desde la cubierta al ubicar estructura y paneles y al realizar el montaje de bandejas y cableado: este riesgo existe puesto que los paneles y la estructura se colocarán sobre la cubierta , siendo necesario desplazarse por la misma, al igual que durante el montaje del cableado.

Protecciones colectivas e individuales:

El acceso a la cubierta sólo se realizará cuando se garantice que se ha minimizado el riesgo de caídas a distinto nivel de los operarios. 
En este caso se usará la propia estructura metálica de la nave para sujetar los dispositivos de anclaje de la línea de vida provisional.

Todos los trabajos que se realicen en altura se realizarán haciendo uso de calzado de seguridad antideslizante y puntera reforzada.

La manipulación de cargas se efectuará mediante el uso de guantes de protección mecánica.

Medidas preventivas:

Todo el personal que deba acceder a la obra habrá recibido la información correspondiente a la circulación por la misma. 
Nuestro recurso preventivo deberá/n dejar constancia de ello.

Se prohíbe subir a la estructura durante tiempo lluvioso y tras un periodo de lluvia se examinará el estado de la misma por parte del recurso preventivo, asegurándose que no resbale de la superficie de tránsito.

Antes de acceder a la estructura, en periodo invernal, se comprobará la inexistencia de hielo en la misma.

==== R02: Caída de personas al mismo nivel, por falta de orden y limpieza

Medidas preventivas:
- Mantener la zona de trabajo lo más ordenada y limpia posible
  Retirar inmediatamente cualquier elemento que obstaculice las zonas de paso.

==== R03: Desplome de material mal apilado

Medidas preventivas:

El material se apilará adecuadamente, evitando generar pilas inestables. 
La altura de apilamiento tampoco será excesiva.

El acopio de material en cubierta se realizará sobre elementos estructurales, evitando sobrecargas en la cubierta que superen los 220 kg/m2.

Se evitará asimismo el acopio de materiales junto a los bordes de cubierta.

El acopio de material se realizará de manera progresiva, repartiendo los palets a medida que se vayan subiendo.

==== R04: Caída de objetos (en su manipulación)

Protecciones individuales:

Todos los trabajos que se realicen en altura se realizarán haciendo uso de calzado de seguridad antideslizante y puntera reforzada.

La manipulación de cargas se efectuará mediante el uso de guantes de protección mecánica.

Durante el transcurso de toda la obra será obligatorio el uso de casco de seguridad con barbuquejo.

Protecciones colectivas:

En el perímetro de la zona de trabajo, donde abajo existen accesos de personal con el consiguiente tránsito de personas, para impedir la posible caída de objetos sobre personas, se balizará impidiendo el paso durante los trabajos en altura. 
No obstante, se vigilará por recurso preventivo en planta baja la zona de trabajo durante el izado de materiales.

Medidas preventivas:

Solo podrán manipular cargas con maquinaria auxiliar aquellas personas que hayan recibido formación e información específica para la mencionada tarea, y hayan sido debidamente autorizadas por la empresa.

Las tareas de manipulación manual de placas fotovoltaicas se realizarán siempre por 2 trabajadores, y de la manera más mecanizada posible para prevenir la caída de las mismas. 
No se ubicarán los pies debajo de la carga a manipular.

Se evitará situarse por debajo de placas no convenientemente fijadas a la estructura.

==== R05: Golpes y cortes con elementos desprendidos y con el propio material

Durante las operaciones de izado de cargas se prohibirá el paso a toda persona ajena a los trabajos, balizando la zona de trabajo (como mínimo cinta de balizamiento, señal de prohibido el paso y señal labores de montaje e instalación).


Protecciones individuales:
-	Guantes de protección mecánica. 
  Casco de polietileno con barbuquejo.
-	Ropa de trabajo adecuada.

Medidas preventivas:
-	Queda terminantemente prohibido, situarse debajo de cargas suspendidas. 
  Para evitar dicha situación, se emitirán señales previamente establecidas, generalmente sonoras, con el fin de que puedan ponerse a salvo de posibles desprendimientos de aquellas.
-	Se evitarán los trabajos a distinto nivel y en la misma vertical. 
  No se transitará por debajo de la plataforma cuando esté elevada.
-	Se tendrá especial precaución cuando realicemos trabajos o pasemos junto a materiales apilados o almacenados que presenten aristas vivas, cantos afilados o elementos que sobresalgan.

==== R06: Golpes y cortes con herramientas

Medidas preventivas:
-	No atornillar o destornillar un tornillo sujetando la pieza con la palma de la mano. 
  Si el destornillador resbala se puede sufrir una lesión. 
  Apoyar la pieza sobre una base sólida.
-	Los destornilladores no se deben usar como palancas, como cincel, ni para perforar.
-	La llave debe estar siempre colocada perpendicular al eje del tornillo, ya que si esta inclinada no se puede ajustar perfectamente y es fácil que resbale.
-	Las llaves ajustables (inglesas), se deben usar colocándolas de tal forma que la mandíbula fija esté en el lado opuesto a la dirección del movimiento que se efectúa.
-	Tirar de la llave es más seguro que empujarla.
-	No se deben utilizar prolongaciones de las llaves, como tubos, otras llaves, etc…

==== R07: Atrapamiento por equipo de elevación de cargas

Medidas preventivas:
-	La elevación de cargas se realizará exclusivamente con equipos de trabajo diseñados a tal fin.
-	Se estará a lo dispuesto en el apartado correspondiente al medio auxiliar o herramienta correspondiente.
-	No se emplearán prolongadores de horquillas ni ningún otro accesorio que no sea autorizado por el fabricante del equipo de trabajo.
-	Se comprobará que el terreno tiene consistencia suficiente para que los apoyos de la maquinaria empleada no se hundan en el mismo durante la ejecución de las maniobras.

==== R08: Sobreesfuerzos por manipulación manual de cargas

Medidas preventivas:
-	Las tareas de manipulación manual de placas fotovoltaicas se realizarán siempre por 2 trabajadores, y de la manera más mecanizada posible, para prevenir daños dorso lumbares. 
  Se emplearán medios auxiliares siempre que sea posible para reducir el trabajo manual.
-	No se manipularán por un solo trabajador cargas que superen los 25 K de peso que sean voluminosos o no dispongan de buen agarre.

==== R09: Atropellos

Medidas preventivas:
-	Se prestará especial precaución de no invadir la zona natural de paso de los vehículos de carga, durante las operaciones de descarga de material.
-	Nunca pasaremos por detrás de un camión o una carretilla que están maniobrando sin asegurarnos de que el conductor nos ha visto y nos permite el paso.
-	En las operaciones de descarga de material se reducirá al mínimo imprescindible la presencia de trabajadores en las proximidades.

==== R10: Proyección de fragmentos o partículas

Protecciones individuales:
-	Es obligatorio el uso de gafas de seguridad homologadas frente a impactos para las operaciones susceptibles de producir proyección de partículas, como por ejemplo los trabajos de taladrado o radialado.

Medidas preventivas:
-	Se tendrá especial precaución, con la posición de las manos al depositar las placas sobre los soportes, a fin de prevenir aplastamientos.

Medidas preventivas:
-	Se tendrá especial precaución, con la posición de las manos al depositar las placas sobre los soportes, a fin de prevenir aplastamientos.

==== R11: Exposición al ruido

Protecciones individuales:
-	Es obligatorio el uso de protectores auditivos en las operaciones de taladrado y radialado en aquellas operaciones susceptibles de generar niveles de ruido superiores a 80 dBA.

==== R12: Daños a terceros o por terceros

Medidas preventivas:
-	Se establecerá un área de uso exclusivo para los trabajadores del contratista o sus subcontratas, de manera que quede prohibida la realización de trabajos en la misma vertical (tanto por encima como por debajo) donde se encuentre el personal prestando su servicio.

==== R13: Pisadas sobre superficies de tránsito

Medidas preventivas:
-	Se dispondrán accesos fáciles y seguros para llegar a los lugares de trabajo.
-	Las derivadas de trabajos sobre suelos húmedos o mojados: Los operarios llevarán calzado de seguridad antideslizante, con el fin de evitar resbalones en superficies mojadas.

==== R14: Caídas desde altura durante las operaciones de cableado

Protecciones colectivas:
-	El acceso a cubierta sólo se realizará cuando se garantice que se ha minimizado el riesgo de caídas a distinto nivel de los operarios por el borde de la cubierta mediante el empleo de protecciones colectivas y mediante el empleo de arneses de seguridad conectados a líneas de vida ancladas a puntos firmes de la estructura de la nave.
-	Se comprobará a diario el correcto estado de las protecciones colectivas: vallado y líneas de vida.

Protecciones individuales:
-	Todos los trabajos que se realicen en cubierta se realizarán haciendo uso de calzado de seguridad antideslizante y puntera reforzada.

Medidas preventivas:
-	Nuestro recurso preventivo deberá comprobar en todo momento el estado de las protecciones colectivas, encargándose de que sean repuestas en caso de detectar alguna 
  anomalía, dejando constancia escrita de ello, y prohibiendo al resto de trabajadores el acceso a la zona hasta que quede subsanada.
-	Todo el personal que deba acceder a la obra habrá recibido la información correspondiente a la circulación por la misma. 
  Nuestro recurso preventivo deberá/n dejar constancia de ello.
-	Se prohíbe subir a la cubierta durante tiempo lluvioso y tras un periodo de lluvia se examinará el estado de la misma por parte del recurso preventivo, asegurándose 
  que no resbale de la superficie de tránsito.

==== R15: Contactos eléctricos directos e indirectos

Protecciones individuales:
-	Los trabajos en tensión solamente se podrán realizar mediante empleo de los equipos de protección individual adecuados para proteger a los trabajadores frente al riesgo eléctrico.
-	Para trabajos en baja tensión se emplearán guantes aislantes adecuados para la tensión de trabajo.
-	Para trabajos en centros de transformación es necesario el empleo de guantes y manguitos aislantes, pantalla facial para la protección de proyecciones por arco eléctrico, gafas inactínicas, banqueta de maniobras y pértigas aislantes.

Medidas preventivas:
-	Antes de poner en carga la instalación eléctrica se revisarán en profundidad las conexiones de mecanismos, protecciones y empalmes de todos los cuadros eléctricos, para comprobar el estricto cumplimiento de lo dispuesto en el vigente Reglamento Electrotécnico de Baja Tensión.
-	Sólo los trabajadores autorizados, y con la formación adecuada, podrán realizar trabajos en proximidad, mediciones, verificaciones y ensayos en las instalaciones de baja tensión.
-	Sólo los trabajadores cualificados podrán realizar trabajos en tensión y trabajos en proximidad, mediciones, verificaciones y ensayos en las instalaciones de alta tensión.
-	Se estará a lo dispuesto en el correspondiente en el procedimiento de medición y limpieza de inversores. 
  Ver Anexo.

==== R16: Riesgo de incendio

Protecciones individuales:
-	Los trabajos en tensión solamente se podrán realizar mediante empleo de los equipos de protección individual adecuados para proteger a los trabajadores frente al riesgo eléctrico.
-	Para trabajos en baja tensión se emplearán guantes aislantes adecuados para la tensión de trabajo.
-	Para trabajos en centros de transformación es necesario el empleo de guantes y manguitos aislantes, pantalla facial para la protección de proyecciones por arco eléctrico, gafas inactínicas, banqueta de maniobras y pértigas aislantes.

Medidas preventivas:
-	Nuestro recurso preventivo deberá comprobar en todo momento el estado de las protecciones colectivas, encargándose de que sean repuestas en caso de detectar alguna anomalía, dejando constancia escrita de ello, y prohibiendo al resto de trabajadores el acceso a la zona hasta que quede subsanada.
-	Para realizar la conexión de las series en el cuadro de corriente continua se necesarios realizar los siguientes pasos:
  -	Quitar los fusibles del cuadro de corriente continua.
  -	Conectar las series en los fusibles o en las bornas de entrada.
  -	Medir mediante pinza amperimétrica la tensión de cada una de las series.
  -	La tensión debe ser siempre la misma en función del número de módulos y la tensión en circuito abierto.
  -	Siempre se debe medir con el polo positivo en la pinza positiva y la pinza negativa con el polo negativo de forma que siempre debe salir la tensión positiva, si tuviéramos una tensión negativa significa que hemos conectado al revés y debemos modificar la conexión.
  - Una vez tengamos todas las tensiones positivas y con el mismo valor se pueden poner los fusibles.

== Identificación de riesgos y medidas preventivas a adoptar en los diferentes medios auxiliares intervinientes en la obra

En este apartado, se cita una relación de los medios auxiliares que intervendrán en la ejecución de la obra, así como de unos procedimientos de trabajo seguro necesarios para su utilización.

En cada punto se identifican los riesgos propios tipo existentes por la utilización de cada medio auxiliar y, en su caso, por el montaje, mantenimiento y desmontaje de los mismos. 
También se indican las medidas preventivas y protecciones a adoptar para controlar y reducir dichos riesgos.

Toda la maquinaria dispondrá de certificado CE, cumpliendo con lo establecido en el RD 1215/97.

Para la definición de cada medio auxiliar, se ha adoptado la forma indicada a continuación:
-	Descripción del medio auxiliar: se describe del medio auxiliar tipo a utilizar, teniendo en cuenta que cada contratista deberá definir más concretamente en su plan de seguridad cómo será dicho medio.
-	Maquinaria de obra y herramientas: se cita en este punto la maquinaria y herramientas necesarias para el montaje, mantenimiento y desmontaje del medio auxiliar. 
  Igual que en los puntos anteriores, la identificación de los riesgos de cada tipo de maquinaria o herramienta, así como las medidas preventivas y protecciones técnicas a adoptar vendrán indicadas en el apartado correspondiente, por lo que deberá atenderse a lo citado en los mismos.
-	Identificación de riesgos: se aporta una relación de los riesgos propios, tanto evitables como no evitables, de la utilización del medio auxiliar, incluyendo, en su caso, los correspondientes al montaje, mantenimiento y desmontaje del mismo. 
  Dentro de este epígrafe se define, para cada riesgo, lo que indico a continuación:
  -	Protecciones colectivas: en caso de utilizar unas protecciones colectivas particulares para el empleo del medio auxiliar que no estén indicadas en el apartado de  “Protecciones colectivas a utilizar durante el proceso constructivo” del presente Plan de seguridad, se indican en este punto, en caso contrario no se mencionan.
  -	Protecciones individuales: se indican qué protecciones individuales particulares será necesario emplear para la correcta utilización del medio auxiliar.
  -	Medidas preventivas: se citan las normas preventivas necesarias para la utilización de los medios auxiliares.
  -	Comprobaciones a realizar antes de la utilización del medio auxiliar (si procede).

=== Escaleras de mano

Descripción del medio auxiliar:

Las escaleras de mano son un medio auxiliar utilizado en una gran cantidad de trabajos durante la ejecución de la obra. 
Es un aparato portátil que consiste en dos piezas paralelas o ligeramente convergentes unidas a intervalos por travesaños y que sirve para subir o bajar una persona de un nivel a otro.

Está previsto que puedan ser utilizadas en obra todo tipo de escaleras de mano existentes, los tipos de escalera más usuales:
-	Escalera simple de un tramo: escalera portátil no autosoportada y no ajustable en longitud, compuesta de dos largueros.
-	Escalera doble de tijera: la unión de las secciones se realiza mediante un dispositivo metálico de articulación que permite su plegado.
-	Escalera extensible: es una escalera compuesta de dos simples superpuestas y cuya longitud varía por desplazamientos relativo de un tramo sobre otro. 
  Pueden ser mecánicas (cable) o manuales.
-	Escalera transformable: es una extensible de dos o tres tramos (mixta de una doble y extensible).
-	Escalera mixta con rótula: la unión de las secciones se realiza mediante un dispositivo metálico de articulación que permite su plegado.

Cuando se utilice, se tendrá en cuenta el siguiente esquema:

*FOTO*

-	Respecto a los materiales de los que están compuestas, preveo que se podrán utilizarse de madera, acero o aluminio.
  -	Maquinaria y herramientas necesarias: Las herramientas a utilizar serán:
  -	Maceta o martillo (para la posible sujeción superior e inferior de la escalera).
  -	Identificación de riesgos: Las siguientes medidas preventivas serán comunes a todos los riesgos citados a continuación:
    -	El contratista deberá informar y formar a todos sus trabajadores (tanto propios como subcontratados), sobre el uso adecuado de escaleras de mano.
    -	Nuestro recurso preventivo deberá comprobar tanto que se está utilizando el medio auxiliar tal y como se menciona en los puntos señalados a continuación, así como que su estado es el correcto. 
      También atenderá a lo dispuesto en los planes de seguridad y de prevención correspondientes. 
      Deberá encargarse de que se rectifique cualquier anomalía que encuentre al respecto.
    -	La empresa usuaria del medio auxiliar deberá solicitar al fabricante o suministrador, tal y como indica el artículo 41 de la Ley de Prevención de Riesgos Laborales, la información necesaria para la correcta y segura utilización del mismo, debiendo entregarla a cada uno de los trabajadores que vayan a utilizarlo.
  -	Caída en altura debido a un deslizamiento lateral de la cabeza de la escalera (apoyo precario, escalera mal situada, viento, desplazamiento lateral del usuario, etc). 
    Es un riesgo evitable. 
    Con el fin de controlarlo se tendrá en cuenta lo siguiente:
  -	Medidas preventivas: con el fin de evitar el deslizamiento lateral, se sujetará la escalera superiormente, atándola correctamente en su cabeza (por ejemplo, durante la fase de encofrado, con tachas clavadas en el mismo y alambre de atar).

=== Caída en altura debidoa  deslizamiento del pie de la escalera

Caída en altura debido a un deslizamiento del pie de la escalera (falta de zapatas antideslizantes, suelo que cede o en pendiente, poca inclinación, apoyo superior sobre pared, etc). 
Es un riesgo evitable. 
Con el fin de controlarlo se tendrá en cuenta lo siguiente:

Medidas preventivas:
-	Todas las escaleras de que se utilicen en la obra deberán disponer de zapatas antideslizamiento. 
  Nuestro recurso preventivo, ordenará/n reparar o retirar todas aquellas escaleras de mano que no dispongan de las citadas zapatas.
-	La inclinación de la escalera deberá ser la correcta tal y como indica el fabricante en la información de seguridad que debe entregar.
-	Estarán firmemente amarradas en su extremo superior al objeto o estructura al que dan acceso.

Nuestro recurso preventivo deberá vigilar que este punto se cumple en todo momento.

=== Caída en altura debido a un desequilibrio

Caída en altura debido a un desequilibrio subiendo cargas o al inclinarse lateralmente hacia los lados para efectuar un trabajo. 
Es un riesgo evitable. 
Con el fin de controlarlo se tendrá en cuenta lo siguiente:

Medidas preventivas:
-	Todos los trabajadores que vayan a utilizar las escaleras de mano deberán tener información y formación sobre utilización de las mismas para el transporte de cargas o la realización de trabajos sobre las mismas, facilitado por el contratista a través del servicio de prevención.
-	Se prohíbe transportar pesos a mano (o a hombro), iguales o superiores a 25 Kg. sobre las escaleras de mano.

=== Caída en altura debidoa  al rotura de un peldaño o montante

Caída en altura debido a la rotura de un peldaño o montante (viejo, mal reparado, existencia de nudos, ...). 
Es un riesgo evitable. 
Con el fin de controlarlo se tendrá en cuenta lo siguiente:

Medidas preventivas:
-	Todas las escaleras de la obra serán inspeccionadas antes de su uso (y al menos una vez al día) por nuestro recurso preventivo, desechando aquellas que no se encuentren en buen estado.
-	No se permitirá la reparación casera de las citadas escaleras.
-	Las escaleras tendrán los largueros de una sola pieza y sin que se observen deformaciones o abolladuras que puedan mermar su seguridad.
-	Los peldaños (travesaños) de madera estarán ensamblados.
-	Las escaleras de madera estarán protegidas de la intemperie mediante barnices transparentes, para que no oculten los posibles defectos.
-	Las escaleras metálicas no estarán suplementadas con uniones soldadas. Además, estarán protegidas con pintura antioxidación que las preserven de las agresiones de la intemperie.
-	Las escaleras de madera deben almacenarse en lugares al amparo de los agentes atmosféricos y de forma que faciliten la inspección.

=== Caída en altura debido a la realización de un gesto brusco

Caída en altura debido a la realización de un gesto brusco del operario (objeto difícil de subir, descarga eléctrica, intento de recoger un objeto que cae, pinchazo con un clavo que sobresale, etc). 
Es un riesgo evitable. 
Con el fin de controlarlo se tendrá en cuenta lo siguiente:

Medidas preventivas:
-	Todos los trabajadores que vayan a utilizar las escaleras de mano deberán tener información y formación sobre utilización de las mismas para el transporte de cargas o la realización de trabajos sobre las mismas, facilitadas por el contratista a cargo del cual realicen los trabajos.
-	Las escaleras se mantendrán limpias.
-	En caso de ser de madera, se comprobará antes de utilizarla que no tiene ningún clavo saliente.

=== Caída en altura debido a la rotura de una escalera de tijera doble o transformable

Caída en altura debido a la rotura de la cuerda de unión entre los dos planos de una escalera de tijera doble o transformable o a una incorrecta utilización de las mismas. 
Es un riesgo evitable. 
Con el fin de controlarlo se tendrá en cuenta lo siguiente:

Medidas preventivas:
-	Todas las escaleras de tijera dispondrán de una cadenilla o similar que limite su apertura máxima.
-	Está totalmente prohibido realizar una reparación casera de los citados limitadores.
-	Las escaleras de tijera deben utilizarse como se han diseñado, no como si fuese una escalera simple.
-	Las escaleras de tijera en posición de uso estarán montadas con los largueros en posición de máxima apertura a fin de no mermar su estabilidad.
-	Las escaleras de tijera nunca se utilizarán a modo de borriquetas para sustentar las plataformas de trabajo.
-	Las escaleras de tijera no se utilizarán, si la posición necesaria sobre ellas para realizar un determinado trabajo obliga a ubicar los pies en los 3 últimos peldaños.
-	Las escaleras de tijera se utilizarán montadas siempre sobre pavimentos horizontales.

=== Atrapamiento entre objetos

-	Atrapamiento entre objetos de algún miembro producido al desencajar los herrajes de ensamblaje de las cabezas de una escalera de tijera o transformable o al desplegar una escalera extensible. 
  Es un riesgo evitable.

Medidas preventivas:

Las escaleras de tijera deberán tener en su articulación superior unos topes de seguridad de apertura.
-	Atrapamiento entre objetos de algún miembro al producirse la rotura de la cuerda de maniobra en una escalera extensible, cuerda mal atada, tanto en el plegado como en el desplegado
  Es un riesgo evitable.

Medidas preventivas:

Nuestro recurso preventivo revisará antes del comienzo de los trabajos y diariamente todas las escaleras de tijera de la obra, desechando u ocupándose de que sean reparadas las que se encuentren en mal estado.

=== Contactos eléctricos directos o indirectos al utilizar una escalera metálica

Contactos eléctricos directos o indirectos al utilizar una escalera metálica para trabajos de electricidad o próximos a conducciones eléctricas.

Medidas preventivas:
-	Las escaleras estarán provistas de zapatas aislantes.
-	En ningún caso deberá estar en contacto la escalera con cables eléctricos conectados (en apoyo inferior, atados a la estructura de la escalera...).

=== Caída en altura debido a un mal uso de las escaleras

Medidas preventivas:
-	Las escaleras deberán sobrepasarán en 1 m la altura a salvar.
-	Se instalarán de tal forma, que su apoyo inferior diste de la proyección vertical del superior, 1/4 de la longitud del larguero entre apoyos.
-	La base de las escaleras de mano nunca debe apoyarse sobre lugares u objetos poco firmes que pueden mermar su estabilidad.
-	El acceso de operarios, a través de las escaleras de mano, se realizará de uno en uno. 
  En ningún caso podrán acceder a la misma dos o más operarios a la vez.
-	El ascenso y descenso y trabajo debe efectuarse frontalmente, es decir, mirando directamente hacia los peldaños que se están utilizando.

=== Caída en altura debido a estar realizando un trabajo sobre la escalera

En principio no debe utilizarse una escalera manual para trabajar, pero en caso de ser necesario y siempre que no sea posible utilizar una plataforma de trabajo se deberán adoptar las protecciones y medidas preventivas que siguen a continuación:

Protecciones individuales:
-	En caso de que los pies del operario se encuentres a más de 2 m del suelo, debe utilizarse un cinturón de seguridad anclado a un punto sólido y resistente
  Nuestro recurso preventivo deberá comprobar su eficacia, paralizando los trabajos ante cualquier anomalía y poniéndola en conocimiento del contratista, el servicio de prevención y el coordinador de seguridad para que puedan dar una solución.
-	Para trabajos de cierta duración deben utilizarse dispositivos que favorezcan la estabilidad y comodidad tales como reposapies que se acoplan a la escalera.

Medidas preventivas:
-	Para realizar el trabajo correctamente, debe situarse la escalera de forma que se  pueda acceder fácilmente al punto de operación sin tener que estirarse o colgarse. 
  En caso de no llegar con facilidad, se deberá variar la situación de la escalera volviendo a verificar los elementos de seguridad de la misma.

=== Electrocución

Medidas preventivas:
-	En ningún caso se trabajará o transportará una escalera a una distancia de menos de 5 ml, tanto en horizontal como en vertical, de una línea de alta o media tensión. 
  Debe ponerse especial cuidado con el transporte de escaleras en las cercanías de líneas eléctricas, debiendo respetar siempre las distancias de separación mínima. 
  No obstante, en esta obra, no se observa ninguna línea ni se tiene constancia de su existencia.
-	Las escaleras deben utilizarse para trabajar de la forma que han sido concebidas, por lo que nunca podrán utilizarse en posición horizontal para servir de puentes, pasarelas o plataformas. 
  Además, tampoco deben utilizarse para servir de soportes a un andamiaje.

=== Caídas de objetos sobre personas

Medidas preventivas:
-	Las escaleras no deben almacenarse en posición inclinada, puesto que podrían deslizarse y caer sobre una persona.
-	Deben almacenarse en posición horizontal, sujetas por soportes fijos, adosados a paredes.

=== Transporte de la escalera

Medidas preventivas:
-	Las escaleras extensibles y de tijera se llevarán plegadas, sin arrastrar los dispositivos de unión de estas últimas por el suelo.
-	En el transporte manual, la parte delantera de las escaleras se llevará hacia abajo, sin hacerla pivotar ni transportarla sobre la espalda.
-	Si se transportan en vehículos se fijarán de forma sólida evitando que sobresalga lateralmente. 
  La escalera no deberá sobresalir ni por la parte anterior ni posterior más de un tercio de su longitud total, señalizándose en este último caso con un trozo de tela color vivo o con una luz roja si se transportan de noche o en condiciones de escasa visibilidad.

=== Comprobaciones a realizar antes de la utilización de las escaleras

Nuestro recurso preventivo deberá inspeccionar el estado de los siguientes elementos:
-	Peldaños: firmeza, aspecto no deteriorado, sujeción original (no sustituida por alambres, cuerdas, ... o cualquier otra invención), etc.
-	Sistemas de sujeción y apoyo: zapatas, cadenillas, rótulas, ... o cualquier otro elemento que garantice la estabilidad de la escalera.
-	Otros elementos auxiliares: como por ejemplo cuerdas y enganches de escaleras extensibles.

Ante cualquier anomalía de los descritos u otros, se deberá retirar de circulación la escalera, informando de ello, nuestro recurso preventivo, a la totalidad de los usuarios de la misma. 
Esta deberá ser reparada por personal especializado o retirada definitivamente.

== Identificación de riesgos y medidas preventivas a adoptar con la diferente maquinaria y herramienta a utilizar en la obra

En este apartado, se cita una relación de la maquinaria y herramienta que previsiblemente se utilizará en la ejecución del proyecto, así como de unos procedimientos de trabajo seguro necesarios para su utilización.

En cada punto se identifican los riesgos propios tipo existentes por la utilización de cada tipo de maquinaria y herramienta y, en su caso, por el montaje y desmontaje de la misma. 
También se indican las medidas preventivas y protecciones a adoptar para controlar y reducir dichos riesgos. 
En el plan de seguridad deberá definirse qué maquinaria y herramienta se van a utilizar, identificando los riesgos propios e indicando las medidas preventivas a adoptar, teniendo en cuenta en todo momento lo estipulado por el fabricante. 
La empresa contratista deberá incluir en el plan de seguridad lo estipulado en el plan preventivo propio referente a la maquinaria y herramienta a utilizar en la obra.

Si durante el transcurso de la obra se necesitase otro tipo de maquinaria no prevista en este plan de seguridad, se añadirá al plan de seguridad realizando un anexo al mismo que las incluya. 
Debiendo ser aprobado, dicho anexo, por el coordinador de seguridad en fase de ejecución antes de su aplicación.

Toda la maquinaria dispondrá de certificado CE, cumpliendo con lo establecido en el RD 1215/97.

Todas aquellas máquina y herramientas que estén averiadas serán apartadas y etiquetadas de forma visible con la indicación de maquina averiada, no debiéndose emplear ni reparar por personal no cualificado.

Se llevará un registro de las máquinas y herramientas al día, realizándose una revisión semanal de las instalaciones, máquinas y herramientas y dejando constancia de dichas revisiones en la ficha de registro.

Para la definición de cada maquinaria o herramienta, se ha adoptado la forma indicada a continuación:
-	Descripción de la maquinaria o herramienta: se describe la maquinaria o herramienta tipo a utilizar, teniendo en cuenta que cada contratista deberá definirla más concretamente en su plan de seguridad.
-	Identificación de riesgos: se aporta una relación de los riesgos propios de la utilización de la maquinaria y herramienta. 
  Dentro de este epígrafe se define, para cada riesgo, lo siguiente
-	Protecciones colectivas: en caso de utilizar unas protecciones colectivas particulares para la realización de los trabajos que no estén indicadas en el apartado de “Protecciones colectivas a utilizar durante el proceso constructivo” del presente Plan de seguridad, se indican en este punto, en caso contrario no mencionan.
-	Protecciones individuales: se indica qué protecciones individuales particulares será necesario emplear para la correcta utilización del medio auxiliar.
-	Medidas preventivas: se citan las normas preventivas necesarias para la utilización de la maquinaria y herramienta.
-	Comprobaciones a realizar antes de la utilización de la maquinaria o herramienta (si procede).

=== Pequeña herramienta eléctrica (tipo taladro, radial, ...)

Descripción de la maquinaria:

En este apartado quedan incluidas las máquinas manuales alimentadas por batería o en algún caso mediante conexión a la red eléctrica. 
Fundamentalmente la amoladora y el taladro.

Identificación de riesgos:

En general en este tipo de herramienta serán los siguientes:
-	Golpes y/o cortes.
-	Atrapamientos por partes móviles.
-	Proyección de fragmentos o partículas.
-	Inhalación de polvo.
-	Ruido y vibraciones.
-	Contactos eléctricos directos o indirectos.

Protecciones individuales:
-	Gafas de seguridad integrales que protejan contra impactos de alta energía, incluso si provienen de ángulos laterales. 
  Es conveniente que tengan tratamiento antivaho.
-	Guantes anticorte si la manipulación del material a trabajar puede dar lugar a cortes.
-	Mandil de cuero cuando sea necesario adoptar posturas peligrosas, para minimizar el riesgo de un contacto fortuito del disco con el cuerpo.
-	Mascarilla auto filtrante contra partículas.
-	Orejeras de protección contra ruido.
-	Calzado de seguridad.
-	Casco de seguridad con barbuquejo.
-	Ropa de trabajo adecuada.

Medidas preventivas:
-	Respetar en todo momento las recomendaciones de seguridad hechas por los fabricantes en sus manuales.
-	Comprobar el estado de la máquina antes de utilizarla.
-	Utilizar indumentaria adecuada, evitando ropa floja o deshilachada que se pueda enganchar con la máquina.
-	No utilizar la máquina sin el protector.
-	Para la máquina después de cada fase de trabajo.
-	Utilizar la broca/disco adecuado en cada momento, comprobando el estado correcto de los mismos.
-	Comprobar periódicamente su aislamiento y el estado del cable de alimentación, conectarlo a una toma compatible con clavija, no tirar del cable, no dejarlos cerca de fuentes de calor o humedad.
-	Al realizar perforaciones con el taladro no realizar movimientos oscilatorios para agrandar la perforación.
-	Evitar el calentamiento de brocas y discos.
-	Desconectar las máquinas antes de cambiar las brocas o los discos.
-	No se prevé realizar trabajos en proximidad de productos químicos, pero si así fuera se deberán de aislar los trabajos mediante pantallas protectoras.

=== Pequeña herramienta de mano (tipo martillo, tenaza, destornillador, ...)

En este apartado quedan incluidas las herramientas manuales sin ninguna otra fuerza motriz que no sea la humana.

Identificación de riesgos:

Se estará a lo dispuesto en las NTP-391, 392 y 393.

En general en este tipo de herramienta serán los siguientes:
-	Golpes y/o cortes ocasionados por las propias herramientas.
-	Proyección de fragmentos o partículas.
-	Esguinces por sobreesfuerzos o gestos violentos.

Protecciones individuales:
-	Gafas de seguridad integrales que protejan contra impactos, incluso si provienen de ángulos laterales.
-	Guantes de protección mecánica.

Medidas preventivas:
-	La herramienta será proporcionada a las dimensiones del usuario.
-	Apropiada para el trabajo a desempeñar.
-	Hacer un uso apropiado de la herramienta.
-	Adiestrar al trabajador para el uso de cada herramienta que vaya a utilizar.
- No trabajar con herramientas estropeadas.

=== Camión grúa / camión de transporte

Descripción de la maquinaria:

En este apartado está incluido el camión utilizado para la carga y descarga de materiales, así como el izado de los mismos a la cubierta del establecimiento.

Identificación de riesgos:
-	Vuelco del camión.
-	Atrapamientos.
-	Caídas al subir (o bajar) a la zona de mandos.
-	Atropello de personas.
-	Desplome de la carga.
-	Golpes por la carga a paramentos (verticales u horizontales).

Protecciones individuales:
-	Casco de polietileno (siempre que se abandone la cabina en el interior de la obra y exista el riesgo de golpes en la cabeza).
-	Guantes de cuero.
-	Botas de seguridad.
-	Ropa de trabajo.
-	Calzado para conducción.

Medidas preventivas:
-	Se prohíbe superar la capacidad de carga del gancho instalado.
-	No se superará la capacidad de carga de la grúa instalada sobre el camión.
-	Las maniobras sin visibilidad, así como dar marcha atrás, serán dirigidas por un señalista. 
  Las operaciones de guía de carga se realizarán mediante cuerdas de guía segura de cargas. 
  Se mantendrá la máquina alejada de terrenos inseguros, propensos a hundimientos.
-	Se evitará pasar el brazo de la grúa (con carga o sin ella) sobre el personal. 
  Suba y baje del camión grúa por los lugares previstos para ello.
-	Antes de cruzar un puente de obra, cerciórese de que tiene la resistencia necesaria para soportar el peso de la máquina.
-	Antes de iniciar ningún desplazamiento, asegure la inmovilidad del brazo de la grúa poniéndolo en la posición de viaje.
-	No se permitirá que nadie se encarame sobre la carga ni que se cuelgue del gancho, ni que el resto de personal acceda a la cabina o maneje los mandos.
-	No se realizarán arrastres de carga o tirones sesgados.
-	Se mantendrá la carga siempre a la vista. 
  Si debe mirar hacia otro lado, pare las maniobras.
-	Levante una sola carga de una vez. 
  La carga de varios objetos distintos puede resultar complicada y peligrosa.
-	Antes de levantar cargas, asegúrese de que la máquina está estabilizada mediante los gatos totalmente extendidos.
-	Se prohíbe abandonar la máquina con una carga suspendida, no es seguro. 
  No se permitirá que haya operarios bajo las cargas suspendidas.
-	Asegúrese de que todos los ganchos de los aparejos, eslingas o estrobos poseen el pestillo de seguridad.
-	Siempre utilizará las prendas de protección que se indiquen en la obra.

Normas de seguridad para los operadores del camión grúa:
-	Mantenga la máquina alejada de terrenos inseguros, propensos a hundimientos. 
  Pueden volcar y sufrir lesiones.
-	Evite pasar el brazo de la grúa, con carga o sin ella sobre el personal.
-	No dé marcha atrás sin la ayuda de un señalista. 
  Tras la máquina puede haber operarios y objetos que usted desconoce al iniciar la maniobra.
-	Suba y baje del camión grúa por los lugares previstos para ello. 
  Evitará las caídas.
-	No salte nunca directamente al suelo desde la máquina si no es por un inminente riesgo para su integridad física.
-	Si entra en contacto con una línea eléctrica, pida auxilio con la bocina y espere recibir instrucciones. 
  No intente abandonar la cabina aunque el contacto con la energía eléctrica haya cesado, podría sufrir lesiones. 
  Sobre todo, no permita que nadie toque el camión grúa, puede estar cargado de electricidad.
-	No haga por sí mismo maniobras en espacios angostos. 
  Pida ayuda de un señalista y evitará accidentes.
-	Antes de cruzar un “puente provisional de obra”, cerciórese de que tiene la resistencia necesaria para soportar el peso de la máquina. Si lo hunde, usted y la máquina se accidentarán.
-	Asegure la inmovilidad del brazo de la grúa antes de iniciar ningún desplazamiento. 
  Póngalo en la posición de viaje y evitará accidentes por movimientos descontrolados.
-	No permita que nadie se encarame sobre la carga. 
  No consienta que nadie se cuelgue del gancho. 
  Es muy peligroso.
-	Limpie sus zapatos del barro o grava que pudiera tener antes de subir a la cabina. 
  Si resbalan los pedales durante una maniobra o durante la marcha, puede provocar accidentes.
-	No realice nunca arrastres de carga o tirones sesgados. 
  La grúa puede volcar y en el mejor de los casos, las presiones y esfuerzos realizados pueden dañar los sistemas hidráulicos del brazo.
-	Mantenga a la vista la carga. 
  Si debe mirar hacia otro lado, pare las maniobras. 
  Evitará accidentes.
-	Levante una sola carga cada vez. 
  La carga de varios objetos distintos puede resultar problemática y difícil de gobernar.
-	Asegúrese de que la máquina está estabilizada antes de levantar cargas. 
  Ponga en servicio los gatos estabilizadores totalmente extendidos, es la posición más segura.
-	No abandone la máquina con una carga suspendida, no es seguro.
-	No permita que haya operarios bajo las cargas suspendidas. 
  Pueden sufrir accidentes.
-	Antes de izar una carga, compruebe en la tabla de cargas de la cabina la distancia de extensión máxima del brazo. 
  No sobrepase el límite marcado en ella, puede volcar.
-	Respeta siempre las tablas, rótulos y señales adheridas a la máquina y haga que las respeten el resto del personal.
-	Evite el contacto con el brazo telescópico en servicio, puede sufrir atrapamientos.
-	Antes de poner en servicio la máquina, compruebe todos los dispositivos de frenado. 
  Evitará accidentes.
-	No permita que el resto del personal acceda a la cabina o maneje los mandos. 
  Pueden provocar accidentes.
-	No consienta que se utilicen aparejos, balancines, eslingas o estrobos defectuosos o dañados.
-	Asegúrese de que todos los ganchos de los aparejos, balancines, eslingas o estrobos posean pestillo de seguridad que evite el desenganche fortuito.
-	Utilice siempre las prendas de protección que se le indiquen en la obra.

=== Carretilla elevadora

Riesgos detectables más comunes:
-	Caída de cargas transportadas.
-	Caída de elementos grandes.
-	Caída de pequeños elementos.
-	Caída de objetos almacenados.
-	Caída del conductor (al subir o bajar y en marcha).
-	Caída o basculamiento de la carretilla.
-	Vuelco de la carretilla (circulando).
-	Colisiones y choques con estructuras fijas, con obstáculos en el suelo o con otros vehículos.
-	Caída de una persona transportada.
-	Contactos con órganos móviles de la carretilla.
-	Condiciones climáticas.
-	Exposición a ruidos.
-	Vibraciones del vehículo.
-	Polución de la atmósfera. 
  Incendios y explosiones.
-	Naturaleza del producto transportado.

Prendas de protección personal recomendables:
-	Mono de mangas adaptado a las condiciones climáticas (evitar bolsillos exteriores, presillas u otras partes susceptibles de engancharse a los mandos).
-	Guantes, resistentes y flexibles.
-	Calzado de seguridad, con punteras metálicas y con suelas antideslizantes.
-	Casco de seguridad.
-	Cinturón lumbo-abdominal.

Normas preventivas y protecciones colectivas:
-	Las carretillas automotoras elevadoras utilizadas dispondrán de marcado CE.
-	Antes de iniciar la jornada, el conductor debe realizar una inspección de la carretilla  que contemple las ruedas, la fijación y estado de los brazos de la horquilla, la inexistencia de fugas en el circuito hidráulico, niveles de aceite, mandos en servicio, protectores y dispositivos de seguridad, frenos de pie y de mano, etc. 
  En caso de avería o deficiencia, la carretilla quedará fuera de uso, advirtiéndolo mediante una adecuada señalización.
-	El conductor de la carretilla será una persona autorizada para ello, y no se permitirá que ninguna otra persona suba, expresamente durante el trabajo.
-	El conductor mirará siempre en la dirección de avance y mantendrá la vista en el camino que recorre. 
  Se prohíbe circular por encima de 20 km/h en espacios exteriores y 10 km/h en espacios interiores. 
  Además, se disminuirá la velocidad en cruces y lugares con poca visibilidad.
-	Se circulará por el lado de los pasillos de circulación previstos a tal efecto,  manteniendo una distancia prudencial con otros vehículos que le precedan y evitando los adelantamientos.
-	Se deberán respetar las normas del código de circulación, especialmente en áreas en las que pueden encontrarse con otros vehículos.
-	Hay que evitar las paradas y arranques bruscos y virajes rápidos.
-	Transportar únicamente cargas preparadas correctamente y asegurarse que no chocará con techos, conductos, etc.
-	Antes de abandonar la carretilla, el conductor se asegurará de que las palancas están en punto muerto, motor parado, frenos echados, llave de contacto sacada o la toma de batería retirada. 
  Si la carretilla está en pendiente, se calzarán las ruedas.
-	No sobrecargar nunca la carretilla elevadora, respetando escrupulosamente el diagrama de cargas del vehículo. 
  Igualmente actuar con relación a la sobrecarga por una excesiva distancia entre el centro de gravedad de la carga y el mástil.
-	Está rigurosamente prohibido maniobrar la carretilla desde el exterior. 
  Cualquier operación (desplazamiento, elevación, et.) se realizará desde la cabina del operador.
-	Las cargas a transportar / elevar con las horquillas estarán paletizadas, empaquetadas en cajas o flejadas según los casos.
-	Está prohibido circular con cargas levantadas. 
  Durante los desplazamientos, la carga estará baja (15 cm del suelo), con el mástil completamente inclinado hacia la cabina.
-	Está prohibido el izado de cargas mientras se desplaza el vehículo. 
  El proceso correcto es: acercar el vehículo al punto de carga/descarga, parar el vehículo, elevar la carga, depositar la carga. 
  El operador siempre debe mirar en el sentido de la marcha del vehículo, incluso en las operaciones de carga y descarga.
-	Está prohibido el desplazamiento y estancia de trabajadores en el entorno de una carretilla con cargas elevadas.

Normas de actuación preventiva para los maquinistas:

Durante la manipulación de cargas:
-	Se constituirán correctamente las cargas, paletas, o los elementos bien solidarizados con flejado o recubrimiento en vacío.
-	La manipulación de cargas se efectuará guardando siempre la relación dada por el fabricante entre la carga máxima y la altura a la que se ha de transportar y descargar.
-	Se recogerá la carga y se elevará 15 cm sobre el suelo, circulando con el mástil inclinado al máximo hacia atrás.
-	Para elevar la carga, se mantendrá la carretilla frenada. 
  Para alturas superiores a 4 metros se programarán las alturas de descarga y carga con un sistema automático que compense la limitación visual.
-	Para descargar, se situará la carretilla hasta que la carga se encuentre sobre el lugar de descarga, se situarán las horquillas en posición horizontal y se depositará la carga.
-	La circulación sin carga se hará con las horquillas bajas.
-	El ascenso de rampas se hará siempre marcha adelante, pero para el descenso, si la pendiente es superior a la inclinación máxima de la horquilla, se realizará marcha atrás.
-	Se debe utilizar una carretilla compatible con el local donde debe operar.
-	El suelo debe ser resistente al paso de las carretillas y antiderrapantes de acuerdo con el tipo de rueda y llanta utilizada.
-	Deberá eliminarse cualquier tipo de agujero, saliente u obstáculo en zonas de circulación de carretillas.
-	La anchura de los pasillos no debe ser inferior en sentido único a la anchura del vehículo o a la carga incrementada un metro.
-	La anchura para el caso de circular en dos sentidos de forma permanente no debe ser inferior a dos veces la anchura de los vehículos o cargas incrementado en 1,40 metros.
-	Cuando se circule detrás de otros vehículos, respetar la distancia de seguridad, considerando para determinar ésta, la horquilla y la carga desplazada.

Durante las operaciones de mantenimiento:
-	El entretenimiento deberá realizarlo únicamente el personal cualificado y autorizado.
-	Se revisarán periódicamente los frenos, dirección, avisadores, iluminación, reguladores, válvulas de descarga y mecanismos de inclinación y elevación, dispositivos de protección y seguridad, sistema hidráulico, neumático, etc.
-	Se empleará el siguiente equipo de protección individual: mono de mangas, guantes resistentes y flexibles, calzado de seguridad con puntera metálica y suela antideslizante, casco, y cinturón lumbo - abdominal para jornadas largas.
-	Se prohíbe expresamente, transportar a personas sobre la horquilla.
-	Se prohíbe transportar a otra persona, salvo si el aparato está adaptado, pero con las mismas seguridades que el carretillero.
-	En locales con riesgo de incendio y explosión, se emplearán carretillas antideflagrantes o eléctricas, preferiblemente.
-	Las carretillas estarán dotadas de un extintor, para evitar riesgos de incendio.
-	El abastecimiento de combustible se realizará al aire libre, prohibiéndose fumar durante la operación.

=== Plataforma elevadora móvil personal / brazo articulado

Riesgos detectables más comunes:
-	Los derivados de desplazamientos incontrolados de la plataforma elevadora.
-	Proyecciones de objetos y/o fragmentos.
-	Aplastamientos.
-	Atrapamientos.
-	Atropellos y/o colisiones.
-	Caída de objetos y/o de máquinas.
-	Caídas de personas a distinto nivel.
-	Contactos eléctricos directos.
-	Contactos eléctricos indirectos.
-	Derrumbamientos.
-	Desprendimientos.
-	Golpes y/o cortes con objetos y/o maquinaria.
-	Sobreesfuerzos.
-	Vuelco de máquinas y/o camiones.

Prendas de protección personal recomendables:
-	Casco de polietileno (preferible con barbuquejo).
-	Ropa de trabajo.
-	Calzado antideslizante.
-	Cinturón de seguridad clase C.
-	Gafas de seguridad anti-polvo.
-	Guantes de protección contra riesgo mecánico.
-	Mascarilla anti-polvo.
-	Tapones o auriculares para los oídos.

Antes de comenzar a trabajar:
-	Antes del manejo de la plataforma por cualquier trabajador, estará autorizado y formado en su manejo.
-	El Recurso Preventivo deberá ser conocedor cada día de los trabajos realizados y de la realización de posibles trabajos simultáneos en la zona para ubicar la plataforma en sitio adecuado.
-	Situar, en caso necesario, las protecciones adecuadas respecto a la zona de circulación de peatones, trabajadores o resto de vehículos.
-	Conocer el lugar de trabajo, especialmente el tipo de terreno, presencia de líneas eléctricas aéreas y puntos donde puedan existir restricciones de altura, anchura o peso.
-	Mantener las siguientes distancias límites de aproximación a las líneas eléctricas aéreas: al menos 3,00 m para tensiones de hasta 66 kV, un mínimo de 5,00 m para tensiones entre 66 kV y 220 kV y al menos 7,00 m para tensiones de 380 kV.
-	No utilizar nunca la plataforma bajo condiciones atmosféricas adversas (lluvia, nieve, iluminación insuficiente, etc), o con fuertes vientos.

Al arrancar la plataforma:
-	Antes de arrancar el motor, comprobar que no haya trabajadores en el radio de acción de la plataforma.
-	Seguir las indicaciones del fabricante para arrancar el motor de la plataforma.
-	Desde el cuadro de control del chasis, realizar una prueba de funcionamiento para comprobar, mediante maniobras lentas, que todos los mandos responden perfectamente, especialmente los mandos de parada de emergencia y de bajada de emergencia de la plataforma.
-	Comprobar que no se producen ruidos o vibraciones extrañas.
-	El cuadro de control del chasis sólo se debe utilizar en las operaciones de puesta en marcha y parada, en las pruebas de funcionamiento y en casos de emergencia y nunca durante las operaciones rutinarias con la plataforma.
-	La plataforma deberá estar situada siempre en la posición más baja posible, tanto para acceder como para descender de la máquina.
-	No subir o bajar de la plataforma cuando esté elevada trepando por la estructura extensible o empleando escaleras, tablones o cualquier otro sistema de acceso.
-	Subir y bajar de la plataforma de forma frontal, empleando los peldaños y asideros dispuestos en la máquina. 
  No saltar de la máquina, salvo en casos excepcionales de emergencia.
-	Deben llevarse y mantenerse las manos secas y las suelas del calzado limpias de barro y/o grasa.
-	Cerrar la puerta o colocar la barra de protección después de acceder a la plataforma.

Al circular con la plataforma:
-	Asegurar en todo momento que nadie pueda permanecer dentro del radio de acción de la máquina durante su desplazamiento.
-	Seguir siempre con la vista la trayectoria de la plataforma.

=== Medios auxiliares y elementos de izado

Riesgos detectables más comunes:
-	Caída de personas al mismo nivel.
-	Caída de objetos por desplome.
-	Caída de objetos por manipulación.
-	Caída de objetos desprendidos.
-	Pisadas sobre objetos
-	Golpes contra objetos inmóviles.
-	Atrapamientos por o entre objetos.
-	Sobreesfuerzos.

Prendas de protección personal recomendables:
-	Casco de seguridad.
-	Calzado de seguridad.
-	Guantes de protección contra riesgos de origen mecánico.
-	Sistema anticaídas si se trabaja en altura y no es posible disponer protecciones colectivas.

Medidas preventivas y protecciones colectivas:
-	Se desecharán y destruirán aquellos que no tengan marcada la carga de trabajo y etiqueta de homologación o estén desgastados, cortados, doblados, desgarrados, etc.
-	Se evitarán dobleces y cantos vivos que puedan deteriorarlos o cortarlos.
-	Cada uno de los elementos auxiliares que se utilicen en las maniobras (eslingas, ganchos, grilletes, etc.) tendrán capacidad de carga suficiente para soportar, sin deformarse, las solicitaciones a las que estarán sometidos.
-	Eslingas y cuerdas se almacenarán a cubierto, en lugar seco, bien ventilado y nunca tiradas por el suelo, evitando que entre arena entre los cordones.
-	Se evitará su uso en la proximidad de fuentes de calor importantes. 
  Siempre que sea posible se emplearán eslingas para el izado de cargas.
-	El ángulo formado entre eslingas será de 90º como máximo, siendo recomendable un ángulo de 45º. 
  Para conseguir dicho ángulo se emplearán, si es preciso, eslingas de diferentes medidas.
-	Se desecharán aquellos cables cuyos hilos rotos, contados a lo largo de un tramo de cable de longitud inferior a ocho veces su diámetro, superen el 10% del total de los mismos.
-	Para garantizar su mantenimiento se utilizará el tipo de grasa recomendado por el fabricante.
-	La sección del elemento de la eslinga de izado ha de soportar la carga de rotura: carga de elevación x coeficiente de seguridad.
-	El factor de seguridad contra rotura de los cables será igual o mayor a 6 y de 10 en el caso de cuerdas. 
  Los cables estarán siempre libres de nudos y en ningún caso llevarán ningún empalme.
-	Si se emplean cadenas serán de hierro forjado o acero, con un factor de seguridad contra rotura igual o mayor a 5. 
  Se mantendrán libres de nudos y torceduras, retirándose aquellas que presenten algún eslabón torcido, alargado, aplastado o abierto.
-	Las fibras de las cuerdas fundidas y ennegrecidas / oscurecidas suelen ser indicativas de daño por quemadura, al igual que las salpicaduras de adhesivo en caliente. 
  El ataque químico suele detectarse por la presencia de manchas o por el debilitamiento y ablandamiento de la tela, de manera que las fibras superficiales pueden ser extraídas o eliminadas al frotarlas. 
    Los ganchos estarán homologados, quedando prohibida la utilización como gancho de alambre o hierro doblados en forma de S.
-	Los ganchos dispondrán de pestillo o cierre de seguridad, el cual deberá cerrarse siempre. 
  La garganta tendrá la amplitud suficiente como para permitir el cierre de dicho pestillo, una vez alojada en su interior las eslingas correspondientes.
-	Los ganchos abiertos o doblados serán inmediatamente substituidos.
-	El esfuerzo será soportado siempre por la garganta del gancho, nunca por el pico.
-	En los trabajos de izado de cargas el personal que los ejecute dispondrá permanentemente de cinturón de seguridad anclado a elemento seguro y estable distinto de cualquier elemento de la maquinaria de elevación.

*FOTO*

== Materiales

En el presente capítulo, se pretende identificar qué materiales pueden aportar riesgos químicos o físicos, indicando qué medidas preventivas deberán tomarse para controlarlos.

No obstante, siempre deberán tenerse en cuenta las recomendaciones de seguridad dadas por los fabricantes o suministradores de los materiales (art. 41 de la L.P.R.L.).

=== Espuma de poliuretano

Riesgos químicos:
-	La espuma de poliuretano es un material muy agresivo, que puede producir serios daños en contacto con la piel. 
  Para evitar dicho riesgo, los operarios que trabajen con él o sus derivados deberán estar provistos en todo momento de guantes de goma largos, mono de trabajo, protectores oculares (gafas antiproyecciones) y mascarilla con filtro adecuado, que les protejan del citado contacto.
-	Como medida preventiva a tener en cuenta, los operarios no deberán comer ni beber durante la manipulación del producto en estado puro, debiendo llevar una buena higiene personal.
-	Para evitar daños en operarios que estén realizando otros trabajos, se acotará una zona de seguridad, siendo obligación de nuestro recurso preventivo vigilar que nadie se la salte. 
  Además, se colocará un cartel señalizador que informe a todos los trabajadores del peligro existente.

Riesgos físicos:
-	Dado que para su aplicación (bien sea en forma de mortero, bien sea en forma de hormigón) es fácil (riesgo no evitable) que salte alguna gota o esquirla directamente a los ojos, deberá tenerse en cuenta y protegerse con algún tipo de protector ocular (por ejemplo, gafas).

Otros riesgos:
-	La espuma de poliuretano es un material muy inflamable, por lo que está totalmente prohibido fumar o encender cualquier fuego tanto durante su aplicación como en las cercanías del material aplicado o acopiado. 
  Nuestro recurso preventivo, deberán vigilar que esto se está realizando de esta forma, advirtiendo a todo aquel operario que desobedezca las normas. 
  Además, deberá colocarse un cartel señalizador que informe a todos los trabajadores del peligro existente tanto en almacenes como en lugar de trabajo.
-	Dado que puede producirse un incendio aún habiendo tomado las medidas necesarias, para que no ocurra (un accidente), deberá existir un extintor portátil en el lugar de trabajo, debiendo tener los operarios encargados de la manipulación del producto formación suficiente sobre el uso correcto de los medios de extinción de incendios disponibles.

== Plan de emergencias de la obra
=== Medidas preventivas y de seguridad para accidentes

-	Se nombrará a personas encargadas de llamar a los servicios de emergencia en caso de emergencias. 
  Dispondrán de toda la información de teléfonos, personas de contacto.

=== Actiación en caso de incendio

-	El aviso de fuego deberá comunicarse al encargado de obra, director de obra, técnico, capataz o cualquier persona con posibilidades de utilizar radiocomunicación o telecomunicación.
-	El aviso se hará llegar al:
  -	Servicio de Extinción de Incendios (Bomberos de CIUDAD REAL) Tel.: 926 27 48 21
  -	Emergencias Telf.: 112
-	Se deberá comunicar si es posible la siguiente información:
  -	Tipo de combustible.
  -	Fuerza y dirección del viento.
  -	Marcha del fuego.
  -	Causas que han motivado el fuego.
  -	Estado de las víctimas.
  -	Qué asistencia están recibiendo.
-	Evacuación del lugar del accidente.
-	En todas las áreas de trabajo o en los vehículos del Jefe de Obra y Encargados según el caso deberán existir botiquines.
-	Si el accidente no es grave se deberá acudir al centro asistencial que cada empresa tenga con su Mutua de Accidentes de Trabajo. 
  Ver hoja de teléfonos de emergencia.
-	La obra dispone de vehículos, de tal manera que cualquier trabajador que se encuentre en la obra siempre tiene a su disposición uno de ellos. 
  Estos vehículos serán los utilizados para el traslado de los heridos leves hasta el centro asistencial correspondiente y para recibir a los servicios médicos en el punto S.O.S. correspondiente.

=== Plan de actuación en caso de evacuación

Procedimiento de evacuación:
-	Decisión y preparativos previos:
  -	Declarada una situación de emergencia, el Jefe de Emergencia asumirá la responsabilidad de ordenar evacuar total o parcialmente de la zona de obras. 
    En cualquier caso, se determinará el alcance de la evacuación, la urgencia (con tiempo o sin tiempo) y establecimiento de servicios mínimos, si se precisan. 
    Avisar a los Servicios de Ayuda más próximos si la emergencia puede afectarles.
-	Evacuación del a zona de trabajo:
  -	Todas las personas afectadas reaccionarán a la orden de evacuación. 
    Realizarán un barrido del área comprobando que no quedan rezagados en la obra.
-	Punto de reunión:
  -	Zona fuera de las instalaciones donde se dirigirá el personal una vez evacuado.
-	Llegada de los servicios de ayuda exterior:
  -	El Jefe de Emergencia les informará de la situación; asumiendo éstos el mando y actuaciones necesarias para el control de la emergencia. 
    El personal desalojado permanecerá a disposición de los Servicios de Ayuda Externa (especialmente el Jefe de Emergencia o encargado), colaborando con estos si su ayuda es requerida.
-	Finalizada la Emergencia:
  -	Previo informe favorable de los Servicios de ayuda exterior, el Jefe de emergencia ordenará restablecer el orden cuando se comunique la situación de “todo seguro” y adoptará las medidas necesarias para evitar su repetición.
  -	Una vez finalizada la situación de emergencia será el Encargado el que se ocupará de retirar los extintores usados para recarga inmediata, aunque sólo hayan sido vaciados parcialmente.
  - En caso de incendio, la obra será evacuada por el área más alejada del mismo. 
    El recorrido de evacuación hacia el Centro de salud más cercano.

=== Implantación del plan

-	Responsabilidad del Plan de Emergencia.
-	Corresponde al titular de la actividad responsabilizarse de la puesta en marcha del Plan de Emergencia, según la Legislación vigente el personal directivo, mandos intermedios, técnicos y trabajadores están obligados a participar en el Plan de Emergencias, L.P.R.L. 31/95.
-	Programa de implantación.
-	Siguiendo un orden de prioridades y estableciendo el correspondiente calendario, se realizarán las actividades siguientes para la implantación del Plan de Emergencia.
-	Estudio, discusión u ajuste del documento.
-	Elección del personal componente de los equipos de emergencia.
-	Distribución de consignas, dirección, teléfonos y formación específica de los integrantes de la organización de emergencia.

=== Normas a seguir ante un accidentado por electricidad

-	Antes de iniciar cualquier maniobra, comprobar que no está en contacto con un conductor en tensión. 
  En caso contrario se producirá una operación posiblemente peligrosa y delicada. El desprendimiento de la víctima, teniendo en cuenta que la humedad hace esta operación más peligrosa.
-	Se cortará inmediatamente la corriente si el aparato de corte se encuentra en las cercanías del accidentado. 
  En el caso que no se pueda efectuar el corte de corriente, la persona que efectúe el desprendimiento, deberá:
  -	Aislarse a la vez de la Tensión y la Tierra.
  -	Protegerse con guantes, utilizando pértigas y ganchos y banquetas aislantes, apropiadas a la Tensión de que se trate.
  -	Separar inmediatamente al accidentado del conductor teniendo la precaución de no entrar en contacto directo o por intermedio de un objeto metálico con un conductor en tensión.
-	Si la víctima está inanimada, se procederá con toda urgencia a la respiración artificial, utilizando preferentemente el método “boca a boca”.
-	Si después de haber efectuado una docena de insuflacciones por el método boca a boca, se observase indicios de parada circulatoria (palidez, ausencia de pulso en el cuello y muñeca, dilatación de las pupilas), se procederá a practicar simultáneamente el masaje cardiaco externo.
-	No se perderá en mover al accidentado, salvo si es para retirarlo de una atmósfera viciada.
-	Si en el momento de ocurrir el accidente hubiera varias personas presentes, una de ellas avisará al Médico, pero en ningún caso se moverá a la víctima ni se dejará de practicar la reanimación.
-	Una vez que la víctima esté reanimada se permanecerá a su lado, en el caso que la respiración natural cediese. 
  Es preciso tener en cuenta que esté tipo de accidentes, al recobrar el conocimiento, a veces presentan movimientos convulsivos.
-	Todo electrocutado, por pequeño que haya sido el período de la pérdida de conocimiento, será reconocido necesariamente por un Médico.

=== Accidente laboral

En caso de accidente laboral:
-	*LEVE:* El contratista comunicará al Coordinador en materia de seguridad durante la ejecución de la obra, al Director de Obra y a su servicio de Prevención.
-	*GRAVE:* El contratista comunicará al Coordinador en materia de seguridad durante la ejecución de la obra, al Director de Obra, a su servicio de Prevención y a la Autoridad Laboral.
-	*MORTAL:* Se deberá comunicar al Juzgado de Guardia, al Coordinador de Seguridad, al Director de Obra al servicio de prevención de la empresa y a la Autoridad Laboral.

Para la investigación de accidentes se dispone de una serie de actuaciones administrativas a las que se está legalmente obligado.

Cualquier accidente del índole que sea se deberá comunicar al promotor, en este caso, promotor.nombre

=== Vías de evacuación y salidas de emergencia

instaladora.nombre, contratista adjudicatario de la obra: proyecto.nombre conoce que está legalmente obligado, a componer el plan de evacuación de emergencia de cada uno de los puestos de trabajo de esta obra. 
Se trata de una tarea ociosa si se realiza sobre planos antes de su comienzo; le faltaría el rigor y el realismo necesario para hacerla eficaz. 
En consecuencia, declara su voluntad de componer, tajo a tajo en planos de obra para su replanteo permanente, las vías de evacuación necesarias según la marcha de los trabajos. 
Esta tarea será puesta permanentemente en la obra y se divulgará plenamente entre los trabajadores de la misma para lograr su eficacia.

=== Prevención y extinción de incendios

Disposiciones generales:

Se observarán, además de las prescripciones que se establezcan en el presente Plan, las normas y disposiciones vigentes sobre la materia. 
En los trabajos con riesgo específico de incendio se cumplirán, además, las prescripciones impuestas por los Reglamentos y normas técnicas generales o especiales, así como las preceptuadas por las correspondientes ordenanzas municipales.

Se deberá prever en obra un número suficiente de dispositivos apropiados de lucha contra incendios y en función de las características de la obra, dimensiones y usos de los locales y equipos que contengan, características físicas y químicas de las sustancias materiales que se hallen presentes y número máximo de personal que pueda hallarse en los lugares y locales de trabajo.

Medidas de prevención y extinción:

Además de observar las disposiciones anteriores, se adoptarán las prevenciones que se indican a continuación, combinando su empleo, en su caso, con la protección general más próxima que puedan prestar los servicios públicos contra incendios.
-	Extintores portátiles: En la proximidad de los puestos de trabajo con mayor riesgo de incendio y colocados en sitio visible y de fácil acceso, se dispondrán extintores portátiles o móviles sobre ruedas, de espuma física o química, mezcla de ambas o polvos secos, anhídrido carbónico o agua, según convenga a la posible causa determinante del fuego a extinguir. 
  En concreto será necesario colocar un extintor junto a los inversores y otro dentro de los vestuarios. 
  Cuando se empleen distintos tipos de extintores, serán rotulados con carteles indicadores del lugar y clase de incendio en que deben emplearse. 
  Los extintores serán revisados periódicamente y cargados, según los fabricantes, inmediatamente después de usarlos. 
  Esta tarea será realizada por empresas autorizadas.
-	Prohibiciones: En las dependencias y lugares de trabajo con alto riesgo de incendio se prohibirá terminantemente fumar o introducir cerillas, mecheros o útiles de ignición. 
  Esta prohibición se indicará con carteles visibles a la entrada y en los espacios libres de tales lugares o dependencias. 
  Se prohibirá igualmente al personal introducir o emplear útiles de trabajo no autorizados por la empresa y que puedan ocasionar chispas por contacto o proximidad a sustancias inflamables.

Otras actuaciones:

instaladora.nombre prevee, de acuerdo con lo fijado en el Plan de Seguridad y Salud en su caso y siguiendo las normas de las compañías suministradoras, las actuaciones a llevar a cabo para posibles casos de fugas de gas, roturas de canalizaciones de agua, inundaciones, derrumbamientos y hundimientos, estableciendo en el Plan de Seguridad y Salud las previsiones y normas a seguir para tales casos de emergencia.

== Presencia de lso recursos preventivos del contratista

Dadas las características de las obras de construcción y los riesgos previstos, en cumplimiento del artículo 4.3 de la Ley 54/2003 de 12 de diciembre, de reforma del marco normativo de la prevención de riesgos laborales, mediante el cual se incorpora el artículo 32 bis, Presencia de los recursos preventivos, a la Ley de Prevención de Riesgos Laborales, cada contratista deberá asignar la presencia de sus recursos preventivos en la obra.

A estos efectos en el Plan de Seguridad y Salud, el contratista deberá definir los recursos preventivos asignados a la obra, que deberán tener la capacitación suficiente y disponer de los medios necesarios para vigilar el cumplimiento de las medidas incluidas en dicho Plan, comprobando su eficacia.

En el presente Plan, se ha realizado una estimación de dedicación total de recurso preventivo, que debe ser analizada por el / los contratista / s durante la ejecución de los trabajos, debiendo poner los suficientes medios humanos para conseguir que el plan de seguridad sea efectivo y alcance el nivel de protección previsto. 
Se aporta modelo de nombramiento del recurso preventivo en el anexo correspondiente.

== Medicina preventiva

Reconocimientos médicos periódicos:
-	La empresa aportará los certificados de aptitud de todos sus trabajadores.

Primeros auxilios:
-	En la obra se dispondrá de un botiquín con la dotación necesaria para atender primeros auxilios, la cual consistirá en:
  -	Tijeras y pinzas.
  -	20 apósitos estériles adhesivos, en bolsas individuales.
  -	2 parches oculares.
  -	6 triángulos de vendaje provisional.
  -	Gasas estériles de distintos tamaños, en bolsas individuales.
  -	Celulosa, esparadrapo y vendas.
  -	Guantes.
  -	Manta termo aislante.
  -	Mascarilla de reanimación cardiopulmonar
  -	Bolsas de hielo sintético.
  -	Agua o solución salina al 0,9 % en contenedores cerrados desechables.
-	En la obra se dispondrá de información sobre centros médicos, ambulancias y urgencias.

Medidas de higiene personales e instalaciones:
-	Actualmente el local ya dispone de aseos de la propia nave, habilitándose un espacio para vestuarios.

== Conclusión

Con lo anteriormente expuesto, estimamos que queda suficientemente aclarado el alcance del presente Slan de Seguridad y Salud

En autorPSS.localidad, proyecto.fechaLetra

El autor del P.S.S.

autorPSS.firma



= Evaluación de riesgos <evaluacionRiesgos>

//Sergio.codigo:

#let start = <evaluacionRiesgos>
// el siguiente capítulo real (es decir, el próximo "=")
#let end = heading.where(level: 1).after(start, inclusive: false)

// Título visual (NO es heading, así no “interfiere”)
*Índice de Evaluación de riesgos*

#outline(
  title: none,//El título interfiere con el outline, de forma que el índice no aparece
  target: selector(heading)
    .after(start, inclusive: false)
    .before(end, inclusive: false),
  depth: none, // o 10, pero none = todos
)



== Identificación de riesgos

A continuación, se definen e identifican los principales riesgos para la seguridad y la salud de los trabajadores en la ejecución de tareas relacionadas con la instalación y mantenimiento de paneles solares, entendiendo por riesgo laboral, la posibilidad de que un trabajador sufra un determinado daño derivado del trabajo que realiza.

Se distinguirán dos categorías, riesgos generales (los que afectan a todas las labores realizadas tanto en sistemas fotovoltaicos como termosolares) y riesgos específicos (los que afectan a cada tipo de instalación y labores mencionadas en el punto anterior).

=== Riesgos generales

Aquellos que afectan tanto a las tareas de instalación como a las de mantenimiento y conservación de paneles solares para obtención de energía eléctrica y térmica.

//*INSERTAR TABLAS DE RIESGOS Y SEÑALES*

=== Riesgos específicos

Además de los generales anteriormente citados, existen riesgos específicos en función del tipo de instalación de energía solar (térmica o fotovoltaica) y de los trabajos a realizar (montaje o mantenimiento).

==== Instalaciones fotovoltaicas

//*INSERTAR TABLAS DE RIESGOS Y SEÑALES*

== Medidas preventivas

Una vez definidos e identificados los riesgos para los trabajadores, deben establecerse medidas preventivas con el objetivo de eliminar o reducir en lo posible su presencia.

Para lograrlo, la Ley de Prevención de Riesgos Laborales establece que se desarrollen e implementen medidas de protección o técnicas de organización del trabajo que garanticen el máximo grado posible de seguridad y salud de los trabajadores. 
Para ello se aplicarán a cada uno de los puestos de trabajo, y siempre en este orden, medidas de protección colectiva y utilización de equipos de protección individual.

=== Medidas de protección colectiva

Se define protección colectiva como cualquier elemento o dispositivo de seguridad que protege a un conjunto de trabajadores (uno o varios), sin necesidad de que éstos los lleven encima ni realicen ninguna tarea específica.

La protección colectiva es la primera que se debe adoptar frente a un riesgo. 
La mayoría de las protecciones colectivas evitan el riesgo, otras solo lo reducen y controlan, evitando la lesión después de materializarse el riesgo.

//*INSERTAR TABLAS DE MEDIDAS DE PROTECCIÓN*

=== Equipos de protección individual

Una vez evaluadas las medidas de protección colectiva para la eliminación o reducción de los riesgos presentes en las distintas tareas relacionadas con la instalación y mantenimiento de sistemas de aprovechamiento de la energía solar, se aplicará el empleo por parte del trabajador de Equipos de Protección Individual (EPI), al objeto de reducir y controlar los riesgos todavía presentes en los distintos puestos de trabajo.

*Equipo de Protección Individual (EPI)*, es cualquier equipo destinado a ser llevado o sujetado por el trabajador para que le proteja de uno o varios riesgos que puedan amenazar su seguridad o su salud, así como cualquier complemento o accesorio destinado a tal fin. 
Se excluyen de esta definición:

- La ropa de trabajo corriente y los uniformes que no estén destinados a proteger la seguridad o la salud del trabajador.
- Los equipos de los servicios de socorro y salvamento.
- Los EPI´s de los militares, de los policías y de las personas de los servicios de mantenimiento del orden.
- Los EPI´s de los medios de transporte por carretera.
- El material de deporte.
- El material de autodefensa o de disuasión.
- Los aparatos portátiles para la detección y señalización de los riesgos y de los factores de molestia.
- Los Equipos de Protección Individual se clasifican en tres categorías, siendo el proyectista y/o fabricante del EPI y/o su delegado establecido en la Comunidad Económica Europea, el responsable de su clasificación:

*TABLA DE CLASIFICACIÓN DE EPI*

El proceso de fabricación y comercialización de los Equipos de Protección Individual es el siguiente:

+ Las normas UNE-EN establecen las características técnicas de diseño, resistencia y pruebas a las que deben someterse los equipos por parte de los organismos de control autorizados.
+ Los fabricantes de EPI´s, siguiendo las pautas establecidas por las normas UNE-EN, diseñan un prototipo ajustado a esas normas, sometiéndolo a pruebas internas para comprobar que cumple las exigencias.
+ Se presenta el prototipo ante el organismo de control autorizado para realizar las pruebas de comprobación para su homologación. 
  Dichas pruebas vienen definidas en la norma UNE-EN. 
  En caso de que el resultado sea satisfactorio, el fabricante o marca comercial obtiene la declaración de conformidad CЄ (“conforme a exigencias”).
+ A partir de ese momento, el fabricante queda autorizado a fabricar y comercializar el EPI ya homologado. 
  El fabricante debe incluir en el marcado del propio EPI las siglas CЄ, y el código que identifica al organismo de control certificador.
+ El fabricante deberá incluir en el sistema productivo del EPI, un sistema de garantía de calidad CЄ de vigilancia de la producción. 
  Se debe garantizar al usuario que toda la producción reúne las mismas cualidades de diseño, calidad y resistencia.

Los Equipos de Protección Individual proporcionarán una protección eficaz frente a los riesgos que motivan su uso, sin suponer por sí mismos u ocasionar riesgos adicionales ni molestias innecesarias. 
A tal efecto deberán:
-	Responder a las condiciones existentes en el lugar de trabajo.
-	Tener en cuenta las condiciones anatómicas y fisiológicas y el estado de salud del trabajador.
-	Adecuarse al portador, tras los ajustes necesarios.

En caso de riesgos múltiples que exijan la utilización simultánea de varios equipos de protección individual, éstos deberán ser compatibles entre sí y mantener su eficacia en relación con el riesgo o riesgos correspondientes. 
En cualquier caso, los equipos de protección individual que se utilicen, deberán reunir los requisitos establecidos en cualquier disposición legal o reglamentaria que les sea de aplicación, en particular en lo relativo a su diseño y fabricación.

Las normas sobre seguridad, en cuanto a elección, utilización y mantenimiento de los EPI´s, establecen condiciones mínimas que hay que cumplir, lo que no impide que puedan ser mejoradas o superadas.

Los epi deberán utilizarse cuando existan riesgos para la seguridad y salud de los trabajadores, que no hayan podido evitarse o limitarse suficientemente por medios técnicos de protección colectiva o mediante medidas, métodos o procedimientos de organización del trabajo.

En función de los riesgos establecidos y como complemento a las medidas de protección colectiva, los EPI a utilizar para cada uno de ellos son:

//*INSERTAR TABLAS DE EPI'S A UTILIZAR*

== Procedimiento de trabajo seguro

Analizadas las medidas preventivas a establecer, tanto colectivas como equipos de protección individual, se describen a continuación los procedimientos y pautas de trabajo seguro para cada uno de los trabajos a realizar en la instalación y mantenimiento de paneles de energía solar, en sus facetas tanto fotovoltaica como fototérmica.

Algunas de estas tareas no está previsto que se realicen en esta instalación, no obstante, si debido a algún cambio en el proyecto que pudiera producirse durante la ejecución de la obra hubiera que realizarse alguna tarea no prevista se incluyen éstas en el presente plan de seguridad, especificando que tareas no están previstas. 
En caso de que alguna tarea no prevista se llegara a realizar, se informará previamente al coordinador de seguridad indicando si está o no recogida la misma en el plan de seguridad.

=== Trabajos de excavación, cimentación y hormigonado

No se prevé realizar esta tarea en esta instalación. 
Si fuese necesario realizar alguna actividad de las recogidas en este apartado, por cambios en el proyecto durante la ejecución de obra, se seguirá este procedimiento. 
Cualquier cambio en el proyecto se informará previamente al coordinador y a las empresas y trabajadores afectados.

==== Aspectos generales

-	En trabajos a la intemperie, los trabajadores han de estar protegidos contra las inclemencias atmosféricas (ropa de trabajo y equipos acordes con las condiciones atmosféricas). 
  Se prohibirán los trabajos con climatología extrema.
-	Los equipos de trabajo y las herramientas deben almacenarse en los lugares establecidos por la empresa (contrata), siguiendo sus indicaciones en cuanto a partes de incidencias, limpieza y conservación de los equipos al final de la jornada.
-	Los paquetes de redondos deben almacenarse en los lugares indicados y en posición horizontal (nunca en posición vertical) sobre durmientes de madera, hasta alturas no superiores a 1,50m.
-	Junto a los paquetes de redondos se almacenan también los paquetes de cercos o estribos, alambres, varillas, y demás material.
-	Para evitar pinchazos, tropiezos y caídas, se barrerá alrededor de la zona de trabajo y retirarán los restos de material que hayan caído al suelo, como puntas, trozos de redondos, alambres, etc…
-	Los desperdicios de hierro, acero, cobre, madera y plástico, se almacenarán en el lugar señalado, para su retirada posterior.
-	Todas las eslingas y cadenas que se utilicen deberán estar homologadas con etiqueta o chapa identificativa con la carga máxima que soportan. 
  (Marcado CЄ).
-	Los ganchos utilizados, tanto los auxiliares como los de la grúa móvil o grúa torre deberán tener pestillo de seguridad.
-	Todos los equipos de trabajo utilizados en obra deberán cumplir las condiciones mínimas de seguridad establecidas en la normativa vigente, (partes móviles protegidas, partes peligrosas protegidas contra contactos eléctricos, etc…)
-	Todos los equipos de trabajo utilizados en obra y fabricados a partir de 1995, deben llevar el marcado CE y poseer el Certificado de Conformidad.
-	Las máquinas de “apantallar” o “bivalvas” estarán dotadas de un extintor de polvo químico seco.
-	Los operarios de conducción y auxilio a la máquina, utilizarán cascos protectores acústicos.
-	Queda prohibido el uso de escaleras de mano de construcción improvisada.
-	Los apoyos de escaleras de mano, deberán asentarse sólidamente, de manera estable, resistente e inmóvil, y de forma que los travesaños queden en posición horizontal. 
  Las escaleras de mano simples se colocarán formando un ángulo aproximado de 75º con la horizontal.
-	Para fines de acceso, las escaleras de mano deberán tener la longitud necesaria para sobresalir al menos un metro del plano de trabajo al que se accede.
-	Para evitar accidentes, las puntas de ferralla de forjados, pilares y muros deben taparse mediante elementos tipo “seta”.
-	Se instalarán pasarelas de tableros de 60cm de ancho mínimo que permitan la circulación sobre la ferralla colocada en forjados, soleras y losas de cimentación, para evitar caídas al mismo nivel.
-	Cuando sea necesario crear pasos sobre los muretes guía o bataches se instalarán pasarelas de un mínimo de 60cm de anchura. 
  Está completamente prohibido cruzarlos saltando de un lado al otro.
-	Cuando exista riesgo de caída por suelos deslizantes (lodos, fangos, agua, etc. se utilizarán unas plataformas de trabajo de 25 a 50cm de altura desde las que realizar los trabajos.

==== Señalización

-	Se señalizará el riesgo, la obligatoriedad o la advertencia en el lugar donde ocurra dicha circunstancia.
-	La obra debe señalizarse delimitando todo su perímetro con vallas de cerramiento normalizadas.
-	En los puntos de especial peligro (estrechamientos o escalones laterales donde existe tráfico abierto, etc.) debe señalizarse durante toda la noche, mediante balizas luminosas u otros sistemas.
-	Las vallas de cerramiento para peatones, formadas por elementos tubulares, aisladas o empalmadas, no podrán utilizarse como elementos de balizamiento, a no ser que tengan superficies planas reflectantes.
-	Debe indicarse, mediante señalización adecuada, la prohibición de acceso a cualquier persona ajena a la obra, así como los equipos de protección individual que se deben utilizar y los peligros que hay dentro de la obra.
-	Se señalizará correctamente el acceso de vehículos.
-	Habrá señalización de “riesgo eléctrico” en todos los cuadros eléctricos, y se señalizarán los extintores y botiquines de primeros auxilios existentes en la obra.
-	En trabajos cerca de tráfico rodado, no se comenzarán los trabajos hasta que no esté colocada la señalización adecuada.
-	Una vez finalizados los trabajos, deberán retirarse inmediatamente las señales de obra.
-	La maquinaria que esté averiada deberá señalizarse para que no sea utilizada.
-	Se dispondrá de señalización de recambio, para poder cambiar las señales deterioradas inmediatamente.
-	Se acotarán y señalizarán las zanjas y vaciados con cintas de balizado, dispuestas a una distancia de 2m del borde. 
  También se podrá utilizar malla naranja para realizar dicho balizado.
-	Se protegerán las zonas de ferralla saliente mediante setas de plástico rojo.
-	Se señalizarán claramente en los puntos donde haya que utilizar arnés.
-	Si se establece una zona de almacenamiento de productos químicos deberá ser acotada y se señalizarán sus riesgos (consultar ficha “Productos Químicos”).
-	Cuando se utilicen mesas de corte, se colocará señalización de uso de protectores auditivos y protectores oculares. 
  Es habitual que esta señalización venga establecida en la propia mesa, aunque es conveniente instalar otras señales que sean más grandes.
-	Las herramientas manuales llevarán la señalización con los equipos de protección individual que es obligatorio utilizar durante el manejo de dichas herramientas. 
  También llevarán señalizada la existencia de un manual de instrucciones que es necesario leer y conocer.
-	Tanto en las plataformas de carga y descarga como en andamios y plataformas de trabajo que se instalen o utilicen, deberá colocarse señalización que advierta del riesgo de caída en altura y del uso obligatorio del arnés anticaídas o cinturón de sujeción.
-	Si se establece una zona de almacenamiento de productos químicos deberá ser acotada y se señalizarán sus riesgos.
-	Se señalizarán las vías y las salidas de evacuación.

=== Armado con ferralla

-	Los acopios de redondos de ferralla se situarán cerca de la zona de montaje (menor distancia, menor riesgo de caída de la carga).
-	Depositar el material en el lugar establecido, sobre tablones de reparto, por cada capa de material; será más fácil manipularla. 
  Se eliminan riesgos por atrapamiento y golpes.
-	Al manipular material pesado, solicite al Encargado que le entregue un cinturón contra sobreesfuerzos, con el fin de evitar lumbalgias y lesiones de espalda.
-	Clasificar y separar el material por diámetro y longitud.
-	El izado de cargas se guiará con cuerdas de control seguro para evitar movimientos pendulares, oscilaciones, giros y choques con elementos de la obra.
-	El transporte de paquetes de armaduras mediante gancho de grúa, debe ejecutarse en posición horizontal, suspendiendo la carga mediante eslingas de dos puntos separados. 
  El ángulo superior, el que forman los dos ramales de la eslinga en el gancho, será igual o menor que 90º.
-	El transporte de los paquetes de ferralla se realizará con eslingas que abracen directamente los paquetes, nunca se atarán las eslingas a los alambres de agrupamiento colocados en el taller para el transporte.
-	Las juntas de alambre para atado en ferralla elaborada, se doblarán o remacharán para evitar en lo posible cortes y heridas.
-	Se utilizará cinturón portaherramientas.
-	Se prohíbe trepar por las armaduras en cualquier caso.
-	La colocación de separadores en ferralla para recubrimiento de la armadura se ejecutará; en soleras y losas, durante la fase de montaje del armado inferior (nunca una vez completado el armado mediante palanca, ni con ayuda de la maquinaria), en muros y pilares antes de la colocación del encofrado.
-	La maniobra de colocación de ferralla montada de más de 150Kg se guiará mediante un equipo de tres hombres: dos, guiarán mediante sogas en dos direcciones la pieza a situar, siguiendo las instrucciones del tercero que procederá manualmente a efectuar las correcciones de aplomado.
-	El transporte manual de barras en el tajo se realizará; sin sobrepasar la carga máxima que el trabajador estime pueda cargar, transportando las barras de longitud >2m entre el número de personas que se estime necesario.
-	Deberán seguirse las recomendaciones para el uso de herramientas manuales.
-	Los equipos de ferralla respetarán la señalización y vías de circulación y acceso de la obra.

==== Cimentación

-	No se acopiarán materiales ni se permitirá el paso de vehículos al borde de los pozos de cimentación.
-	Se procurará introducir la ferralla totalmente elaborada en el interior de los pozos para no realizar las operaciones de atado en su interior.
-	Para las operaciones de hormigonado y vibrado desde posiciones sobre la cimentación se establecerán plataformas o pasarelas de trabajo móviles, formadas por un mínimo de tres tablones que se dispondrán perpendicularmente al eje de la zanja o zapata.
-	Se seguirán recomendaciones de ferrallado, encofrado y elevación de cargas.
-	Se seguirán las recomendaciones dadas para manejo y manipulación de cargas.
-	Se tendrá especial cuidado en evitar las quemaduras que pudieran producirse al estar en contacto directo con los hormigones. 
  Eliminar cualquier rastro de salpicaduras de este tipo.
-	Los acopios del material deben estar bien definidos, y planificados para crear accesos seguros, y evitar caídas.
-	El desencofrado de los muretes guía, se realizará con la ayuda de uñas metálicas; se prohibirá la permanencia de operarios ajenos a la excavación en un entorno de 10m, alrededor de la “cuchara bivalva”.
-	Procurar verter el hormigón en muros desde suelo firme.
-	Para evitar una posible caída al interior del batache abierto, se cubrirá con madera en espera del armado y el hormigonado.
-	En los casos de rotura de la cuchara, atoramiento en el interior del batache de la bivalva o caída de objetos a su interior, la recuperación se efectuará tras efectuar un blindaje de emergencia mediante un prisma o jaula de planchas metálicas que protejan al operario en el descenso al interior del batache.
-	Se mantendrán limpios de barro o de grasa los peldaños y pates de acceso a la pantalladora, para prevenir los accidentes por caídas en altura.
-	Las maniobras estarán dirigidas por un capataz especialista, que tiene la obligación de estar siempre presente durante todo el proceso de ejecución.

==== Hormigonado

-	Antes de iniciar el vertido del hormigón del camión hormigonera, inmovilizar mediante cuñas o topes antideslizamiento, las ruedas del camión hormigonera.
-	Los operarios no se situarán detrás de los camiones hormigonera en maniobras de marcha atrás; estas maniobras siempre deberán ser dirigidas, desde fuera del vehículo, por uno de los trabajadores.
-	Para facilitar el paso seguro del personal encargado de montar, desmontar y realizar trabajos con la canaleta de vertido de hormigón por taludes hasta el cimiento, se colocarán escaleras reglamentarias.
-	Se prohíbe el cambio de posición del camión hormigonera al mismo tiempo que se vierte el hormigón. 
  Esta maniobra deberá efectuarse en su caso con la canaleta fija para evitar movimientos incontrolados.
-	Los camiones hormigonera no se aproximarán a menos de 2m de los cortes del terreno.
-	No se llenará el cubilote por encima de la carga máxima admisible de la grúa.
-	Se señalizará expresamente el nivel de llenado equivalente al peso máximo que se mantendrá visible. 
  Se prohíbe permanecer debajo de las cargas suspendidas por las grúas para evitar golpes por fragmentos desprendidos.
-	Se obligará a los operarios en contacto con los cubilotes al uso de guantes protectores para su guía y accionamiento de los mecanismos de apertura o cierre.
-	Los cubilotes se controlarán durante el transporte, con cuerdas de control, que impidan golpes o desequilibrios a las personas. 
  Nunca recibir el cubilote directamente con las manos, evitaremos caídas debido a la inercia de la carga.
-	El personal encargado del manejo de la bomba de hormigón estará formado y especializado en este trabajo.
-	Antes de hormigonar con bomba, se lavará y limpiará el interior de los tubos, se lubricarán las tuberías, enviando masas de mortero de pobre dosificación para, posteriormente, bombear el hormigón con la dosificación requerida. 
  Después de hormigonar se lavará y limpiará el interior de los tubos.
-	Hay que evitar los "tapones" porque son riesgo de accidente al desmontar la tubería. 
  Evitar los codos de pequeño radio.
-	La manguera de salida será guiada por dos operarios para evitar las caídas por golpe de la manguera.
-	Un trabajador será el encargado permanentemente de cambiar de posición los tableros de apoyo sobre las parrillas de los que manejan la manga de vertido del hormigón para evitar las posibles caídas.
-	El comienzo y cese del bombeo, será avisado con antelación a los operarios que manejan la manguera de vertido, para prevenir los accidentes por los movimientos bruscos.
-	En vertidos a distancia de gran extensión se instalará una estructura (cabria) que soporte el peso del final del tubo y de la manguera de vertido.
-	Se evitarán los movimientos de la tubería de la bomba de hormigonado, colocándola sobre caballetes arriostrándose las partes más susceptibles de movimiento en prevención de golpes por reventón.
-	El manejo, montaje y desmontaje de la tubería de la bomba de hormigonado deberá realizarse con máximas precauciones e incluso estarán dirigidos los trabajos por un trabajador especialista.
-	Cuando se utilice la "pelota de limpieza" se colocará un dispositivo que impida la proyección; no obstante, los operarios se alejarán del radio de acción de su posible trayectoria.
-	Se deberán revisar periódicamente los conductos de aceite a presión de la bomba de hormigonado, y se cumplirá con las operaciones de mantenimiento expuesta por el fabricante.
-	Mientras se realiza el vertido del hormigón, se prestará atención al comportamiento de los taludes para detectar los riegos por vuelco de vehículos.
-	Se mantendrán las zonas de trabajo limpias y ordenadas mediante una cuadrilla de limpieza.
-	Se habilitarán caminos de acceso a los tajos, estableciéndose pasarelas para poder atravesar las zanjas o caminos. 
  Las pasarelas a más de 2m de altura estarán limitadas por barandillas.
-	Se hará una revisión previa de las excavaciones entibadas antes de proceder al vertido del hormigón.
-	Se señalizarán y protegerán las excavaciones con vallas metálicas o de madera, pintada a bandas amarillas y negras ubicadas a 2m del borde.
-	Antes de comenzar el vertido del hormigón, revisar los refuerzos de los encofrados para prevenir posibles reventones o derrames sobre los trabajadores.
-	Mientras se realiza el vertido se vigilará atentamente el comportamiento de los encofrados, parándose los trabajos en caso de fallo para evitar accidentes.
-	El vertido de hormigón en los encofrados se efectuará uniformemente repartido. 
  Esta operación se efectuará desde andamios corridos a uno o ambos lados del muro a construir, dotados de barandilla de 90cm, listón intermedio y rodapié.
-	El acceso a estos andamios se efectuará desde el terreno, mediante pasarelas dotadas de barandillas reglamentarias, y desde el suelo a través de escaleras de mano, firmemente sujetas en los apoyos superior e inferior.
-	Se dispondrán consolas de trabajo en la coronación de los muros, para facilitar la operación de vertido y el paso y estancia de los trabajadores.

=== Trabajos con estructuras metálicas
==== Aspectos generales

-	Realizar un análisis previo del Plan de Seguridad de la obra (protecciones colectivas, EPI, señalización y balizamiento), así como del Plan de Montaje, (documentación técnica, planos, fases de montaje, necesidades de maquinaria, herramientas, aparejos de elevación, etc).
-	Comprobar el estado inicial de la superficie de instalación (terreno, cubiertas, tejados, terrazas, etc…), nivelación y compactación, capacidad resistente, presencia de zanjas y fosos, presencia de huecos y tragaluces.
-	Definir las áreas de almacenamiento, acopio y de chatarreos y sobrantes de material.
-	Establecer procedimientos de orden y limpieza de las zonas de trabajo.
-	Detectar la existencia de líneas y redes de alta y baja tensión. 
  Comprobar la existencia y estado de tomas de tierra y protecciones diferenciales, así como del estado de los cables y herramientas y máquinas a utilizar.

==== Maquinaria, útiles y herramientas

-	En los equipos de elevación de cargas y trabajadores (grúas sobre camión, plataformas elevadoras de tijera o articuladas, etc…) comprobar la capacidad de carga, altura de elevación, libros de mantenimiento, estado de cables, ganchos, plataformas, estabilizadores hidráulicos, funcionamiento de elementos de seguridad (detectores de nivel, alarmas acústicas, luces girofaro, etc..), y marcado CЄ, o certificado de adecuación de máquinas en su defecto. 
  Para los operadores de grúa solicitar carnet.
-	Para los equipos de soldadura (arco eléctrico, MIG, sopletes), comprobar el estado de las tierras, pinzas, cables, tubos, bombonas, válvulas, electrodos y marcado CЄ o certificado de adecuación de máquinas.
-	Para la pequeña maquinaria y herramientas manuales (sierras circulares, dobladoras, taladros, esmeriles, atornilladores etc…), comprobar el estado de conservación, conexiones, cables, fijación de mangos, protecciones de partes móviles y homologación y marcado CЄ.
-	Antes de utilizar aparejos de elevación (eslingas, cinchas, cables, cadenas, ganchos, mordazas, mosquetones, etc…) comprobar la capacidad de carga, pestillos de seguridad, estado de conservación y marcado CЄ.
-	Comprobar el estado y marcaje CЄ de todos los equipos de protección individual así como su caducidad.

==== Soldadura y atornillado

-	En operaciones de soldadura, comprobar la puesta a tierra de la pieza a soldar, estado de las pinzas, cables y conexiones.
-	Utilizar los equipos de protección individual establecidos: casco, guantes, pantalla de soldadura, ropa de protección, botas, y para trabajos en altura: arnés de seguridad o cinturón de sujeción.
-	Para trabajos en altura, hacer un correcto uso de plataformas elevadoras, andamios y escaleras de mano.
-	En operaciones de atornillado, utilizar llaves dinamométricas para comprobar el par de apriete, cuando éste se realice de forma manual. 
  Cuando se utilicen atornilladotas de alta resistencia, comprobar conexiones y cables.
-	Acabada la tarea, comprobar que todos los tornillos han quedado apretados. 
  Comprobar que no se dejan olvidados materiales o herramientas sobre la estructura.
-	No desplazarse sobre la estructura sin utilizar líneas de vida y arnés de seguridad.
-	Utilizar los equipos de protección individual establecidos: casco, guantes, botas, gafas y ropa de trabajo. 
  Para trabajos en altura, arnés de seguridad o cinturón de sujeción.
-	Asegurar las herramientas y equipos de trabajo para evitar la caída de objetos en altura sobre otros trabajadores o equipos.
-	Asegurar los extremos de los elementos estructurales antes de su unión (soldadura o atornillado) mediante fijaciones provisionales (mordazas, atado o equipos de elevación de cargas), para evitar caídas o desprendimientos. 
  Proceder a su liberación una vez concluida la tarea.

=== Trabajos de manipulación, movimiento y transporte de materiales y equipos
==== Aspectos generales

-	El eslingado de cargas sólo se llevará a cabo por trabajadores suficientemente formados y adiestrados en este tipo de operaciones.
-	Los trabajadores que aparejan las cargas irán provistos de casco, guantes y botas de seguridad con puntera reforzada con independencia de que, además, deban emplear otros equipos de protección individual.
-	Antes de su utilización, se inspeccionarán cuidadosamente las eslingas para comprobar que se encuentran en buen estado.
-	Nunca deben sobrecargarse las eslingas, por lo que se elegirán las adecuadas en función de la carga a soportar.
-	Siempre que sea posible, el ángulo entre ramales no deberá superar los 90º, para lo que se elegirá la longitud adecuada.
-	La carga quedará sujeta de manera que no pueda deslizarse, debiendo emplear distanciadotes si es preciso. 
  Para cargas de gran longitud se emplearán pórticos.
-	Se evitará subir a las cargas para su amarre.
-	Los ramales de eslingas distintas no montarán uno sobre otro en el gancho.
-	Las eslingas no deben apoyar nunca sobre aristas vivas, por lo que se emplearán cantoneras o escuadras de protección.
-	Evitar en todo momento que el gancho apoye en el suelo o en cualquier otro sitio, para que el cable no pierda tensión.

==== Izado de cargas

-	Comprobar que los estrobos o eslingas estén correctamente aplicados a la carga y asegurados en el gancho de izar.
-	Comprobar que se ha separado de la carga lo suficiente, y de que no hay personas en sus proximidades.
-	Comprobar que no hay sobre la carga piezas sueltas que pudieran caerse al elevarla.
-	Comprobar que el gancho de la grúa está nivelado y se encuentra centrado sobre la carga, para evitar giros al elevar ésta.
-	Antes de proceder al transporte de la carga, elevaremos ésta a un palmo del suelo para comprobar su correcta estabilidad, buena sujeción y dejar que se tensen los ramales. 
  Si se observa que la carga no está correctamente colocada, desliza o se inclina un ángulo mayor de 10º con respecto a la horizontal, descenderemos la carga y procederemos a su correcto eslingado.
-	Elevar la carga a una altura suficiente para evitar obstáculos.

==== Transporte de cargas

-	Todos los desplazamientos de las cargas se realizarán lentamente evitando movimientos bruscos.
-	Las cargas se desplazarán a la menos altura posible. 
  Los movimientos sin carga se realizarán con el gancho elevado.
-	La elevación y descenso de cargas se realizará siempre en sentido vertical, es decir, con el cable perpendicular al plano horizontal. Si no es posible, se tomarán las medidas adicionales precisas para evitar riesgos, como la utilización de cuerdas guía.
-	Está totalmente prohibido el transporte de cargas por encima de personas.
-	Se prohíbe el paso o la permanencia de personas bajo cargas izadas.
-	Queda prohibido el transporte de personas sobre la carga, ganchos o eslingas vacías.
-	Cuando no pueda evitarse que las cargas giren, se utilizarán cuerdas guía durante el desplazamiento para impedir dicho movimiento.

==== Descenso de cargas

-	Comprobar que la superficie donde se depositará la carga sea estable, plana y en lo posible, libre de obstáculos.
-	Colocar durmientes de apoyo o calzos de madera, en lugares de depósito de las piezas para su almacenamiento seguro.
-	No apilar materiales en alturas mayores de 1´5 m. 
  Verificar la estabilidad de la carga apilada.
-	Efectuar el descenso de manera suave y lenta.
-	Soltar los amarres, elevarlos y controlarlos hasta que no representen un riesgo para nada ni nadie.
-	Al acabar el trabajo, las eslingas, cuerdas, cadenas y demás elementos se almacenarán correctamente enrolladas y en lugares establecidos a tal efecto. No deben dejarse tiradas en lugares sucios y húmedos, en zonas de paso o de circulación de vehículos, ya que pueden presentar un riesgo o causar deterioro para las propias eslingas.

=== Trabajos con herramientas y equipos eléctricos
==== Aspectos generales

-	Comprobar el correcto estado de las instalaciones de suministro eléctrico.
-	Hay que dotar a las instalaciones de cuadros de mando auxiliares con los elementos de protección adecuados: interruptores magnetotérmicos, diferenciales y bases de toma de corriente normalizadas.
-	Hay que verificar periódicamente el buen estado de las instalaciones con mantenimientos regulares y documentados.
-	Comprobar el correcto funcionamiento de los elementos de protección de los cuadros de mando.
-	El grado de protección de los elementos de la instalación situados a la intemperie en las obras será como mínimo de IP 45.
-	La reparación de cualquier elemento de la instalación eléctrica ha de correr a cargo de especialistas (electricistas).

==== Herramientas y equipos eléctricos

-	Antes de realizar cualquier conexión, comprobar el correcto estado de conductores, clavijas de conexión y bases de toma de corriente de los elementos a conectar.
-	Proceder a la conexión de las clavijas evitando tocar las partes en tensión (metálicas) y con las manos protegidas, limpias y secas.
-	A la hora de desconectar, nunca hacerlo tirando del conductor.
-	Siempre que sea posible, el cableado de las instalaciones provisionales de la obra se pasará colgado del techo, evitando zonas de paso y zonas húmedas.
-	Las mangueras de los cables tienen que ser antihumedad y con protección mecánica en instalaciones a la intemperie.
-	No deben permitirse, en ningún caso, las conexiones a la base del enchufe con terminales pelados. 
  Deben utilizarse las clavijas de conexión correspondientes.
-	Se evitará realizar empalmes improvisados en mangueras eléctricas.
-	Los aparatos portátiles de alumbrado, serán de doble aislamiento, con distintivo, tendrán sus piezas metálicas bajo tensión protegidas contra la caída vertical de agua, (IP A1C). 
  Los portalámparas, pantallas y rejillas, serán de material aislante.
-	Las herramientas eléctricas portátiles y las lámparas eléctricas portátiles estarán alimentadas por una tensión no superior a 24 V.
-	Las herramientas manuales portátiles accionadas por motor eléctrico, alimentadas a más de 50 V, deberán disponer de doble aislamiento. 
  Si no es así, el conductor de alimentación, dispondrá de toma a tierra, estando la carcasa de la herramienta conectada a ella.

==== Grupos electrógenos portátiles

-	Antes de empezar a trabajar con generadores portátiles, colocar el grupo sobre una superficie nivelada, estable, ventilada y seca.
-	Conectar el equipo a tierra (según instrucciones del fabricante) y comprobar el correcto funcionamiento del interruptor diferencial (accionando el botón de testeo que incorpora y rearmándolo de nuevo) así como el correcto estado de las bases de conexión del cuadro.
-	Comprobar los niveles de aceite y combustible del equipo.
-	Leer las instrucciones del fabricante, así como la placa de características del equipo para conocer la potencia que suministra, tipo de corriente (monofásica, trifásica), voltaje (230V, 400V), frecuencia, combustible y sistema de arranque.
-	Cebar la bomba de combustible y proceder al arranque del motor (eléctrico o retroceso).
-	Antes de realizar cualquier conexión, comprobar el estado de las clavijas de conexión así como el estado del cable. 
  Conectar y desconectar las clavijas con cuidado. 
  No tirar del cable para su desconexión.

=== Trabajos en altura
==== Aspectos generales

-	En todo trabajo en altura en ausencia de protección colectiva y con peligro de caída eventual, será obligatorio el uso de cinturón o arnés de seguridad.
-	Los trabajos sobre tejados requerirán un examen previo de éstos y se les pondrá puntos sólidos de amarre para las cuerdas de los cinturones de seguridad. 
  A este personal se le instruirá especialmente.
-	Para trabajar y circular sobre tejados frágiles, por ejemplo, de fibrocemento, vidrio o materiales plásticos, deben utilizarse pasarelas de tablones que distribuyan el peso.
-	Las plataformas de trabajo deben estar protegidas del vacío en todo su perímetro libre, por una barandilla que impida la caída de personas y materiales.
-	Además de andamios y plataformas de trabajo, en casos especiales con peligro de caída de altura, se usarán redes de seguridad.
-	En todos los trabajos en altura, se acotarán y señalizarán las zonas de paso de los niveles inferiores para evitar daños por posibles caídas de objetos, materiales o herramientas.
-	Los medios de protección contra las caídas deben colocarse correctamente y mantenerse en buen estado, y no deben ser manipulados, modificados, ni mucho menos eliminados. 
  Si por algún motivo alguna vez hubiera que retirar esas protecciones, deberán ser instaladas tan pronto como sea posible.
-	El cinturón de seguridad como equipo de protección individual que es, debe utilizarse cuando el riesgo presente de caída de altura en el puesto de trabajo no se evite con medios de protección colectiva o técnicos.
-	En tejados, cubiertas y planos inclinados en altura: 1) nunca pise directamente sobre cubiertas de escasa resistencia. 
  2) Recuerde que el riesgo aumenta al crecer la inclinación. 
  3) No realice trabajos en altura cuando las condiciones meteorológicas sean adversas.

==== Sistemas de protección anticaídas (arneses, cinturones de sujección, redes, etc ...)

-	Para todos los sistemas que se aplican han de existir dispositivos de sujeción adecuados que permitan una fijación segura de los equipos de protección personal anticaída.
-	Su aplicación será sólo para trabajos breves.
-	Para los sistemas empleados con sus componentes ha de existir una declaración de conformidad y una información de usuario del fabricante.
-	El equipo de protección personal anticaída ha de estar marcado con la identificación CE.
-	Los sistemas sólo pueden utilizarse por personas especialmente instruidas. 
  La instrucción se ha de realizar antes del primer uso y según necesidad, pero como mínimo una vez al año.
-	El empresario ha de elaborar instrucciones de funcionamiento para el empleo del equipo de protección personal anticaída.
-	Antes de cada uso se ha de comprobar el estado reglamentario y el correcto funcionamiento del equipo de protección personal anticaída mediante inspección ocular.
-	El empresario ha de encargar a un perito con la comprobación del perfecto estado del equipo de protección anticaída, según necesidad y de acuerdo con las condiciones de su empleo y las circunstancias del funcionamiento, aunque como mínimo una vez por año.
-	Los componentes individuales de los sistemas han de ser compatibles entre ellos.
-	Para una identificación inequívoca, el equipo de protección personal anticaída está marcado de manera bien legible y resistente.
-	Cualquier componente desmontable refleja como mínimo los siguientes datos: 1) denominación de tipo. 
  2) Año de construcción, nombre, marca del fabricante o proveedor. 
  3) Número de serie o fabricación del componente.
-	En equipos de salvamento se requiere adicionalmente la advertencia “sólo para fines de salvamento”.
-	Recomendaciones para el uso de arnés anticaídas: 
  + Recomendable que sea con un amortiguador de energía. 
  + Ajústelo de tal forma que los tirantes queden ubicados en el centro de los hombros. 
  + Debe estar correctamente ajustado en su totalidad. 
  + Verificar que la argolla dorsal este bien colocada a la altura de los omóplatos. 
  + Verifique que las cintas por donde se pasan las piernas no estén retorcidas.

-	Inspección del arnés: 
  + Antes de cada utilización, es conveniente una prueba visual (bandas, costuras y piezas metálicas) asegurándose así de que el arnés está en óptimo estado para desempeñar las tareas a realizar. 
  + Si es posible asignar el uso del arnés siempre a un mismo operario para eliminar distintos ajustes que son los que dañan el arnés. 
  + Siempre seleccione un punto de anclaje rígido para evitar posibles desgarres o desprendimientos. 
  + Todo arnés que haya experimentado una caída, un esfuerzo, o una inspección visual que haya hecho dudar de su buen estado, no dude en reemplazarlo. 
  + Ninguna modificación se realizará sobre el arnés, tanto sea en las costuras, cintas y bandas.

-	El cinturón de sujeción debe llevar como anexo una cinta llamada cabo de vida, que tiene un largo de 1,5 a 2 m y se asegura por medio de un gancho o mosquetón de fácil apertura. 
  Cuando alguien tiene que trabajar en lo alto de una escalera o en el borde de un techo es recomendable asegurar el extremo de ese cabo al hierro superior de la escalera o a algún sector seguro de la terraza.
-	Las redes de protección son una medida con efecto indirecto para la protección contra la caída de altura. 
  Se pueden emplear para la retención de personas en caída, si por razones técnicas laborales no se pueden utilizar protecciones anticaída. 
  Las redes de protección se emplean para la retención de personas en caída durante trabajos, entre otros, debajo de cubiertas de naves.
-	También existen otros accesorios de seguridad para este tipo de labores: casco con linterna frontal, descensores (autofrenantes para cuerda simple, para grandes descensos), tirantes regulables sujetadores de la cintura, ganchos adaptables para cascos, cabos de amarre, bloqueadores centrales, protectores para cuerdas, y casco de escalada regulable.

==== Andamios

-	Un andamio es un sistema universal compuesto por caños y accesorios que, por su gran versatilidad, permiten acceder a todo tipo de frentes y plantas.
-	Los andamios deben ser construidos con superficie, funcionalidad y resistencia acordes con la labor para la cual están destinados. 
  De ese modo podrán brindar una seguridad comparable a la del trabajo efectuado a nivel del suelo.
-	Debe facilitarse a los trabajadores un número suficiente de andamios para todos los trabajos que deban efectuarse en altura.
-	Siempre que sea posible debe sustituirse la utilización de escaleras móviles, de mano u otros medios peligrosos para trabajar en altura.
-	Nunca utilice, para trabajar en altura; tambores, cajones o caballetes.
-	Los andamios deben estar construidos bajo la supervisión de personal especializado. 
  Es responsabilidad de la supervisión a cargo del trabajo, verificar que el andamio esta armado según norma.
-	Los andamios construidos en zonas de tránsito de vehículos o peatones deben estar señalizados con banderas y/o cintas durante el día y con luces alimentadas con tensión de seguridad, durante la noche.
-	Cuando deba trabajarse cerca de líneas con tensión, o lugares con eventuales riesgos eléctricos, se solicitará la intervención del personal responsable del área, que determinará las medidas a tomar, para minimizar los riesgos.
-	Antes de iniciar el armado del andamio, se deberá inspeccionar los materiales a utilizar.
-	Los tablones de madera no podrán tener un espesor menor a 5 cm y deberán descartarse aquellos que presenten rajaduras, fisuras, nudos o anormalidades que lo indiquen como inseguro.
-	Los tablones metálicos deberán ser antideslizantes.
-	No depositar violentamente pesos sobre los andamios, podrían dañarse o desequilibrarse.
-	Los andamios, debido generalmente a su deficiente construcción, son causa de numerosos vuelcos o caídas por fallo del pescante, por rotura de la plataforma, del cable, etc.
-	Todos los elementos de un andamio serán revisados antes de la puesta en servicio. 
  Si se usan tablones, éstos serán de madera de buena calidad, sin pintar, sin grietas, ni cualquier otro defecto que pueda afectar a su resistencia.
-	En el manejo de tablones o similares será preceptivo el uso de guantes.
-	No se abandonarán en las plataformas de los andamios, materiales o herramientas que puedan caer sobre las personas o hacerles tropezar y caer al caminar sobre ellas.
-	La evacuación de materiales, herramientas u otros objetos desde un andamio hasta el suelo firme, se hará por medios mecánicos (poleas, polipastos, etc.), sin lanzarlos desde el andamio, o de un andamio a otro.
-	La distancia de separación entre un andamio y el parámetro vertical de trabajo, no será superior a 30 cm. para evitar posibles caídas.
-	El uso del cinturón de seguridad es obligatorio siempre que se tengan que realizar trabajos en andamios que no dispongan de todas las protecciones colectivas. 
  A alturas superiores a dos metros, se sujetará por el mosquetón a puntos resistentes distintos del andamio.
-	La plataforma del andamio tendrá una anchura mínima de 60 cm, se mantendrá horizontal y estará protegida por una barandilla de 90 cm de altura mínima con listón intermedio y rodapié de 15 cm de altura.
-	La distancia entre los apoyos no debe ser mayor de 3,50 m. 
  Los tablones deben ser gruesos (mínimo 4 cm. de espesor) y anchos (mínimo 60 cm).
-	Las pasarelas, plataformas o pisos, construidos de tablones se sujetarán con travesaños clavados, al objeto de que formen una sola pieza y en el peor de los casos, formados al menos por tres tablones bien atados entre sí y al propio andamio.
-	Todo andamio, pasarela, plataforma, etc., construidos de tablones, tendrá barandillas adecuadas y seguras, sujetadas firmemente a la propia estructura del andamio.
-	No se retirará o desmontará ningún elemento o pieza componente de un andamio, mientras se esté utilizando.
-	Si hay que depositar materiales sobre la plataforma de un andamio se hará con orden, cuidando no golpear sobre ésta. 
  Asimismo, se caminará sin saltar sobre el andamio, o sin saltar a otro andamio.
-	Se señalizarán los alrededores de todo andamio, para evitar el paso por debajo.
-	Los soportes deben estar apoyados sobre superficies firmes y parejas.
-	Asegurar que los caballetes sean resistentes.
-	Distribuir el peso de forma pareja y no pasar la carga máxima.

==== Escaleras de mano

-	La parte superior de una escalera apropiada debe sobresalir por lo menos 1,00 metro por encima del techo o del punto de la altura por donde usted deba dejar la escalera para tener acceso al techo o nivel de la estructura, para que le sirva de punto de apoyo manual.
-	Al transportar sobre el hombro, tómela del centro y llévela con la parte delantera por encima de la altura de su cabeza, para evitar lesionar a otra persona, transportarla en forma horizontal con la con la parte delantera hacia delante. 
  No utilizarlas para transportar materiales.
-	Solo transportar escaleras simples o de tijera con peso máximo de 55Kg.
-	No hacerlas pivotar, no transportarlas sobre la espalda, etc.
-	No arrastrar las cuerdas de las escaleras por el suelo.
-	Escaleras de más de tres metros de longitud o de pesos superiores a veinticinco kilogramos deben ser transportadas entre dos o más personas.
-	No situar la escalera detrás de una puerta que previamente no se ha cerrado con llave.
-	No situarla en lugar de paso para evitar todo riesgo de colisión con peatones o vehículos, y si es el caso situar una persona que avise de la circunstancia.
-	La superficie de apoyo debe ser plana, resistente y no deslizante.
-	No se debe situar sobre elementos instalables o móviles.
-	Levantamiento de escaleras por una persona: 
  + Situar la escalera sobre el suelo de forma que los pies se apoyen sobre un obstáculo suficientemente resistente para que no se deslice. 
  + Elevar la extremidad opuesta de la escalera levantando lentamente sobre el extremo pasando de escalón en escalón.
-	Levantamiento de escaleras por dos personas: 
  + Una persona se sitúa agachada sobre el primer escalón en la parte inferior y con las manos sobre el tercer escalón. 
  + La segunda persona eleva la extremidad opuesta de la escalera avanzando lentamente, pasando de escalón en escalón hasta que esté en posición vertical.
-	El Angulo que se forma entre la escalera y el suelo debe estar comprendido entre 70.5º y 75.5º.
-	El ángulo de abertura de una escalera de tijera debe ser de 30º como máximo.
-	A la hora de apoyar, sujetar e inmovilizar escaleras, éstas deben estar dotadas de zapatas antideslizantes abrasivas de caucho o neopreno, o hincas en las zonas de apoyo y ganchos o abrazaderas en las zonas superiores de apoyo.
-	Antes de usar una escalera de mano nos aseguraremos de su buen estado observando que no tiene defectos. 
  Se rechazarán las que tengan: largueros con empalmes, peldaños flojos o rotos, peldaños clavados en vez de machihembrados, carecer de dispositivos antideslizantes y cualquier otro defecto.
-	No deben ser utilizadas por personas que sufran algún tipo de vértigo o similares.
-	Llevar el calzado que sujete bien los pies con la suelas limpias de grasa, aceite u otras sustancias deslizantes.
-	Respetar la carga máxima recomendada de la escalera: madera 95 kg. y metálica 150 kg.
-	El ascenso y descenso se debe hacer siempre de cara a la escalera con las manos libre para poder sujetarse en los peldaños, no en los largueros.
-	Si es necesario transportar objetos estos se deben sujetar al cuerpo o a la cintura. 
  O bien utilice una bolsa o mochila para transportar los productos esto le permitirá tener las manos libre.
-	No trabajar a menos de 5 m de una línea de A.T., en caso imprescindible utilizar escalera de fibra de vidrio aislada. 
  Nunca se emplearán escaleras metálicas en trabajos eléctricos.
-	Si se tiene que colocar una escalera próxima a conductores eléctricos desnudos, deberá cortarse la corriente poniendo un cartel de aviso en el interruptor.
-	Situar la escalera cerca del punto de operación de forma que no haya que estirarse o colgarse.
-	Se trabajará colocándose en el escalón apropiado (nunca en los últimos escalones) de forma que la distancia del cuerpo al punto de trabajo sea suficiente. 
  No deberá tratar de alcanzar puntos que obliguen a posturas muy forzadas que puedan hacer perder el equilibrio. 
  Lo seguro es desplazar la escalera tantas veces como sea preciso.
-	Siempre que sea posible no utilizar la escalera la escalera manual para trabajar. 
  Utilizar plataforma de trabajo.
-	Si los pies están a más de 2 metros del suelo utilizar cinturón de seguridad, el cual deberá estar atado a la línea de vida.
-	Fijar el extremo o parte superior de la escalera.
-	Para trabajos de cierta duración se pueden utilizar dispositivos tales como reposapiés que se acoplan a la escalera.
-	Nunca las apoye sobre cajas, bidones…
-	No las coloque cerca de conductores eléctricos o delante de una puerta sin señalizarlo.
-	No trate de alcanzar objetos alejados de la escalera. 
  Si necesita moverse lateralmente baje de la escalera y desplácela.
-	Utilice solo escaleras con dispositivos antideslizantes y tirantes si es de tijera.
-	Las escaleras no deben usarse para construir andamios, ni como soporte ni como pasarela, ni tampoco se usarán en aplicaciones para las que no han sido diseñadas.
-	Las escaleras deben apoyarse con la inclinación correcta. 
  Esta inclinación es aquella en que la relación entre la longitud de la escalera y la separación horizontal en la base sea de 4 a 1.
-	Cuando se emplee la escalera para subir a plataformas, andamios, techos, etc., ésta deberá sobrepasarlos como mínimo en un metro.
-	Si las condiciones de trabajo lo exigen se usarán sistemas de seguridad anticaídas.
-	El transporte de la escalera se hará con precaución para evitar golpear a otras personas o tropezar con obstáculos.
-	Las escaleras de madera no deberán dejarse a la intemperie.
-	Deben guardarse en lugar cubierto, en posición horizontal, sujetas por soportes fijos adosados a las paredes y sin pesos encima que puedan deformarla.
-	El área de almacenamiento debe estar libre de sustancias químicas para evitar el deterioro acelerado y la corrosión.
-	En escaleras de madera está prohibido pintarlas, sólo pueden llevar barniz protector transparente.
-	En escaleras metálicas, cualquier defecto en los largueros o peldaños no deben repararse, soldarse, enderezarse nunca.

==== Plataformas elevadoras móviles de personal (PEMP)

-	Antes de utilizar la plataforma se debe inspeccionar para detectar posibles defectos o fallos que puedan afectar a su seguridad. 
  La inspección debe consistir en lo siguiente: inspección visual de soldaduras deterioradas u otros defectos estructurales, escapes de circuitos hidráulicos, daños en cables diversos, estado de conexiones eléctricas, estado de neumáticos, frenos y baterías, etc…, y comprobar el funcionamiento de los controles de operación para asegurarse que funcionan correctamente.
-	Cualquier defecto debe ser evaluado por personal cualificado y determinar si constituye un riesgo para la seguridad del equipo. 
  Todos los defectos detectados que puedan afectar a la seguridad deben ser corregidos antes de utilizar el equipo.
-	Comprobar la posible existencia de conducciones eléctricas de A.T. en la vertical del equipo. 
  Hay que mantener una distancia mínima de seguridad, aislarlos o proceder al corte de la corriente mientras duren los trabajos en sus proximidades.
-	Comprobar el estado y nivelación de la superficie de apoyo del equipo.
-	Comprobar que el peso total situado sobre la plataforma no supera la carga máxima de utilización.
-	Si se utilizan estabilizadores, se debe comprobar que se han desplegado de acuerdo con las normas dictadas por el fabricante y que no se puede actuar sobre ellos mientras la plataforma de trabajo no esté en posición de transporte o en los límites de posición.
-	Comprobar estado de las protecciones de la plataforma y de la puerta de acceso.
-	Comprobar que los cinturones de seguridad de los ocupantes de la plataforma están anclados adecuadamente.
-	Delimitar la zona de trabajo para evitar que personas ajenas a los trabajos permanezcan o circulen por las proximidades.
-	Comprobar que no hay ningún obstáculo en la dirección de movimiento y que la superficie de apoyo es resistente y sin desniveles.
-	Mantener la distancia de seguridad con obstáculos, escombros, desniveles, agujeros, rampas, etc., que comprometan la seguridad. 
  Lo mismo se debe hacer con obstáculos situados por encima de la plataforma de trabajo.
-	La velocidad máxima de traslación con la plataforma ocupada no sobrepasará los siguientes valores: 1,5 m/s para las PEMP sobre vehículo portador cuando el movimiento de traslación se mande desde la cabina del portador; 3,0 m/s para las PEMP sobre raíles y 0,7 m/s para todas las demás PEMP de los diferentes tipos.
-	No se debe elevar o conducir la plataforma con viento o condiciones meteorológicas adversas.
-	No manejar la PEMP de forma temeraria o distraída.
-	No sobrecargar la plataforma de trabajo.
-	No utilizar la plataforma como grúa. 
  No sujetar la plataforma o el operario de la misma a estructuras fijas.
-	Está prohibido añadir elementos que pudieran aumentar la carga debida al viento sobre la PEMP, por ejemplo, paneles de anuncios, ya que podrían quedar modificadas la carga máxima de utilización, carga estructural, carga debida al viento o fuerza manual, según el caso.
-	Cuando se esté trabajando sobre la plataforma el o los operarios deberán mantener siempre los dos pies sobre la misma. 
  Además, deberán utilizar los cinturones de seguridad o arnés debidamente anclados.
-	No se deben utilizar elementos auxiliares situados sobre la plataforma para ganar altura.
-	Cualquier anomalía detectada por el operario que afecte a su seguridad o la del equipo debe ser comunicada inmediatamente y subsanada antes de continuar los trabajos.
-	Está prohibido alterar, modificar o desconectar los sistemas de seguridad del equipo.
-	No subir o bajar de la plataforma si está elevada utilizando los dispositivos de elevación o cualquier otro sistema de acceso.
-	No utilizar plataformas en el interior de recintos cerrados, salvo que estén bien ventilados.
-	Al finalizar el trabajo, se debe aparcar la máquina convenientemente.
-	Cerrar todos los contactos y verificar la inmovilización, falcando las ruedas si es necesario.
-	Limpiar la plataforma de grasa, aceites, etc., depositados sobre la misma durante el trabajo. 
  Tener precaución con el agua para que no afecten a cables o partes eléctricas del equipo.
-	En caso de avería, dejar un indicador de fuera de servicio y retirar las llaves de contacto depositándolas en el lugar habilitado para ello.
-	No se deben rellenar los depósitos de combustible (PEMP con motor de combustión) con el motor en marcha.
-	Las baterías deben cargarse en zonas abiertas, bien ventiladas y lejos de posibles llamas, chispas, fuegos y con prohibición de fumar.
-	No se deben hacer modificaciones de cualquier tipo en todo el conjunto de las PEMP.
-	Sólo las personas preparadas y autorizadas, mayores de 18 años, estarán autorizadas para operar las plataformas elevadoras móviles de personal. 
  Para ello y antes de estar autorizado para utilizar la plataforma, el operador debe: 
  + Ser formado por una persona cualificada sobre los símbolos y funciones de cada uno de los instrumentos de control.
  + Leer y comprender las instrucciones y normas de seguridad recogidas en los manuales de funcionamiento entregados por el fabricante. 
  + Leer y comprender los símbolos situados sobre la plataforma de trabajo con la ayuda de personal cualificado.

=== Trabajos en instalaciones de presión

No se prevé realizar esta tarea en esta instalación. 
Si fuese necesario realizar alguna actividad de las recogidas en este apartado, por cambios en el proyecto durante la ejecución de obra, se seguirá este procedimiento. 
Cualquier cambio en el proyecto se informará previamente al coordinador y a las empresas y trabajadores afectados.

==== Aspectos generales

-	Los trabajadores involucrados en tareas de instalaciones térmicas de edificios, deberán estar en posesión de los carnés profesionales exigidos por la ley. (R.D. 1027/2007).
-	Durante la fase de montaje se evitará la entrada de materiales extraños. 
  En la puesta en marcha se realizará una limpieza y desinfección.
-	Las instalaciones térmicas deben diseñarse y calcularse, ejecutarse, mantenerse y utilizarse de tal forma que se prevenga y reduzca a límites aceptables el riesgo de sufrir accidentes y siniestros capaces de producir daños o perjuicios a las personas, flora, fauna, bienes o al medio ambiente, así como de otros hechos susceptibles de producir en los usuarios molestias o enfermedades.
-	Verificar y utilizar correctamente los EPI suministrados por la empresa para la realización de la instalación térmica de agua caliente.
-	Evitar contactos con superficies húmedas en presencia de líneas de conducción eléctrica.
-	Utilizar almacenes de material y equipos provistos de puerta con cerradura y llave.
-	No utilizar los flejes del empaquetado de material como asideros para el transporte.
-	Los materiales y equipos utilizados en las labores de montaje, se transportarán al lugar de instalación, una vez conformados e izados mediante medios mecánicos, a la cubierta de trabajo.
-	Se utilizarán bancos de trabajo en buen estado, apoyados de manera estable sobre superficies planas y resistentes.
-	Comprobar el marcado CЄ de todos los equipos y herramientas que deban emplearse en las labores de montaje.
-	Rodear con barandillas o cubrir los huecos presentes en el forjado o cubierta donde se realicen éstas labores.
-	Establecer procedimientos de orden y limpieza en los lugares de trabajo para evitar los riesgos de caídas, tropiezos y resbalones.
-	Está prohibido soldar con plomo en lugares cerrados. 
  Así mismo las bombonas de gas para soldadura de acetileno, no deben permanecer al sol mientras se efectúan tareas de soldadura y corte. 
  El transporte de las mismas debe realizarse sobre carros portabotellas.
-	Nunca utilizar como toma de tierra las canalizaciones de las instalaciones de agua caliente sanitaria. 
  Los equipos deben de conectarse a tomas de tierra normalizadas.
-	Utilizarlas herramientas de mano para sus fines específicos. 
  Revisarlas y mantenerlas periódicamente, retirando de uso las que presenten deficiencias.
-	Nunca transportarlas en bolsillos, utilizar cinturones portaherramientas. 
  Cuando no se utilicen, depositarlas en lugares que no representen riesgo de accidente.
-	En la utilización de escaleras de mano, comprobar su homologación y resistencia, así como su correcto estado de conservación y longitud suficiente. 
  Asegurar su estabilidad antes de su empleo.
-	Cuando se utilicen herramientas eléctricas, comprobar marcado CЄ y su estado de conservación, sobre todo cables y clavijas de conexión. 
  Leer los manuales de características y uso proporcionados por el fabricante.

==== Soldadura

-	En operaciones de soldadura, comprobar el correcto estado de los sopletes, bombonas de gas, válvulas y tubos de conexión. Está totalmente prohibido fumar durante la realización de estos trabajos. 
  Utilizar los EPI asignados para ello.
-	Antes de realizar operaciones de soldadura, realizar una limpieza de la boquilla del soplete, ya que puede producir retornos de llama. 
  No encender el soplete mediante llama, utilizar un encendedor de chispa.
-	No colocar nunca el soplete sobre las bombonas, ni aún estando apagado.
-	Se prohíben los trabajos de soldadura y corte, en locales donde se almacenen materiales inflamables, combustibles, donde exista riesgo de explosión o en el interior de recipientes que hayan contenido sustancias inflamables.
-	Si una bombona de gas se calienta por cualquier motivo, puede explosionar; cuando se detecte esta circunstancia se debe cerrar el grifo y enfriarla con agua, si es preciso durante horas.
-	Se debe evitar que las chispas producidas por el soplete alcancen o caigan sobre las botellas, mangueras o líquidos inflamables.
-	Si se incendia el grifo de una botella de gas, se tratará de cerrarlo, y si no se consigue, se apagará con un extintor de nieve carbónica o de polvo.
-	Después de un retroceso de llama o de un incendio del grifo de una botella de acetileno, debe comprobarse que la botella no se calienta sola.

=== Trabajos en instalaciones eléctricas de alta y baja tensión
==== Aspectos generales

-	Hay que dimensionar las instalaciones adecuadamente.
-	Hay que dotar a las instalaciones de cuadros de mando auxiliares con los elementos de protección adecuados: interruptores magnetotérmicos, diferenciales y bases de toma de corriente normalizadas.
-	Hay que verificar periódicamente el buen estado de las instalaciones con mantenimientos regulares y documentados.
-	Comprobar el correcto funcionamiento de los elementos de protección de los cuadros de mando.
-	El montaje de cualquier elemento de la instalación eléctrica ha de correr a cargo de instaladores autorizados (electricistas).
-	El grado de protección de los elementos de la instalación situados a la intemperie en las obras será como mínimo de IP 45.
-	Ubicar los almacenes de material y equipos en los lugares designados, provistos de puerta y cerradura con llave.

==== Baja tensión

-	Antes de realizar cualquier conexión, comprobar el correcto estado de conductores, clavijas de conexión y bases de toma de corriente de los elementos a conectar.
-	Proceder a la conexión de las clavijas evitando tocar las partes en tensión (metálicas) y con las manos protegidas, limpias y secas.
-	A la hora de desconectar, nunca hacerlo tirando del conductor.
-	Siempre que sea posible, el cableado de las instalaciones provisionales de la obra se pasará colgado del techo, evitando zonas de paso y zonas húmedas.
-	Los cables manguera tienen que ser antihumedad y con protección mecánica en instalaciones a la intemperie.
-	No deben permitirse, en ningún caso, las conexiones a la base del enchufe con terminales pelados. 
  Deben utilizarse las clavijas de conexión correspondientes.
-	Se evitará realizar empalmes improvisados en mangueras eléctricas.
-	Los aparatos portátiles de alumbrado, serán de doble aislamiento, con distintivo, tendrán sus piezas metálicas bajo tensión protegidas contra la caída vertical de agua, (IP A1C). 
  Los portalámparas, pantallas y rejillas, serán de material aislante.
-	Las herramientas eléctricas portátiles y las lámparas eléctricas portátiles estarán alimentadas por una tensión no superior a 24 V.
-	Las herramientas manuales portátiles accionadas por motor eléctrico, alimentadas a más de 50 V, deberán disponer de doble aislamiento. 
  Si no es así, el conductor de alimentación, dispondrá de toma a tierra, estando la carcasa de la herramienta conectada a ella.
-	Seguir procedimientos de orden y limpieza a la hora de realizar montajes, canalizaciones o apertura de rozas.
-	Utilizar herramientas manuales protegidas con aislante. 
  Utilizar escaleras de mano de tijera, fabricadas en madera o fibra de carbono y con zapatas antideslizantes.
-	A la hora de realizar pruebas de funcionamiento, realizar previamente una comprobación de empalmes, mecanismos y protecciones. 
  Comunicar y avisar a todo el personal la realización de dichas pruebas.
-	Las partes metálicas de todo equipo eléctrico dispondrá de toma de tierra, excepto aquellos equipos que estén dotados de doble aislamiento. 
  Así mismo la instalación se ajustará al REBT.
-	En locales y superficies húmedas es preceptivo la utilización de tensiones de seguridad (24 v).
-	Los cuadros eléctricos estarán ubicados en lugares de fácil acceso y no peligrosos.
-	Se deberán señalizar todos los cuadros, máquinas, objetos, susceptibles de provocar riesgo de contacto eléctrico.
-	Todas las masas en tensión estarán puestas a tierra. 
  En el caso de utilización de grupos electrógenos se cumplirá lo anteriormente indicado.
-	La puesta a tierra de las masas irá asociada al corte o apertura automática del circuito mediante dispositivos de protección como interruptores diferenciales de sensibilidad adecuada.

==== Alta tensión

No se prevé realizar esta tarea en esta instalación. 
Si fuese necesario realizar alguna actividad de las recogidas en este apartado, por cambios en el proyecto durante la ejecución de obra, se seguirá este procedimiento. 
Cualquier cambio en el proyecto se informará previamente al coordinador y a las empresas y trabajadores afectados.

-	Los trabajos de corte (antes de iniciar el «trabajo sin tensión»), y reposición de la tensión, las realizarán trabajadores autorizados que, en el caso de instalaciones de alta tensión, deberán ser trabajadores cualificados.
-	Una vez identificados la zona y los elementos de la instalación donde se va a realizar el trabajo, y salvo que existan razones esenciales para hacerlo de otra forma, se seguirá el proceso que se describe a continuación, que se desarrolla secuencialmente en cinco etapas: 
  + Desconectar. 
  + Prevenir cualquier posible realimentación. 
  + Verificar la ausencia de tensión. 
  + Poner a tierra y en cortocircuito. 
  + Proteger frente a elementos próximos en tensión, en su caso, y establecer una señalización de seguridad para delimitar la zona de trabajo.
-	Hasta que no se hayan completado las cinco etapas no podrá autorizarse el inicio del trabajo sin tensión y se considerará en tensión la parte de la instalación afectada. 
  Sin embargo, para establecer la señalización de seguridad indicada en la quinta etapa podrá considerarse que la instalación está sin tensión si se han completado las cuatro etapas anteriores y no pueden invadirse zonas de peligro de elementos próximos en tensión.
-	El personal no especializado que realice trabajos próximos a partes conductoras de líneas de alta tensión y utilicen herramientas, aparatos o equipos, no podrá trabajar a una distancia inferior a: 3 metros, en instalaciones hasta 66.000 Voltios y 5 metros, en instalaciones superiores a 66.000 Voltios.
-	En la ejecución de zanjas, con proximidad de canalizaciones eléctricas subterráneas, se tendrán en cuenta las siguientes recomendaciones: 1) la ejecución de tareas con retroexcavadora, puede realizarse hasta 1 m de la conducción; 2) con martillo rompedor hasta 0,5 m ; 3) con herramientas manuales, sin golpear, pero arrastrando los materiales hasta alcanzar su ubicación.
-	Si las distancias de seguridad no pudieran mantenerse, se procederá al descargado de la línea, por parte de la Cía. propietaria de la línea y consistirá, en dejar la línea fuera de servicio con todos sus conductores en cortocircuito y puestos a tierra.
-	Si la descarga no es viable, se procederá a la retirada de la línea o conversión en subterránea, condicionada a la aprobación de la Cía propietaria de la línea, quien bajo el acuerdo que se establezca deberá encargarse de su realización.
-	El aislamiento de los conductores de la línea, es otra medida alternativa, que, para el caso de líneas de Baja Tensión, es posible aislar los conductores: mediante vainas y caperuzas aislantes ó sustituyéndolos por conductores aislados de 1.000 V de tensión nominal.
-	Instalar dispositivos de seguridad en los equipos y máquinas para reducir la zona de alcance del elemento móvil de altura, limita el riesgo de contacto directo instalando dispositivos de seguridad que limiten el recorrido de sus partes móviles. 
  Estos dispositivos suelen ser eléctricos, mecánicos o hidráulicos.
-	Instalar protecciones entorno a la línea de alta, es otra medida para impedir la invasión de su zona de seguridad por equipos, herramientas, máquinas o las cargas que se transportan.
-	Todas estas medidas pueden ser complementadas mediante elementos de señalización y balizamiento como: cintas o banderolas de color rojo, señales de peligro o indicadores de altura máxima o alumbrado de señalización para trabajos nocturnos.
-	Una vez concluidos los trabajos, tanto si se trata de instalaciones de alta como de baja tensión, el responsable de los mismos debe constatar que todo el personal ha salido de la zona de trabajo y se han retirado los equipos y herramientas utilizados, de forma que la instalación quede apta para restablecer la tensión sin riesgo para los trabajadores. 
  En general, para restablecer la tensión se seguirá el proceso inverso al empleado para suprimir la tensión.

=== Desplazamientos a obra
==== Aspectos generales

-	El desplazamiento hasta la instalación se hará respetando en todo momento las normas de circulación, teniendo en cuenta el tipo de vehículo que se maneja y la carga que se transporta. 
  Si el desplazamiento conlleva más de dos horas, se realizará una pequeña parada para descansar o turnarse los conductores, si procede.
-	Bajo ningún concepto se conducirá bajo el efecto de alcohol u otras sustancias que afecten a la capacidad de conducción.
-	Si por cualquier motivo el conductor se sintiera fatigado, parará el vehículo de forma segura y será sustituido por otro compañero habilitado para la conducción.
-	Antes de proceder al uso de los vehículos estos serán revisados por el conductor en cuanto a seguridad se refiere, (correcto funcionamiento de luces, señalizaciones, niveles de fluidos, y combustible, alarmas de funcionamiento, …etc..)
-	Al llegar al lugar de trabajo, el vehículo quedará estacionado de forma adecuada, prestando especial atención a que los portones que deban abrirse para acceder a la carga queden situados de forma que las maniobras de descarga o carga puedan hacerse de forma segura, no interfiriendo con el tráfico de vehículos y peatones ajenos a la empresa.
-	En caso de detectar algún tipo de avería en los vehículos durante la marcha, se parará en condiciones seguras y se avisará a la empresa para gestionar la incidencia. 
  No se circulará con el vehículo averiado hasta no verificar que no se vea afectada la seguridad del desplazamiento.

== Identificación y valoración de riesgos

Hay que identificar los factores de riesgo, los riesgos de accidente de trabajo y/o enfermedad profesional derivados de los mismos, procediendo a su posterior evaluación, de manera que sirva de base a la posterior planificación de la acción preventiva en la cual se determinarán las medidas y acciones necesarias para sucorrección (Ley 31/1995, de 8 de noviembre, sobre Prevención de Riesgos Laborales).

Tras el análisis de las características de la instalación y del personal expuesto a los riesgos se han determinado los riesgos que afectan al conjunto de la obra, a los trabajadores de una sección o zona de la obra y a los de un puesto de trabajo determinado.

La metodología utilizada en el presente informe consiste en identificar el factor de riesgo y asociarle los riesgos derivados de su presencia. 
En la identificación de los riesgos se ha utilizado la lista de " Riesgos de accidente y enfermedad profesional ", basada en la clasificación oficial de formas de accidente y en el cuadro de enfermedades profesionales de la Seguridad Social.

Para la evaluación de los riesgos se utiliza el concepto "Grado de Riesgo" obtenido de la valoración conjunta de la probabilidad de que se produzca el daño y la severidad de las consecuencias del mismo.

Se han establecido cinco niveles de grado de riesgo de las diferentes combinaciones de la probabilidad y severidad, las cuales se indican en la tabla siguiente:

//*INSERTAR TABLA COMBINACIONES RIESGOS*

La probabilidad se valora teniendo en cuenta las medidas de prevención existentes y su adecuación a los requisitos legales, a las normas técnicas y a los objetos sobre prácticas correctas. 
La severidad se valora en base a las más probables consecuencias de accidente o enfermedad profesional.

Los niveles bajo, medio y alto de severidad pueden asemejarse a la clasificación A, B y C de los peligros, muy utilizada en las inspecciones generales:
-	Peligro Clase A: condición o práctica capaz de causar incapacidad permanente, pérdida de la vida y/o una pérdida material muy grave.
-	Peligro Clase B: condición o práctica capaz de causar incapacidades transitorias y/o pérdida material grave.
-	Peligro Clase C: condición o práctica capaz de causar lesiones leves no incapacitantes, y/o una pérdida material leve.
-	Alta: Cuando la frecuencia posible estimada del daño es elevada.
-	Media: Cuando la frecuencia posible estimada es ocasional.
-	Baja: Cuando la ocurrencia es rara. 
  Se estima que puede suceder el daño pero es difícil que ocurra.

== Planificación de la acción preventiva

Tras el análisis de las características de los trabajos y del personal expuesto a los riesgos se establecen las medidas y acciones necesarias para llevarse a cabo por parte de las empresas instaladoras, para tratar cada uno de los riesgos de accidente de trabajo y/o enfermedad profesional detectados. 
(Ley 31/1995, de 8 de noviembre, sobre Prevención de Riesgos Laborales).

//*INSERTAR TABLAS VARIAS*

== Conclusión

Con lo anteriormente expuesto, estimamos que queda suficientemente aclarado el alcance de la presente EVALUACIÓN DE RIESGOS.

//*INSERTAR FIRMA, FECHA Y DEMÁS*




= Presupuesto






//Sergio: dejo en todos los anexos la enumeración "Anexo I, II, ...", ¿ ves bien dejarlo así ? o hago una función que cada vez que aparezca en el texto aumente el número del anexo y podamos elegir si escribir "Anexo" o "Anejo"
= Anexo I Planning de obra






















= Anexo II Procedimientos de mantenimiento, medición y seguridad en la instalación fotovoltaica <anexoII>

//Sergio.codigo:

#let start = <anexoII>
#let end =  heading.where(level: 1).after(start, inclusive: false);
*ÍNDICE ANEXO II*

#outline(
  title:none,
  target: selector(heading)
    .after(start, inclusive: false)
    .before(end, inclusive: false)
);



== Objeto

Establecer procedimientos de trabajo para verificar las corrientes y tensiones de las series de las placas fotovoltaicas en los cuadros eléctricos de corriente continua situados en la estructura.

Establecer las disposiciones mínimas de seguridad para la protección de los trabajadores frente al riesgo eléctrico en los lugares de trabajo.

== Ámbito de aplicación

Todos los trabajos con riesgo eléctrico contemplados en el R.D. 614/2001 sobre disposiciones mínimas para la protección de la salud y seguridad de los trabajadores frente al riesgo eléctrico: trabajos eléctricos o no que se realicen en instalaciones eléctricas o en sus proximidades.

== Tareas y responsabilidades
=== Recurso preventivo

Coordinará las tareas de medición y limpieza de los inversores, así como el reparto de las órdenes de trabajo a diario junto con los trabajadores de la empresa y un representante de la empresa contratista.

=== Trabajador autorizado

Es aquel trabajador que ha sido autorizado por el empresario para realizar determinados trabajos con riesgo eléctrico, en base a su capacidad para hacerlos de forma correcta, según los procedimientos establecidos en el Real Decreto 614/2001.

=== Trabajador cualificado

Es aquel trabajador autorizado que posee los conocimientos especializados en materia de instalaciones eléctricas, debido a su formación acreditada, profesional o universitaria, o a su experiencia certificada de dos o más años.

=== Representante de la empresa contratista

En contacto con el responsable de trabajo determinará la necesidad de actuación del parte de trabajo y atenderá a las necesidades de los trabajadores de la empresa durante su estancia en las instalaciones.

== Procedimiento de trabajo

El recurso preventivo valorará y determinará el trabajador (autorizado o cualificado) para desarrollar la tarea.

Diariamente se reunirá con dicho trabajador para determinar y coordinar los trabajos a realizar.

El recurso preventivo planificará en coordinación con el trabajador la fecha de actuación y verificará la coordinación de las actividades empresariales.

El trabajador en la fecha planificada se desplazará a la empresa con los medios y materiales necesarios y deberá contactar en la empresa con el representante antes de efectuar cualquier operación.

=== Previo al comienzo de los trabajos

Antes de trabajar en una instalación eléctrica hay que seguir el procedimiento descrito a continuación:

==== Identificar y valorar las condiciones de riesgo eléctrico

Verificar como mínimo lo siguiente:
- Si hay señalizaciones eléctricas, en especial, las que indican interconexiones con otros cuadros, ya que aunque se corte el interruptor principal puede seguir habiendo tensión debido a condensadores de potencia, baterías de alimentación, cuadros de mando de grupo, etc…
-	Si hay diferencial y tierra en el cuadro de acometida principal.
-	Si hay partes con tensión sin proteger dentro del cuadro (por ejemplo: relés, regletas, bornas de transformadores, etc ...) En este caso, deben colocarse etiquetas de riesgo eléctrico para advertir del peligro o, si es posible, poner una protección.
-	Si hay elementos con riesgo eléctrico, ya que debe eliminarse el riesgo con protecciones definitivas o poner protecciones temporales.
-	Si hay humedad (aguas o líquidos conductores), en cuyo caso está prohibido trabajar con aparatos eléctricos hasta que no se eliminen los riesgos.

==== Analizar el tipo de trabajo a realizar

Para identificar otros riesgos (caída en altura, etc.).

==== Tipos de trabajo (con o sin tensión)
===== Trabajos sin tensión

Se debe trabajar sin tensión siempre que se vayan a tocar directamente los hilos eléctricos, bornas, etc. y en líneas generales siempre que sea posible.

Si se han tenido que aislar circuitos (conectores, hilos, etc.), poner etiquetas de aviso, bornas, cinta, etc. que asegure que nadie de forma involuntaria restablecerá el circuito.

Si se tienen dudas de la existencia de voltajes provenientes de otros cuadros (instalaciones complejas con varios cuadros de maniobra y múltiples interconexiones) hay que utilizar guantes aislantes.

===== Trabajos con tensión

Sólo está permitido trabajar con tensión en una instalación eléctrica en la medición de inversores, localización de averías de funcionamiento y después de tomar las siguientes medidas de prevención:
-	Comprobar el buen estado de los aislantes de las herramientas, equipos de medida, prolongadores eléctricos, etc. que se vayan a utilizar.
-	Utilizar los equipos de protección individual adecuados (botas aislantes, guantes aislantes, casco con pantalla facial, alfombra aislante, arnés de seguridad).
-	Utilizar equipos de medida adecuados a la operación a realizar para detectar la avería, poniéndolos inicialmente en el rango mayor para evitar riesgos de explosión por selección inadecuada de escala o función. 
  El uso de lámparas portátiles y puentes está prohibido para detectar averías.
-	Identificar los componentes con tensión que no estén protegidos contra contacto accidental (bornas, relés, etc.) para extremar la precaución y minimizar el riesgo, si es posible se deberán proteger.
-	Situarse en una posición de trabajo estable y segura que evite caídas al suelo o contra la instalación eléctrica por reacciones inesperadas debido a: arcos eléctricos, cortocircuitos, etc. 
  Si detecta riesgo tome medidas para evitarlos.
-	En cuadros que tenga bornas o componentes con tensión sin proteger, se deben usar guantes aislantes y el resto de equipos de protección individual (botas aislantes, casco con pantalla facial, alfombra aislante).
-	Utilizar escaleras portátiles aislantes si se está cerca de equipos o cables con riesgo de contacto accidental.
-	Los fusibles deben ser del tamaño, tipo y capacidad adecuada. 
  Está prohibido sustituir fusibles por hilos.

En esta situación está prohibido:
-	Llevar objetos metálicos en el cuerpo que puedan causar contactos directos con elementos bajo tensión (relojes, cadenas, gafas metálicas, etc.).
-	Utilizar aparatos eléctricos o manipular sobre instalaciones eléctricas cuando accidentalmente se encuentren mojadas o con humedad.
- Utilizar herramientas sin aislar.

Considerando los riesgos identificados y las medidas preventivas establecidas anteriormente, se describen a continuación los distintos procedimientos de mantenimiento y medición en la instalación fotovoltaica.

== Procedimiento de medición de corrientes y tensiones en cuadros eléctricos de corriente continua en altura
=== Acceso a estructura

Se deberán seguir las pautas indicadas en el procedimiento de trabajo de acceso y trabajos en altura.

=== Medición de corrientes y tensiones

El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos a los que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.

El procedimiento será el siguiente:
+	Abrir el cuadro de corriente continua.
+	Se verificarán las corrientes con la pinza amperimétrica de las series de las placas fotovoltaicas.
+	A continuación, se verificarán las tensiones de cada serie.
+	Para verificar los fusibles de protección de cada serie se cortará primero el seccionador.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Se deben verificar uno a uno cada fusible.
+	Primero se quita el fusible y se comprueba con la pinza amperimétrica.
+	En caso de detectar algún fusible en mal estado se sustituirá por otro y se indicará en el parte.
+	Una vez comprobados todos los fusibles se conecta de nuevo el seccionador.
+	Se deberán utilizar los equipos de protección mientras no se verifique la ausencia de tensión.
+	Registro del trabajo realizado en el parte de trabajo.

== Medición y limpieza del inversor

=== Medición de inversores

+	El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos a los que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.
+	Se accederá primero al inversor y mediante un destornillador aislante y utilizando los equipos de protección individual (botas aislantes, casco con pantalla facial, guantes aislantes, alfombra aislante), se procede al disparo del seccionador de corriente alterna y del seccionador de corriente continua.
+	Una vez abierta la puerta, se coloca la pinza amperimétrica y se realiza la medición de tensiones.
+	Se cierra la puerta y se verifica visualmente en el display del inversor la tensión.
+	Pulsar la parada de emergencia del inversor.
+	Colocar el seccionador de continua off y a continuación el seccionador de alterna.
+	Abrir la puerta del inversor.
+	Una vez seccionado el inversor se secciona el cuadro de corriente alterna. 
  A continuación, se secciona el de corriente continua.
+	Se debe esperar el tiempo suficiente para que no haya nada de corriente continua en el variador. 
  Tiempo de espera mínimo de 15 minutos.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Proceder a la comprobación de ausencia de corriente continua con la pinza amperimétrica.
+	Se deberán utilizar los equipos de protección mientras no se verifique la ausencia de corriente y tensión.

=== Limpieza del inversor

+	Como continuación de lo descrito anteriormente, antes de proceder a la limpieza, el trabajador utilizará los equipos de protección adecuados a este tipo de tareas: gafas de protección, protector auditivo y mascarilla de seguridad.
+	Proceder previo al soplado un aspirado inicial en aras de evitar excesiva polvareda.
+	Encender el compresor portátil y mediante soplado realizar la limpieza del interior del inversor. 
  Para el exterior usar un cepillo o gamuza en caso necesario.
+	Finalizada la limpieza se revisará visualmente que no haya ningún desperfecto en la instalación. 
  En caso de algún desperfecto se seguirá lo indicado en el procedimiento de reparación de averías, además se comunicará la avería al responsable de los trabajos.
+	Si no hay desperfectos se cerrará la puerta del inversor. 
  Se volverán a utilizar los equipos de protección individual descritos inicialmente (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante).
+	Conectar la corriente continua.
+	Conectar la corriente alterna.
+	Verificar el rearme automático.
+	Conectar el seccionador de corriente continua del inversor y a continuación el seccionador de corriente alterna.
+	Finalmente se quita la parada de emergencia.
+	Registro del trabajo realizado en el parte de trabajo:
+	Inmediatamente después de finalizar el trabajo, el responsable de trabajo cumplimentará el parte de trabajo y albarán de material, indicando el trabajo realizado, las incidencias ocurridas. 
  Al final de la jornada, el parte de trabajo y albarán de material será entregado a la empresa.

== Procedimiento de reparación de averías
=== Acceso a estructura

En el caso que se deba acceder a la parte alta de la estructura, se deberán seguir las pautas indicadas en el procedimiento de trabajo de acceso y trabajos en altura.

=== Anomalía en la hornacina

+	El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos a los que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.
+	Se paran todos los inversores en manual.
+	Se desconectan los inversores de corriente alterna.
+	Se desconectan todos los inversores de corriente continua.
+	Se desconectan todos los cuadros de corriente alterna.
+	Se secciona el interruptor de corriente alterna de la hornacina.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Se repara la anomalía.
+	Se conecta el interruptor de corriente alterna de la hornacina.
+	Se conectan todos los cuadros de corriente alterna.
+	Se van conectando los inversores uno a uno, conectando primero los inversores en corriente continua.
+	Hasta que un inversor no está completamente en marcha no se actúa sobre el siguiente.
+	Verificar que todos los inversores están funcionando correctamente.

=== Anomalía en las averías de módulos o el cableado de corriente continua en cubierta

+ El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos a los que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.
+	Se para el inversor en manual.
+	Se desconecta el inversor de corriente alterna.
+	Se desconecta el inversor de corriente continua.
+	Se secciona el interruptor de corriente alterna.
+	Se secciona el interruptor de corriente continua.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Se accede a la cubierta.
+	Se secciona el cuadro de corriente continua de cubierta.
+	Se comprueba que no exista voltaje y amperaje en el cuadro.
+	Se desconectan todos los fusibles del cuadro.
+	Se desconecta el módulo estropeado.
+	Se sustituye por el correcto.
+	Se conectan todos los fusibles del cuadro.
+	Se conecta el cuadro de corriente continua de la cubierta.
+	Se baja de la cubierta.
+	Se conecta el cuadro de corriente continua.
+	Se conecta el cuadro de corriente alterna.
+	Se conecta el inversor a corriente continua.
+	Se conecta el inversor a corriente alterna.
+	Se pone el inversor en marcha.
+	Se comprueban todos los parámetros.

=== Anomalía en una instalación fotovoltaica

+	El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos a los que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.
+	Se recepciona la anomalía por sms a los móviles habilitados a dicho efecto.
+	Se conecta desde el servidor del SAT con los programas de monitorización para analizar la anomalía.
+	Una vez analizada se decide la actuación a realizar.
+	Si la anomalía no se pueda reparar por remoto se realiza una intervención en local desplazándose a la instalación.
+	Si la avería es sobre el inversor se monitoriza in situ para ver cómo solucionar la anomalía.
+	Una vez detectada se para el inversor en manual, luego se corta la alimentación de alterna y por último la alimentación de continua del inversor.
+	Se corta la llegada de tensión de continua en el cuadro correspondiente.
+	Se corta la salida de alterna a la red general del cuadro correspondiente.
+	Se espera 15 minutos, que es la recomendación del fabricante antes de actuar.
+	Se comprueba la alimentación de continua y alterna de nuevo antes de realizar cualquier actuación.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Una vez comprobadas las tensiones, se actúa sobre el inversor reparándolo.
+	Cuando la anomalía ya está solucionada se cierra de nuevo el inversor.
+	Se conecta el cuadro de corriente continua.
+	Se conecta el inversor a corriente continua.
+	Se conecta el cuadro de corriente alterna.
+	Se conecta el inversor a corriente alterna.
+	Se verifican los parámetros en el display del inversor.
+	Se conecta el inversor manual.
+	Una vez puesto en marcha se verifican de nuevo todos los parámetros en el display y su correcto funcionamiento.

=== Fallo en el cuadro de corriente alterna

+	El trabajador utilizará los equipos de protección individual proporcionados por la empresa y adecuados a los riesgos que pueda estar expuesto (botas aislantes, casco con pantalla facial, guantes aislantes, arnés de seguridad, alfombra aislante, ropa), herramienta aislada y los equipos de seguridad colectiva.
+	Se para el inversor manualmente.
+	Se desconecta de corriente alterna.
+	Se desconecta de corriente continua.
+	Se corta el cuadro de corriente continua de la instalación.
+	Se corta el cuadro de corriente alterna.
+	Se secciona el cuadro de corriente alterna de la hornacina.
+	Comprobar siempre la ausencia de corriente y de tensión.
+	Se repara la anomalía del cuadro.
+	Se conecta de nuevo el cuadro de la hornacina.
+	Se conecta el cuadro de corriente alterna.
+	Se comprueban los parámetros.
+	Se conecta el cuadro de la corriente continua de la instalación.
+	Se conecta la corriente continua del inversor.
+	Se conecta la corriente alterna del inversor.
+	Se comprueban parámetros en el display del inversor.
+	Se conecta el inversor manual.
+	Una vez puesto en marcha se verifican de nuevo todos los parámetros en el display y su correcto funcionamiento.

== Registro del trabajo realizado en el parte de trabajo

Inmediatamente después de finalizar el trabajo, el responsable de trabajo cumplimentará el parte de trabajo y albarán de material, indicando el trabajo realizado, las incidencias ocurridas.

Al final de la jornada, el parte de trabajo y albarán de material será entregado a la empresa.

== Conclusión

La aplicación del presente procedimiento deberá llevar consigo el obligado cumplimiento del Real Decreto 614/2001, de 8 de junio, sobre disposiciones mínimas para la protección de la salud y seguridad de los trabajadores frente al riesgo eléctrico. 
BOE nº 148 21-06-2001 y la Guía Técnica para la Evaluación y Prevención del riesgo eléctrico.

*FIRMA, FECHA Y DEMÁS*


= Anexo V Nombramiento de recursos preventivos

== Nombramiento del recurso preventivo

En aplicación del Art. 32 bis y de la disposición adicional decimocuarta, de la Ley 31/1995, de 8 de noviembre, de Prevención de Riesgos Laborales, los recursos preventivos de la obra, serán designados mediante el presente acta de nombramiento. 
Como normas generales de actuación, los recursos preventivos tendrán que:
-	Vigilar el cumplimiento y hacer cumplir a todos los trabajadores de la obra, las medidas incluidas en el plan de seguridad y salud en el trabajo, y comprobar la eficacia de las mismas.
-	Aplicar los principios de la acción preventiva que se recogen en el art. 15 de la Ley de Prevención de Riesgos Laborales, en particular al desarrollar las tareas siguientes:
  -	El mantenimiento de la obra en buen estado de orden y limpieza.
  -	La elección del emplazamiento de los puestos y áreas de trabajo, teniendo en cuenta sus condiciones de acceso, y la determinación de las vías o zonas de desplazamiento o circulación.
  -	La manipulación de los distintos materiales y la utilización de los medios auxiliares.
  -	El mantenimiento, el control previo a la puesta en servicio y el control periódico de las instalaciones y dispositivos necesarios para la ejecución de la obra, con objeto de corregir los defectos que pudieran afectar a la seguridad y salud de los trabajadores.
  -	La delimitación y el acondicionamiento de las zonas de almacenamiento y depósito de los distintos materiales, en particular si se trata de materias o sustancias peligrosas.
  -	La recogida de los materiales peligrosos utilizados.
  -	El almacenamiento y la eliminación o evacuación de residuos y escombros.
  -	La adaptación, en función de la evolución de la obra, del período de tiempo efectivo que habrá de dedicarse a los distintos trabajos o fases de trabajo.
  -	La cooperación entre los contratistas, subcontratistas y trabajadores autónomos.
  -	Las interacciones e incompatibilidades con cualquier otro tipo de trabajo o actividad que se realice en la obra o cerca del lugar de la obra.
-	Cumplir la normativa en materia de prevención de riesgos laborales, teniendo en cuenta, las obligaciones sobre coordinación de actividades empresariales previstas en el art. 24 de la Ley de Prevención de Riesgos Laborales, así como cumplir las disposiciones mínimas establecidas en el anexo IV del R.D. 1627/1997, de 24 de octubre, por el que se establecen disposiciones mínimas de seguridad y salud en las obras de construcción y, si procede, del R.D. 614/2001, de 8 de junio, sobre disposiciones mínimas para la protección de la salud y seguridad de los trabajadores frente al riesgo eléctrico.
-	Informar y proporcionar las instrucciones adecuadas a los trabajadores autónomos sobre todas las medidas que hayan de adoptarse en lo que se refiere a su seguridad y salud en la obra.
-	Atender las indicaciones y cumplir las instrucciones del coordinador en materia de seguridad y de salud durante la ejecución de la obra o, en su caso, de la dirección facultativa.

//*CUADRADOS CON FIRMAS *



= Anexo VI Nombramiento de jefe de obra


== Designación del jefe de obra

instaladora.nombre con CIF instaladora.cif nombra al Sr D.  con DNI  jefe de obra para la obra proyecto.nombre.

Funciones del jefe de trabajo

+ Antes de la iniciación de los trabajos:
  -	Llevar o disponer de la Habilitación de todos los trabajadores de su brigada.
  -	Identificar la instalación donde se deben realizar los trabajos.
  -	Verificar que el estado aparente de la instalación permite realizar los Trabajos.
  -	Elegir el Procedimiento de Trabajo.
  -	Disponer del número de trabajadores necesarios
  -	Prever las herramientas, equipos y materiales necesarios.
  -	Constatar que las condiciones atmosféricas permiten iniciar los Trabajos.
  -	Comentar con los trabajadores de la brigada el Procedimiento de trabajo a realizar.
  -	Comprobar que se han verificado los equipos de protección individual, colectivos y herramientas.
  -	Determinar el lugar de trabajo procediendo a su delimitación y señalización si procede.
  -	Definir y verificar la Zona de Trabajo.
  -	Comprobar que los trabajadores que van a realizar el trabajo, se desprenden de los objetos metálicos que porten, tales como anillos, relojes, pulseras y cadenas al cuello, en el caso de realizar trabajos en Tensión en BT.
  -	Comprobar que los trabajadores se colocan los equipos de protección individual.

+ Durante la ejecución de los trabajos:
  -	Estar presente durante todo el trabajo. 
    Cuando se realicen trabajos de especial peligrosidad dirigiéndolo y/o ejecutándolo.
  -	Controlar el cumplimiento de todas las medidas de seguridad.
  -	Controlar el correcto uso de las protecciones colectivas e individuales.
  -	Controlar la correcta utilización de los equipos y herramientas requeridos.
  -	Decidir sobre la realización de los trabajos ante condiciones atmosféricas adversas o ante imprevistos.

+ Al finalizar los trabajos:
  -	Comprobar que se ha verificado el correcto estado final de la instalación y su funcionamiento.
  -	Comprobar la recogida de materiales, equipos y su adecuada ordenación y limpieza.
  -	Comprobar la limpieza del área de trabajo.
  -	Formalizar los Partes o Notificaciones de trabajo que estén establecidos en la empresa.

Debiendo de estar presente en obra durante la ejecución de los trabajos, o bien designar un sustituto en caso de ausentarse de la zona de los trabajos.

//*CUADRADOS CON FIRMAS*



= Anexo VII Nombramiento de supervisor manejo de cargas



== Nombramiento del supervisor del manejo de cargas

instaladora.nombre con CIF instaladora.cif nombra al Sr D.  con DNI  Supervisor de manejo de cargas para la obra: proyecto.nombre. 
Para la realización de esta obra, se procederá al nombramiento del supervisor del manejo de cargas en la obra mediante la presente acta.

Como normas generales de actuación tendrá que:
-	Vigilar el cumplimiento y hacer cumplir a todos los trabajadores de la obra, las medidas incluidas en el plan de seguridad y salud en el trabajo en cuanto a supervisor de cargas se refiere, y comprobar la eficacia de las mismas.
-	Además, cumplirá con las actividades siguientes:
  -	El mantenimiento de la obra en buen estado de orden y limpieza.
  -	La elección del emplazamiento de los puestos y áreas de trabajo, teniendo en cuenta sus condiciones de acceso, y la determinación de las vías o zonas de desplazamiento o circulación.
  -	La manipulación de los distintos materiales y la utilización de los medios auxiliares.
  -	La delimitación y el acondicionamiento de las zonas de almacenamiento y depósito de los distintos materiales, en particular si se trata de materias o sustancias peligrosas.
  -	Supervisión en el izado y bajada de materiales en obra, asegurándose que se realiza cumpliendo todas las medidas de seguridad.
  -	Comprobación del estado de los medios de elevación de las cargas.

//*CUADRADOS CON FIRMAS*



= Anexo VIII Protocolo uso de plataformas elevadoras <anexoVIII>

//Sergio.codigo:

#let start = (<anexoVIII>)
#let end = heading.where(level: 1).after(start, inclusive: false)

*Índice del Anexo VIII*
#outline(
  title: none,
  target: selector(heading)
    .after(start, inclusive: false)
    .before(end, inclusive: false)
)


== Objeto

La utilización de plataformas elevadoras móviles de personal (PEMP) para efectuar trabajos en altura de distinta índole, junto con el hecho de que la mayor parte de estos equipos son de alquiler, hace necesario establecer un protocolo en instaladora.nombre a modo de guía de gestión preventiva de estos equipos de trabajo, ya que, a los riesgos propios y asociados a su utilización, se añaden los derivados del desconocimiento de las normas de utilización segura que deben de aplicarse.

Este protocolo establece los requisitos de seguridad de instaladora.nombre para trabajos en altura con PEMP.

=== Ámbito

No se prevé el uso de este tipo de equipos en la obra objeto del plan, pero ante la posibilidad de que surjan inconvenientes que hagan que sea necesario en determinadas circunstancias el uso de medios de elevación, se usará preferentemente este medio, por lo que se incluye en el plan este protocolo en previsión de su eventual utilización.

Los trabajos que se podrían realizar con PEMP para la obra objeto del Plan son los siguientes:
-	Instalación fotovoltaica sobre estructura elevada, incluyendo:
  -	Montaje y revisión de canalizaciones y cableado
  -	Repasos de aprietes de paneles.

== Información de riesgos asociados al uso de las PEMP
=== Caídas a distinto nivel

Las caídas a distinto nivel pueden ser debidas a:
-	Basculamiento del conjunto del equipo al estar situado sobre una superficie inclinada o en mal estado, falta de estabilizadores, etc.
-	Ausencia de barandillas de seguridad en parte o todo el perímetro de la plataforma.
-	Efectuar trabajos utilizando elementos auxiliares tipo escalera, banquetas, etc., para ganar altura.
-	Trabajar sobre la plataforma sin utilizar los equipos de protección individual debidamente anclados.
-	Rotura de la plataforma de trabajo por sobrecarga, deterioro o mal uso de la misma.
-	Utilizar la PEMP para acceder desde la misma a una instalación o estructura externa.
-	Trabajar con parte del cuerpo situado fuera de la plataforma de trabajo.
-	Subir o bajar utilizando la estructura de elevación.
-	Efecto catapulta al pasar por encima de un bordillo, etc.

=== Vuelco del equipo

El vuelco del equipo puede ser debido a:
-	Trabajar con el chasis situado sobre una superficie inclinada.
-	Hundimiento o reblandecimiento de toda o parte de la superficie de apoyo del chasis.
-	No utilizar placas estabilizadoras o hacerlo de forma incorrecta.
-	Apoyar la PEMP total o parcialmente sobre superficies poco resistentes
-	Sobrecargar la plataforma de trabajo respecto a su carga nominal.
-	Efecto péndulo al caer al vacío desde la plataforma de trabajo, llevando el operario una eslinga no ajustable, siendo el punto de giro el punto de anclaje, lo que puede provocar en determinadas circunstancias el vuelco de la PEMP.
-	No respetar la distancia mínima de seguridad respecto a una zanja.
-	Usar la PEMP como una grúa para elevar cargas suspendidas.
-	Aumentar la superficie de la plataforma de trabajo con estructuras adicionales.
-	Utilizar el equipo en condiciones meteorológicas adversas tales como viento, lluvia, tormentas con aparato eléctrico, etc.
-	Sobrepasar la fuerza máxima lateral admisible, por ejemplo, utilizando una manguera de agua a alta presión para limpiar una fachada.
-	Sobrepasar el número máximo admisible de personas en la plataforma de trabajo.

=== Caída de materiales sobre personas y/o bienes

La caída de materiales sobre personas y/o bienes puede ser debida a:
-	Vuelco del equipo.
-	Plataforma de trabajo sin protecciones perimetrales junto con la existencia de herramientas sueltas o materiales dejados sobre la superficie.
-	Rotura de la plataforma de trabajo.
-	Personas situadas en las proximidades de la zona de trabajo o bajo la vertical de la plataforma sin balizar.

=== Caídas al mismo nivel

Las caídas al mismo nivel pueden ser debidas a:
-	Falta de orden y limpieza en la superficie de la plataforma de trabajo.

=== Golpes, choques o atrapamientos del operario o de la propia plataforma contra objetos fijos o móviles

Los golpes, choques o atrapamientos del operario o de la propia plataforma contra objetos fijos o móviles pueden ser debidos a:
-	Realizar movimientos de elevación o pequeños desplazamientos del equipo en proximidades de obstáculos fijos o móviles sin las correspondientes precauciones (por ejemplo, no mirar en el sentido del movimiento del equipo de trabajo, no mantener todos los miembros del cuerpo en el interior de la plataforma, etc.) o por no tener en cuenta el estado del terreno por el que se traslada.
-	Efecto péndulo al caer el operario al vacío utilizando una eslinga no ajustable golpeándose contra obstáculos que se encuentran en la trayectoria de caída o con elementos de la propia PEMP.

=== Atrapamiento del cuerpo o extremidades superiores entre alguna de las partes móviles de la estructura y entre ésta y el chasis

El atrapamiento del cuerpo o extremidades superiores entre alguna de las partes móviles de la estructura y entre ésta y el chasis puede ser debido a:
-	Efectuar algún tipo de actuación en la estructura durante la operación de bajada/subida de la misma.
- Situarse entre el chasis y la plataforma durante la operación de bajada/subida de la plataforma de trabajo.

=== Contactos eléctricos directos o indirectos

Los contactos eléctricos directos o indirectos pueden ser debidos a:
-	Efectuar trabajos en proximidad a líneas eléctricas de AT y/o BT ya sean aéreas o en fachada.
-	Utilizar la PEMP como toma de tierra.
-	Utilizar la PEMP en caso de tormentas con aparato eléctrico.

=== Quemaduras o intoxicaciones

Las quemaduras o intoxicaciones pueden ser debidas a:
-	Cargar las baterías en zonas mal ventiladas con riesgo de explosión por vapor de hidrógeno.
-	Repostar combustible con el motor en marcha.
-	Proyección de líquido hidráulico por rotura de alguna manguera con presión.
-	Contacto con las partes calientes del motor de combustión.
-	Uso de la PEMP con motor de combustión en locales con ventilación insuficiente.
-	Utilizar la PEMP en zonas o áreas con riesgo de inflamación, deflagración, explosión o incendio.
-	Falta de EPI de protección adecuadas en la comprobación o manipulación de las baterías.

== Normas de seguridad en la utilización

Hay una serie de normas importantes a seguir, sin perjuicio de lo dispuesto en el manual de uso y mantenimiento de la PEMP:

=== Previas a la puesta en marcha de la plataforma

Antes de utilizar la plataforma se debe comprobar la PEMP para detectar posibles defectos o fallos que puedan afectar a su seguridad. 
La comprobación debe consistir en verificar los siguientes elementos:
-	Controles de operación y de emergencia.
-	Dispositivos de seguridad.
-	Disponibilidad del EPI contra caídas.
-	Sistema eléctrico, hidráulico y de combustión, según aplique (escapes y mal estado de conexiones eléctricas).
-	Señales de alerta y control.
-	Integridad y legibilidad de las pegatinas.
-	Estado físico de los estabilizadores y estructura en general.
-	Evidencia de soldaduras deterioradas u otros defectos estructurales.
-	Condiciones anómalas en ruedas, neumáticos, frenos y baterías.
-	Existencia de residuos de productos químicos, barro, aceite, pintura, etc. que pueden hacer resbaladiza la superficie de la cesta de trabajo.

Cualquier defecto debe ser evaluado por personal cualificado y formado por el fabricante y determinar si constituye un riesgo para la seguridad del equipo. 
Todos los defectos detectados que puedan afectar a la seguridad deben ser corregidos antes de utilizar el equipo.

=== Previas a la elevación de la plataforma

Previamente a la elevación de la plataforma se deben realizar las siguientes operaciones:
-	Comprobar la posible existencia de conducciones eléctricas de A.T. en la vertical del equipo. 
  Hay que mantener una distancia mínima de seguridad, aislarlos o proceder al corte de la corriente mientras duren los trabajos en sus proximidades.
-	No exceder la carga nominal de la PEMP.
-	Revisar el lugar de trabajo en el que se situará la PEMP antes de cada uso.
-	Utilizar los estabilizadores de acuerdo con las indicaciones del fabricante y que no se puede actuar sobre los mismos mientras la plataforma de trabajo no esté en posición de transporte.
-	Bajar o cerrar la barandilla o puerta de acceso a la plataforma, antes de operar el equipo.
-	Repartir las cargas y si es posible situarlas en el centro de la plataforma de trabajo.
-	Los operadores que se encuentran en la cesta de trabajo deben utilizar los arneses (de cuerpo completo y eslinga ajustable) anclados a los puntos específicos previstos para ello (retención), así como los EPI correspondientes a los riesgos de la tarea prevista a desarrollar (casco, guantes, etc...).
-	Los operadores se deben mantener siempre dentro de la cesta de trabajo, con los pies en el suelo de la misma. 
  Está prohibido sentarse o subirse a las barandillas de protección.
-	Delimitar la zona de trabajo para evitar que personas ajenas a los trabajos permanezcan o circulen por las proximidades.

=== Movimiento del equipo con la PEMP elevada

Durante el movimiento del equipo con la plataforma elevada se debe cumplir:
-	Mantener de forma continua una visión clara del camino y del área a recorrer.
-	El movimiento de traslado marcha atrás se debe limitar a los casos imprescindibles pues la visibilidad no siempre está garantizada.
-	Mantener una distancia de seguridad a obstáculos, desniveles, zanjas, rampas, etc...
-	Mantener la distancia mínima de líneas eléctricas con tensión.
-	Limitar la velocidad de desplazamiento de la PEMP teniendo en cuenta las condiciones del terreno, la visibilidad, la presencia de pendientes, etc..., según el tipo de PEMP.
-	Se deben tener en cuenta las condiciones meteorológicas (viento, lluvia, nieve, etc.), de forma que no impliquen la necesidad de detener el trabajo.
-	No manejar la PEMP de forma temeraria o distraída, comprobando en todo momento que no hay trabajadores en sus proximidades.
-	Evitar situarse sobre superficies frágiles o inestables debiendo evaluar previamente las condiciones del terreno.
-	Si la PEMP está averiada dejar un indicador de fuera de servicio y retirar las llaves de contacto depositándolas en el lugar habilitado para ello.
-	Utilizar placas de apoyo en caso necesario, de modo que se aumente la superficie de apoyo y disminuya la presión sobre el suelo. 
  Hay que tener en cuenta que aumentando 3 veces la superficie de apoyo, disminuye 10 veces la presión que se ejerce en el suelo.
-	No desplazar la PEMP a gran velocidad en zonas estrechas o con obstáculos.
-	Verificar la presencia de obstáculos por encima del operador y determinar la necesidad de acoplar sistemas antiatrapamiento.

=== Normas después del uso de la plataforma

Al finalizar el uso de la PEMP, se deben tener en cuenta las siguientes normas de seguridad:
-	Aparcar la PEMP convenientemente en el lugar habilitado para ello.
-	Cerrar todos los contactos y verificar la inmovilización, calzando las ruedas si es necesario.
-	Limpiar la PEMP de grasa, aceites, pintura, etc.
-	Limpiar la PEMP con agua procurando que no afecte a cables o partes eléctricas del equipo.

=== Otras recomendaciones de seguridad complementarias

Se recomienda aplicar las siguientes recomendaciones de seguridad complementarias:
-	No modificar ni neutralizar los dispositivos de seguridad de la PEMP, pues afectan a su seguridad y estabilidad.
-	No se deben añadir elementos que aumenten la carga debida al viento, tales como paneles publicitarios que pueden modificar la carga máxima de utilización, la carga estructural, la carga debida al viento o fuerza manual, según los casos.
-	Utilizar los mandos de la PEMP con suavidad, sin brusquedades.
-	Cuando se descienda de la rampa de un camión, hacerlo de manera segura, evitando un golpe contra el suelo o un efecto catapulta.
-	Las baterías deben cargarse en zonas abiertas, bien ventiladas y lejos de posibles llamas, chispas, fuegos y con prohibición de fumar (emisión de hidrógeno).
-	No se deben hacer modificaciones de cualquier tipo en todo el conjunto de las PEMP.
-	Se debe llevar un registro de las revisiones/inspecciones de la PEMP y un mantenimiento preventivo y correctivo según se indica en la UNE 58921.
-	No subir o bajar de la plataforma si está elevada utilizando los dispositivos de elevación o cualquier otro sistema de acceso.
-	Evitar usar motores de combustión interna en interiores, salvo que cuenten con ventilación suficiente para evitar los humos tóxicos.
-	No se deben utilizar elementos auxiliares situados sobre la plataforma de trabajo, para ganar altura, como escaleras, tablones, andamios, etc.
-	Cualquier anomalía detectada por el operario que afecte a su seguridad o la del equipo debe ser comunicada inmediatamente y subsanada antes de continuar los trabajos.
-	Verificar antes de bajar o mover la PEMP, que no existen personas u obstáculos en zonas adyacentes.
-	En trabajos de poda, debe delimitarse la vertical de la zona de trabajo y situar otro operario que evite que otras personas puedan acceder a la zona de riesgo.
-	No rellenar los depósitos de combustible (PEMP con motor de combustión) con el motor en marcha.
-	Asegurar que los operadores de PEMP tengan formación teórico/práctica para el manejo de la plataforma.
-	Todos los trabajadores que vayan a operar con plataformas elevadoras deberán disponer del APTO médico de vigilancia de la salud, que les faculta para trabajar en altura.
-	No sobrecargar la plataforma de trabajo.
-	No utilizar la plataforma como grúa.
-	No sujetar la plataforma o el operario de la misma a estructuras fijas.

== Valoración previa de los trabajos

Una vez vista la información de riesgos y medidas preventivas descritas y previamente a la realización de los trabajos, instaladora.nombre valorará:
- Existencia de antecedentes, es decir, si se ha realizado ese trabajo anteriormente con PEMP.

== Uso correcto del arnés en la plataforma

*FOTO DEL USO DEL ARNÉS*

== Consideeraciones sobre la plataforma y su operador
=== Documentación

El operador de la PEMP deberá comprobar que se dispone de la siguiente documentación legalmente exigible:
-	Manual de instrucciones del fabricante.
-	Marcado CE y Declaración de conformidad.
-	Documentación justificativa de la última comprobación de que la PEMP ha sido revisada e inspeccionada, según art. 4.4 del RD. 1215/1997.

Se debe comprobar que la PEMP dispone de pegatinas o placas con las instrucciones relativas a la utilización, reglaje y mantenimiento, siempre que ello sea necesario en orden a garantizar la salud y la seguridad de las personas.

=== Manual de instrucciones del fabricante

Toda PEMP debe llevar un Manual de Instrucciones del Fabricante en castellano, que incluya de forma separada las instrucciones para las operaciones de mantenimiento que únicamente las podrán realizar personal de mantenimiento especializado. 
Contendrá, entre otros aspectos:
-	La declaración CE de conformidad o un documento que exponga el contenido de dicha declaración y en el que figuren las indicaciones de la máquina.
-	Descripción general de la máquina.
-	Los planos, diagramas, descripciones y explicaciones necesarias para el uso, el mantenimiento y la reparación de la máquina, así como para comprobar su correcto funcionamiento.
-	Descripción de los puestos de trabajo que puedan ocupar los operadores.
-	Descripción del uso previsto de la máquina.
-	Las instrucciones relativas a la puesta en servicio y la utilización de la máquina y, en caso necesario, las instrucciones relativas a la formación de los operadores.
-	Información sobre los riesgos residuales que existan a pesar de las medidas de diseño inherentemente seguro, de las medidas de protección y de las medidas preventivas complementarias adoptadas.
-	Instrucciones acerca de las medidas preventivas que debe adoptar el usuario, incluyendo, cuando proceda, los equipos de protección individual a proporcionar.

=== Señalización

Las PEMP deben ir provistas de la siguiente documentación y elementos de señalización:
-	Diagramas de alcances y especificaciones.
-	Señalización de peligros y advertencias de seguridad recogidas en los manuales de funcionamiento entregados por el fabricante.
-	El operador debe leer y comprender los símbolos situados sobre la plataforma de trabajo, si es necesario con la ayuda de personal competente o capacitado (sesión de familiarización).

Deben disponer en un emplazamiento fácilmente visible, una o varias placas del fabricante indelebles que den la información siguiente:
-	El modelo y la designación de la máquina.
-	Número de serie o de fabricación.
-	El año de fabricación, es decir, el año del final del proceso de fabricación.
-	Masa en vacío en kilogramos.
-	Carga nominal en kilogramos.
-	Carga nominal expresada en número autorizado de personas y masa del equipo en kilogramos.
-	Para plataformas de trabajo que tienen diferentes cargas nominales cada carga nominal debe expresarse en número autorizado de personas y masa del equipo en kilogramos.
-	Fuerza manual máxima admisible en newtons.
-	Velocidad máxima admisible del viento en metros por segundo.
-	Inclinación(es) máxima(s) admisible(s) para el chasis.
-	Información relativa a la fuente hidráulica en caso de alimentación por fuente de energía hidráulica exterior.
-	Información relativa a la fuente eléctrica en caso de alimentación mediante una fuente de energía eléctrica exterior.

=== Mantenimiento y revisiones de la PEMP

Las PEMP deben ser mantenidas de acuerdo con lo indicado en el manual de instrucciones del fabricante, que se entrega con cada equipo. 
Este mantenimiento debe ser realizado por personal competente y especialmente capacitado. 
Las “Revisiones Periódicas de Seguridad” sólo pueden ser realizadas por un técnico cualificado.

=== Requisitos para operador de PEMP

Sólo las personas mayores de 18 años, autorizadas y formadas pueden operar y utilizar las PEMP.

Debe haber al menos 2 trabajadores capacitados para el manejo de la plataforma para:
-	Intervenir rápidamente en caso de necesidad.
-	Tomar los mandos en caso de accidente o de avería.
-	Vigilar y evitar la circulación de las máquinas y peatones alrededor de la barquilla.
-	Guiar al conductor de la barquilla si fuera necesario.

*FIRMA, FECHA Y DEMÁS*



= Anexo IX Protocolo de rescate en caso de accidente <anexoIX>

//Sergio.codigo:

#let start = (<anexoIX>)
#let end = heading.where(level: 1).after(start, inclusive: false)

*Índice del Anexo IX*
#outline(
  title: none,
  target: selector(heading)
    .after(start, inclusive: false)
    .before(end, inclusive: false)
)

== Objeto

Al efectuar trabajos en altura de distinta índole, hace necesario establecer un protocolo de rescate, ya que a los riesgos propios y asociados a los trabajos, se añaden los derivados de los trabajos en altura.

== Rescate de personas en caso de accidente

Hay que tener en cuenta que, en caso de accidente, el operario puede llegar a estar en situaciones comprometidas para su vida:
-	Zonas alejadas de centros urbanos.
-	Situarse cerca de peligros (alta tensión, zonas de altas temperaturas, maquinaria en movimiento, etc...).
-	Gravedad a nivel médico (hemorragias masivas).

La rápida respuesta por parte de sus compañeros puede ser vital para no agravar el estado del accidentado. 
Por ello no solo deberemos de realizar el “análisis de riesgos laborales” de dicha actividad, además deberemos de tener en cuenta desarrollar un “plan de emergencia”, para poder tener una respuesta clara, rápida y segura a la hora de asistir al accidentado.

La formación adecuada en dichas técnicas y conocimientos en materia de primeros auxilios es fundamental.

=== Ejemplos de procedimientos en rescate
==== Método directo vertical

Este método es el más rápido de realizar, ya que los pasos a seguir son menos elaborados que en otras técnicas.
+ Verificaremos la gravedad en la que se encuentra el operario (lesiones, si está consciente o inconsciente).
+ Nos acercaremos a él por medio de las técnicas que tengamos más a mano o las que nosotros valoremos más convenientes para después seguir realizando el rescate. 
  Siempre es conveniente tener un tendido de cuerda para una más rápida evacuación.
+ Con nuestros cabos de anclaje nos uniremos al accidentado, colocando dichos cabos en las anillas del arnés que consideremos más apropiadas para la comodidad tanto del accidentado como nuestra, y para evitar empeorar las lesiones que pueda tener. 
  A veces es conveniente colocar un cabo en la anilla de la espalda y otra en la anilla central delantera, para que se le pueda bajar verticalmente y así evitar la colisión de los pies con las estructuras.
+ Una vez unidos nos aseguramos de que los cabos de anclaje estén tensos de tal manera que notemos el peso del accidentado.
+ Posteriormente desengancharemos al accidentado y si fuese necesario cortaremos los elementos a los que esta enganchado (cuerda, cabos de anclaje, cintas, etc) para que de esta manera su peso se traslade a nuestro arnés y sistema de descenso.
+ Descenderemos al accidentado hasta la base de la zona de trabajo siempre con el máximo cuidado y atención.

==== Método indirecto vertical

+ Verificamos el estado del accidentado, como se encuentra, las lesiones y el estado de las mismas, y si fuera necesario aplicar los conocimientos de primeros auxilios.
+ Nos acercaremos al accidentado por el método adecuado.
+ Montaremos las cuerdas de rescate con el sistema de doble anclaje. 
  Puede estar acompañado desde su inicio con un sistema de polipasto si fuera necesario elevar al accidentado para liberarlo de su sistema de seguridad (si está colgando en el vacío).
+ Ataremos al accidentado de las anillas de seguridad del arnés. 
  Verificar que las cuerdas llegan hasta el suelo.
+ Situaremos al accidentado en la vertical y le desengancharemos del sistema de seguridad al que esté sujeto.
+ Lo descenderemos hasta la base de la zona de trabajo con cuidado y si fuese necesario con la ayuda de un tercer operario desde el suelo y una cuerda auxiliar que lo irá separando de la estructura.

== Primeros auxilios

Todos podemos tener un accidente. 
La formación y organización de los primeros auxilios no es más que una manera de prepararse para actuar ante situaciones excepcionales. 
Se entiende por primeros auxilios el conjunto de actuaciones o técnicas que permiten la atención inmediata de un accidentado, hasta que llegue la asistencia médica profesional, para que las lesiones sufridas no empeoren.
Consejos generales:
+ Conservar la calma; No perder los nervios es básico para poder actuar de forma correcta, evitando errores irremediables.
+ Evitar aglomeraciones; No se debe permitir que el accidente se transforme en espectáculo.
+ No mover al herido; Como norma básica y elemental no se debe mover a nadie que haya sufrido un accidente, hasta estar seguro de que se pueden realizar movimientos sin riesgo de empeorar las lesiones existentes. 
  No obstante, existen situaciones en las que la movilización debe ser inmediata, ya que el accidentado sigue estando expuesto a una situación de riesgo.
+ Examinar al herido; Se debe efectuar una evaluación primaria, que consistirá en comprobar si el accidentado está consciente, si respira y si tiene pulso. 
  Posteriormente se realizará una evaluación donde se comprobará que tipo de lesiones posee el accidentado (fracturas, cortes, golpes, etc.). 
    Es importante realizar un correcto examen del herido para facilitar la mayor información posible a los servicios de emergencia.
+ Tranquilizar al herido; Los accidentados suelen estar asustados, desconocen las lesiones que sufren y necesitan a alguien en quien confíen en esos momentos de angustia.
+ Mantener al herido caliente; Cuando el organismo humano recibe una agresión se activan los mecanismos de autodefensa, implicando, en muchas ocasiones, la perdida de calor corporal. 
  Esta situación se acentúa cuando existe pérdida de sangre. 
  Por lo tanto es vital mantener caliente al accidentado.
+ Avisar al personal sanitario; Una vez realizada la evaluación del accidentado se avisará a los servicios de emergencia Tlf 112.
+ No medicar; No se debe dar ningún medicamento al accidentado.

La rápida actuación ante un accidente puede salvar la vida de una persona, o evitar el empeoramiento de las lesiones que padezca. 
Para atender a un accidentado hay recordar tres actuaciones básicas:
+ Proteger.
+ Avisar.
+ Socorrer.

*FIRMA, FECHA Y DEMÁS*


= Anexo X Plan de acción frente a fenómenos meteorológicos adversos <anexoX>

//Sergio.codigo:

#let start = (<anexoX>)
#let end = heading.where(level: 1).after(start, inclusive: false)

*Índice del Anexo X*

#outline(
  title: none,
  target: selector(heading)
    .after(start, inclusive: false)
    .before(end, inclusive: false)
)


== Objeto

Al realizar gran parte de los trabajos al aire libre, se hace necesario establecer un plan de acción frente fenómenos meteorológicos adversos en instaladora.nombre a modo de guía de gestión preventiva ya que, a los riesgos propios de la instalación se añaden los derivados de la climatización.

== Condiciones climatológicas adversas en la obra

Los trabajos realizados se desarrollan con una alta exposición a agentes ambientales, lo que supone que muchas de las tareas que habitualmente se realizan pueden ver condicionado su desarrollo normal por vientos fuertes, lluvias intensas, tormentas, niebla densa, temperaturas extremas, etc…

Una actuación correcta exige una planificación que tenga en cuenta las condiciones climáticas en las que se van a ejecutar cada una de las diferentes operaciones, con el fin de evitar daños a la salud de los trabajadores, deterioros en las instalaciones y equipos de trabajo, interferencias y retrasos en la producción.

Aunque sus consecuencias son inevitables, los fenómenos meteorológicos adversos pueden ser previstos, en su mayoría, con antelación suficiente, por lo que también podrán anticiparse medidas destinadas a paliar los efectos que la exposición a esas condiciones pueden tener sobre los trabajadores y el desarrollo general de la obra.

Temporales de viento, lluvias, nevadas, olas de frío y de calor, tormentas, etc., son fenómenos que pueden producirse en España, a lo largo del año, con mayor o menor incidencia según la zona geográfica y la estación:
-	TEMPERATURAS EXTREMAS: FRÍO Y CALOR.- Entre todos los factores que se relacionan en este apartado, los que tienen un mayor impacto son los relacionados con la temperatura, que conlleva riesgos de sufrir las consecuencias derivadas de la exposición al calor, como son la deshidratación, golpe de calor, etc., así como los relacionados con la exposición al frío, de la que se pueden derivar problemas reumáticos, circulatorios, hipotermia, etc…
-	RADIACIONES SOLARES.- La exposición a las radiaciones solares puede tener efectos adversos sobre la salud, especialmente en el caso de las personas que, por trabajar a la intemperie, están mucho más tiempo expuestas. 
  Las consecuencias pueden variar desde quemaduras solares a otras enfermedades, como el melanoma, cáncer cutáneo, cataratas, etc., cuyos efectos están causados por la radiación ultravioleta. 
  Para prevenir la aparición de estos daños en el ámbito laboral será necesario adoptar medidas preventivas.
-	VIENTO.- Es importante valorar la velocidad del viento cuando, por ejemplo, se utilizan equipos de elevación de cargas, por el peligro de vuelco de estos aparatos y desprendimiento de las cargas, así como cuando los trabajadores realizan trabajos en altura, sobre andamios, plataformas, escaleras, etc... 
  Por encima de unos determinados límites de velocidad del viento, deberán suspenderse los trabajos.
-	LLUVIA, NIEVE Y GRANIZO.- Si se producen precipitaciones de lluvia, nieve o granizo, los trabajos pueden verse afectados haciéndose más complejos y, en muchos casos, más peligrosos. 
  Se reduce la visibilidad, se dificulta el tránsito de vehículos y trabajadores, etc. 
  Además, cuando ocurren de forma persistente pueden producir el deslizamiento o desprendimiento del terreno, lo que afecta especialmente a trabajos de movimiento de tierras (excavaciones, terraplenados, etc…)
-	NIEBLA.- Provoca una disminución de la percepción de las señales y del entorno en general, dificultando las condiciones de visibilidad necesarias para la conducción de vehículos o maquinaria, manejo mecánico de cargas, distinción de las zonas de acopio de materiales, etc…
-	TORMENTAS.- Cuando se realizan trabajos a la intemperie con tormentas eléctricas, existe riesgo de caída de rayos en la zona de trabajo, con la consiguiente posibilidad de que se produzcan daños, tanto para los trabajadores como para las instalaciones eléctricas.
-	HIELO.- Con bajas temperaturas pueden formarse placas que generan superficies deslizantes. 
  También existe el riesgo de desprendimientos de placas de hielo.

== Efectos de las condiciones climatológicas sobre la salud de los trabajadores
=== Calor

*REVISAR ESTO PORQUE ESTÁ MAL*

Las caídas a distinto nivel pueden ser debidas a:
-	Basculamiento del conjunto del equipo al estar situado sobre una superficie inclinada o en mal estado, falta de estabilizadores, etc.
-	Ausencia de barandillas de seguridad en parte o todo el perímetro de la plataforma.
-	Efectuar trabajos utilizando elementos auxiliares tipo escalera, banquetas, etc., para ganar altura.
-	Trabajar sobre la plataforma sin utilizar los equipos de protección individual debidamente anclados.
-	Rotura de la plataforma de trabajo por sobrecarga, deterioro o mal uso de la misma.
-	Utilizar la PEMP para acceder desde la misma a una instalación o estructura externa.
-	Trabajar con parte del cuerpo situado fuera de la plataforma de trabajo.
-	Subir o bajar utilizando la estructura de elevación.
-	Efecto catapulta al pasar por encima de un bordillo, etc.
Es importante tener en cuenta que es imprescindible considerar todas las particularidades de cada obra, de cada tarea (esfuerzo físico requerido, etc...) y 
de cada trabajador (edad, estado físico, etc...) y prestar especial atención a aquellos casos en los que se realizan actividades extenuantes, tareas que requieran 
la utilización de equipos de prendas de protección (especialmente si no son transpirables) y trabajadores nuevos y no aclimatados.

==== Efectos del calor sobre la salud

En algunos casos, cuando las condiciones ambientales son extremas, esas consecuencias pueden llegar a ser muy graves e incluso irreversibles.

Se trata de situaciones en las que se pueden identificar fácilmente las causas del estrés térmico, por lo que también son previsibles los daños que pueden derivarse. 
Es importante por ello, que los trabajadores sepan reconocer los síntomas iniciales, de manera que se pueda actuar y tratar desde el comienzo de las primeras señales, para evitar así otros posibles daños mayores que pueden poner en riesgo su vida. 
Además de estas situaciones extremas, es necesario también valorar otros posibles riesgos generados como consecuencia del incremento del nivel de estrés térmico, que, junto a otros factores, pueden aumentar la probabilidad de que se produzcan accidentes.

Cuando el calor se acumula en el cuerpo, los trabajadores experimentan una sensación molesta y se activan los mecanismos de termorregulación. 
Este exceso de calor produce además efectos como:
-	Apatía, somnolencia.
-	Reducción de la capacidad de percepción, atención y concentración, y cambios en los tiempos de reacción.
-	Aumento de la fatiga.
-	Disminución de la memoria.
-	Aumento de la irritación y la agresividad, cambios de humor, etc...

En estas circunstancias, se produce un mayor número de errores, y la predisposición a sufrir un accidente de trabajo es mucho más alta.

El exceso de calor corporal puede también agravar dolencias previas como enfermedades cardiovasculares, respiratorias, renales, cutáneas, diabetes, etc...

Cuando las condiciones de calor persisten y los trabajadores continúan acumulando calor, pueden producirse una serie de daños relacionados con el calor, que podrán ser más o menos graves según la cantidad de calor acumulado. 
Estos daños son:
-	DESHIDRATACIÓN Y PÉRDIDA DE ELECTROLITOS.- Como consecuencia de las altas temperaturas y la regulación térmica que el cuerpo lleva a cabo, a través de la sudoración se pierden líquidos y sales minerales de forma constante, mientras dura esa exposición, por lo que debe prestarse atención a los signos de deshidratación. 
  Cuando el trabajador nota sed, significa que el nivel de hidratación ya está bajo y se hace necesario reponer los líquidos perdidos, para evitar empeorar la situación. 
  Por ello es recomendable ingerir constantemente líquidos (agua y/o bebidas isotónicas), mejor en pequeños sorbos, antes incluso de que aparezca la sed. 
  Otros síntomas asociados a la deshidratación son el dolor de cabeza ligero, sensación leve de mareo, sequedad en la boca y falta de orina.
-	ERUPCIÓN CUTÁNEA.- Cuando se produce una sudoración excesiva y el sudor es retenido en la piel, en lugar de salir a través de los poros, como consecuencia de la obstrucción de los conductos de las glándulas sudoríparas, se produce esta alteración cutánea, que se presenta como un enrojecimiento de la piel, sobre todo de las zonas cubiertas con la ropa o con equipos de protección que dificultan la evaporación del sudor. 
  Además de ese enrojecimiento, las erupciones producen irritación, picor o quemazón. 
  En ocasiones pueden aparecer vesículas llenas de líquido. Para prevenir la erupción, es aconsejable mantener el cuerpo lo más fresco posible, utilizar ropa ligera y recurrir a duchas frecuentes o lavados regulares, con jabones suaves.
-	CALAMBRES POR CALOR.- Es una de las primeras manifestaciones que se producen en las personas que realizan una actividad física en condiciones ambientales de calor, generalmente durante los primeros días de actividad, cuando aún no se está acostumbrado. 
  Se deben a la pérdida de sales por una sudoración intensa y se caracteriza por contracciones musculares dolorosas y espasmos intensos en los músculos que se encuentran fatigados por un trabajo intenso. 
  Normalmente se presentan al final de la jornada, cuando ya los músculos se han enfriado. 
  La recuperación requiere reposar en un ambiente fresco y beber agua o soluciones con cloruro sódico y potásico, para reponer las sales perdidas. 
  Es importante tomar medidas cuando se perciben síntomas, ya que continuar trabajando en tales circunstancias podría llevar al agotamiento por calor, que se trata de un trastorno de mayor seriedad.
-	SÍNCOPE POR CALOR.- Se trata de una pérdida de conocimiento que ocurre de forma súbita, debido a una vasodilatación cutánea que produce una bajada de la tensión arterial, con disminución del caudal sanguíneo que llega al cerebro. 
  Puede ocurrir por estar de pie e inmóvil durante mucho tiempo, en un sitio caluroso, con un cambio rápido de postura (por ejemplo, ponerse de pie demasiado rápido). 
  Es más fácil que se presente en trabajadores no aclimatados, al principio de la exposición. 
  Los síntomas del síncope incluyen desvanecimiento, visión borrosa, mareo, debilidad, pulso débil, piel fría y húmeda. 
  La recuperación suele ser rápida y completa cuando se traslada al trabajador a un ambiente más fresco.
-	AGOTAMIENTO POR CALOR.- Se trata de un cuadro más importante, producido por la pérdida excesiva de líquidos y sales, como consecuencia del calor. 
  Los síntomas característicos que presentará el trabajador son:
  - Debilidad y fatiga.
  -	Dolor de cabeza.
  -	Sensación de mareo, visión borrosa.
  -	Náuseas y vómitos.
  -	Sudoración.

En estos casos, es característico que el trabajador esté pálido y sudoroso, pero su temperatura suele ser normal o ligeramente elevada. 
La presencia de sudor es un factor muy importante porque a menudo es la única forma de distinguir el agotamiento del golpe de calor, caracterizado precisamente por la ausencia de sudor. 
El tratamiento requiere mantener al paciente en reposo, tumbado y con los pies elevados, en un lugar fresco y rehidratarlo. 
Si está completamente alerta y sin náuseas, proporcionarle líquidos por vía oral. 
Si presenta calambres, se incrementará el aporte de sales. 
El agotamiento puede preceder a un golpe de calor, considerado de mayor gravedad, por lo que es fundamental actuar de inmediato cuando aparecen los primeros síntomas.

-	GOLPE DE CALOR.- El golpe de calor es uno de los casos más graves de hipertermia. 
  Consiste en un sobrecalentamiento del cuerpo, como consecuencia de la exposición a altas temperaturas, que se origina cuando la termorregulación ha sido superada porque todos los mecanismos de disipación del calor han fallado. 
  Cuando se produce un golpe de calor, la temperatura interna del cuerpo sobrepasa los 40,5 ºC y la sudoración se detiene, lo que hace que la temperatura suba aún más. 
  La falta de hidratación ocasiona que diversos órganos dejen de funcionar como lo hacen de forma habitual. 
  También las funciones mentales pueden verse afectadas y pueden producirse daños neuronales irreversibles, e incluso la muerte. 
  Se trata de una urgencia médica extrema, porque tanto su aparición como su evolución, son muy rápidas. 
  Si no se recibe la asistencia sanitaria necesaria, puede producirse la muerte en menos de 24 horas. 
  La presencia de piel muy caliente, seca, enrojecida y sin ninguna evidencia de sudor es una de las señales más importantes para distinguir el golpe de calor de otros daños causados por el calor. 
  Además, existen otros síntomas que evidencian que estamos ante un golpe de calor, entre los que se encuentran:
  -	Síntomas generales:
    -	Dolor de cabeza y mareos.
    -	Náuseas y vómitos.
    -	Crisis convulsiva.
    -	Aumento en la frecuencia cardiaca y respiratoria.
    -	Pulso irregular.
    -	Temperatura interna superior a 40,5 ºC.
    -	Síntomas cutáneos:
    -	Piel muy caliente, seca y enrojecida.
    -	Ausencia de sudor.
  -	Síntomas neurosensoriales:
    -	Agitación, confusión.
    -	Disminución o pérdida del nivel de consciencia, confusión y desmayo.
El tratamiento debe orientarse a reducir rápidamente la temperatura central, para lo que deben tomarse medidas para enfriar el cuerpo, rociándolo o mojándolo con agua fresca y ventilación, en un lugar sombrío. 
Estas medidas se deben mantener durante el traslado del enfermo a un hospital.

==== Planificar medidas con antelación

Es conveniente anticiparse a la llegada de las temperaturas extremas y planificar una serie de medidas antes de la temporada de calor, entre las que podrían incluirse:
-	Elaborar una lista de las provisiones necesarias: agua, recursos para proporcionar sombra, cremas de protección solar, etc. 
  También se deben determinar las cantidades necesarias en función del número de trabajadores y la duración de la obra.
-	Programar, cuando sea posible, la adaptación de los horarios de trabajo, turnos, etc..., y planificar los ciclos de trabajo/descanso que, en su caso, sean necesarios.
-	Proporcionar a los trabajadores la formación e información necesarias, en relación con la exposición al calor.

==== Proporcionar líquidos con regularidad

Para garantizar una reposición puntual de los líquidos y electrolitos perdidos con el calor, es necesario poner a disposición de los trabajadores agua potable y/o bebidas isotónicas en las inmediaciones del lugar de trabajo.

Los trabajadores necesitarán mayores cantidades cuando trabajen expuestos directamente al sol, durante las horas más calurosas del día y cuando realicen trabajos con elevada carga física. 
Además, se tendrá en cuenta que:
-	Tanto el agua como cualquier otra bebida, se deben situar en lugares fácilmente accesibles desde cada puesto de trabajo.
-	Se debe animar a los trabajadores a beber agua de forma periódica, aun cuando no sientan sed.
-	Es más conveniente tomar agua en pequeñas cantidades y con mayor frecuencia, que hacerlo en gran cantidad en pocas ocasiones.
-	Preferiblemente se suministrarán bebidas a temperaturas comprendidas en torno a los 15 ºC. 
  Las bebidas excesivamente frías pueden producir calambres estomacales.
-	No son adecuadas las bebidas con alcohol, cafeína, gaseosas o con alto contenido de sal o azúcar.

==== Organización y adaptación del trabajo

Para reducir el estrés térmico y prevenir los daños derivados de la exposición al calor, son de especial interés las medidas de tipo organizativo, como:
- Reducir la carga física del trabajo. 
  Se trata de adecuar la actividad física desarrollada a los parámetros ambientales de cada momento. 
  Se recomienda, siempre que sea posible:
  - Limitar ciertas tareas en el horario de mayor estrés térmico y programar las tareas más duras y pesadas durante los periodos menos calurosos de cada turno de trabajo.
    -	Modificar siempre que sea posible los procesos de trabajo para eliminar o reducir el esfuerzo físico excesivo, proporcionando ayudas mecánicas.
    -	Repartir las tareas de mayor carga física entre un mayor número de trabajadores.
    -	Rotar los puestos con riesgo para que los trabajadores puedan alternar la exposición al calor con otras tareas.
    -	Permitir a los trabajadores regular su propio ritmo de trabajo.

Para un determinado nivel de temperatura los riesgos pueden ser más o menos graves en función del tipo de trabajo realizado: ligero, moderado o pesado. 
Hay que tener en cuenta también el incremento del riesgo que produce la humedad relativa, así como las variaciones de temperatura que produce un día despejado o cubierto.
- Programar descansos que permitan la recuperación de la fatiga y de la posible sobrecarga térmica del trabajador. 
  Se trata de establecer unos ciclos de trabajo y descanso, determinando la duración de cada periodo y la frecuencia con que deben repetirse esos ciclos para que el organismo elimine el exceso de calor y disminuya la frecuencia cardíaca.

Para determinar estos ciclos se deben tomar en consideración aspectos como las tareas realizadas y el esfuerzo físico requerido, así como los equipos de protección individual que deban utilizarse. 
Los trabajadores recibirán información detallada y precisa de la implantación de esta medida y los supervisores y mandos intermedios deberán garantizar que se cumple lo planificado. 
En temporadas de olas de calor, será necesario aumentar la frecuencia y/o la duración de las pausas. 
Estos descansos deben realizarse en lugares con un ambiente más fresco y seco, por lo que se habilitarán zonas de sombra o locales con aire acondicionado para el descanso de los trabajadores.

==== Ropa de trabajo

Se debe utilizar ropa de trabajo adecuada: amplia, ligera, no voluminosa, de color claro para reflejar el calor radiante, flexible y de tejidos frescos, que permita la transpiración para liberar el exceso de calor.

En el mercado existe una amplia gama, tanto de ropa de trabajo como de EPIS que son más adecuados para su uso en condiciones de calor.

Aunque es obligatorio el uso de chalecos de alta visibilidad, en las épocas de calor intenso es más apropiado el uso de una camiseta que cumpla esta función para que el trabajador no tenga que llevar varias capas. 
Existen camisetas de alta visibilidad con una capa de algodón que resultan más frescas y confortables para los trabajadores.

Es recomendable elegir aquellos cascos que sean lo más ligeros posible y cuenten con una adecuada ventilación y calzado de seguridad adecuado para el calor.

Gafas de protección para uso laboral:

Los EPI deberán utilizarse cuando existan riesgos que no hayan podido evitarse o limitarse suficientemente por otros medios de protección colectiva o mediante procedimientos de organización de trabajo. 
Generalmente en la evaluación de riesgos se determinará la necesidad de utilizar equipos de protección para controlar los riesgos identificados. 
El empresario está obligado a determinar los puestos de trabajo en los que debe recurrirse a la protección individual, elegir los equipos adecuados, proporcionarlos gratuitamente a los trabajadores y velar por su correcta utilización y mantenimiento. 
Por su parte, los trabajadores deben utilizarlos y cuidarlos según las instrucciones recibidas e informar de cualquier anomalía detectada. 
Los protectores oculares que protegen únicamente contra la radiación solar son de Categoría I (son de esta categoría  los EPI de diseño sencillo, destinado a proteger contra riesgos leves que pueden ser detectados a tiempo por el usuario y no ofrezcan un riesgo alto para la salud). 
Si el protector incorpora otra característica protectora, por ejemplo, contra impactos de partículas, el protector será de Categoría II. 
Los filtros solares tienen como finalidad proteger el ojo humano contra una radiación solar excesiva y aumentar la comodidad y la percepción visuales. 
Los filtros solares de uso laboral deben presentar absorción de las radiaciones visible, UV e IR. 
La elección del filtro dependerá del nivel de iluminación ambiental y de la sensibilidad individual al deslumbramiento, con el fin de evitar la fatiga visual en exposiciones largas.

==== Formación e información a los trabajadores

La formación e información de los trabajadores es una medida imprescindible para poder garantizar la protección de su seguridad y salud cuando están expuestos a estrés térmico.

Por ello, los trabajadores recibirán formación e información sobre los riesgos relacionados con el calor, con un programa que incluya:
-	Factores de riesgo asociados a los daños derivados del calor.
-	Efectos para la salud de la exposición a altas temperaturas.
-	Medidas preventivas que deben adoptarse para prevenirlos: adaptación de la carga de trabajo, reposición de líquidos, etc…
-	Síntomas de sobrecarga térmica y técnicas de primeros auxilios que se deben adoptar cuando se aprecien esos signos en cualquier trabajador.

Es conveniente recordar esta información periódicamente a través de reuniones o charlas de seguridad, especialmente a medida que las condiciones de calor se tornen más extremas, incidiendo en los síntomas asociados a los daños relacionados con el calor.
En esas charlas se incluirán recordatorios a los trabajadores sobre la necesidad de tener en cuenta determinados factores de riesgo individuales que puede hacerlos especialmente vulnerables a los efectos del calor, como el consumo de ciertos medicamentos, alcohol, etc...

También es importante verificar las condiciones meteorológicas de forma frecuente, para planificar el trabajo diario y adoptar las medidas preventivas adecuadas, informando de ello a los trabajadores.

Por último, a través de los programas de formación o mediante campañas especiales, se pueden fomentar hábitos de vida saludables, laborales y personales, por la incidencia que pueden tener sobre el riesgo de estrés térmico (alimentación, hidratación, control del peso, hábitos de sueño, etc...)

Cuando hace calor, los trabajadores deberán:
-	Hidratarse con frecuencia, incluso cuando no sientan sed.
-	Evitar las comidas grasientas y copiosas, especialmente antes de trabajar.
-	Evitar el consumo de alcohol y drogas y reducir el consumo de cafeína.
-	Procurar ir al trabajo bien descansado.
-	Informar si sufren alguna enfermedad y si consumen medicamentos.
-	Utilizar prendas frescas y de colores claros, y protección para la cabeza.
-	Informar cuanto antes si aprecian algún síntoma de malestar relacionado con la exposición al calor.

==== Trabajo en equipo

Especialmente en temporadas de calor intenso, siempre que sea posible, se debe evitar el trabajo individual (en solitario), planificando el trabajo en equipo para facilitar la supervisión mutua de los trabajadores y poder actuar de forma inmediata cuando se reconozcan señales de sobrecarga térmica.

Además, es necesaria una comunicación efectiva entre los trabajadores (bien por observación, teléfono móvil u otros dispositivos) y comprobar periódicamente que el sistema previsto funciona eficazmente.


=== Frío

Igual que ocurre con el calor, la exposición al frío puede tener efectos adversos en la salud de los trabajadores. 
Por tanto, debe considerarse como un riesgo laboral que requiere una gestión adecuada del mismo, comenzando, como primer paso para su control, por la identificación de las situaciones que se van a considerar de riesgo.

Con carácter general, estas situaciones serán aquellas en las que la temperatura sea inferior a los 10 ó 15 ºC, tanto si se llevan a cabo en interiores como a la intemperie. 
Los trabajos en exteriores dependen de la climatología existente, lo que dificulta la evaluación de los riesgos derivados de esta exposición.

Una vez identificado y evaluado el riesgo, el empresario debe garantizar que se toman medidas dirigidas a prevenir los posibles daños que podrían derivarse.

Respecto a los trabajadores, es fundamental que estén informados y entrenados para ser capaces de identificar los síntomas derivados de una exposición excesiva, de manera que puedan actuar cuanto antes, evitando daños mayores.

==== Efectos del frío sobre la salud

Cuando las condiciones de frío persisten, pueden producirse una serie de daños relacionados con el mismo, que podrán ser más o menos graves según la cantidad de frío acumulado. 
Estos daños son:
-	Estrés por frío: Se define como la carga térmica negativa (pérdida de calor excesiva) a la que están expuestos los trabajadores y que resulta del efecto combinado de factores físicos y climáticos que afectan al intercambio de calor: condiciones ambientales, actividad física y ropa de trabajo. 
  El estrés por frío depende de diversos factores climáticos, como son la temperatura ambiental, velocidad del viento, humedad, etc., y también de la capacidad de termorregulación del cuerpo y la conducta del trabajador. 
  Este último aspecto tiene mucha importancia en la respuesta del ser humano al frío, en el sentido de que el uso de prendas adecuadas adquiere mucha más relevancia en condiciones de frío que de calor. 
  Cuando el flujo de calor cedido por el cuerpo al ambiente es superior al calor recibido o producido mediante el metabolismo basal y del trabajo, la temperatura del cuerpo desciende y aparece el riesgo de estrés por frío. 
  Para evitar esa hipotermia (descenso de la temperatura), el cuerpo activa unos mecanismos destinados a aumentar la generación interna de calor y a disminuir su pérdida. 
  Estos mecanismos son:
  -	Vasoconstricción: la disminución del flujo de sangre a la superficie del cuerpo dificulta la disipación del calor al ambiente y permite mantener los órganos internos, como el corazón, con mayor temperatura. 
    Este efecto, sin embargo, hace que los miembros más alejados del núcleo central del organismo, como las manos y los pies, vean disminuido el flujo de sangre y por tanto reducida su temperatura, lo que aumenta el riesgo de sufrir congelación.
  -	Aumento involuntario de la actividad metabólica: escalofríos. 
    A medida que el cuerpo se enfría, se activa esta segunda línea de defensa. 
    Consiste en una contracción involuntaria de los músculos que genera energía y por tanto, aumenta la producción de calor. 
    Una tiritona intensa, en una persona en reposo, puede aumentar su temperatura interna en 0,50 ºC. 
    Cuanta más grasa corporal posea una persona, más se retarda la aparición de los escalofríos.

  Teniendo en cuenta los efectos principales del frío sobre la salud, hipotermia y congelación, el estrés por frío se puede clasificar en dos grupos:
  -	Estrés por enfriamiento general del cuerpo.
  -	Estrés por enfriamiento local de ciertas partes del cuerpo (cara, extremidades, etc.).

==== Efectos del frío sobre la salud

Cuando el cuerpo se expone a bajas temperaturas, activa unos mecanismos de defensa para contrarrestar la pérdida de calor corporal y mantener su temperatura constante. 
Como se ha expuesto en epígrafes anteriores, los principales mecanismos son la vasoconstricción periférica que tiene como objeto preservar el calor interior del cuerpo, y los tiritones, acto involuntario y automático que puede llegar a aumentar la producción de calor hasta un 500%.

Cuando estos mecanismos no son suficientes para mantener el calor corporal, pueden producirse una serie de efectos más o menos graves, en función del grado de exposición del trabajador, que pueden ir desde simples molestias, insensibilidad, disfunciones neuromusculares y diferentes tipos de lesiones por frío. 
Según la duración de la exposición, se pueden producir efectos agudos, que ocurren en un tiempo muy breve (minutos u horas), y efectos de larga duración, que se prolongan durante días o incluso años.

Entre los efectos agudos, el más evidente y directo es el enfriamiento inmediato de la piel y las vías respiratorias superiores, cuya magnitud variará en función del tipo y grado de enfriamiento.

Los ambientes fríos también causan distracción, puesto que se necesita mayor esfuerzo mental para evitar el enfriamiento, adoptar medidas de protección, etc…

Efectos sobre la salud:
-	Efectos respiratorios: La inhalación de aire muy frío enfría las mucosas del tracto respiratorio superior y, con el tiempo, puede causar irritación, reacciones micro- inflamatorias y bronco-espasmo. 
  Este último, especialmente pronunciado en personas asmáticas y con vías respiratorias hipersensibles.
-	Efectos cardiovasculares: El frío puede tener efectos cardiorrespiratorios significativos, a través del incremento de la presión sanguínea, de manera puntual o crónica. 
  Este incremento se produce como consecuencia de la vasoconstricción periférica y además por el enfriamiento facial. 
  El frío puede agravar los síntomas asociados con diferentes tipos de enfermedades cardiovasculares, como el síndrome de Raynaud. 
  En particular, las personas con angina de pecho a menudo sienten molestias y dolor con la exposición al frío.
-	Enfermedades musculo-esqueléticas: Los trastornos músculo esqueléticos son aquellos que afectan a los nervios, músculos y tendones, cuyas dolencias más habituales son dolor, hinchazón, rigidez, debilidad muscular, etc. 
  Muchos estudios sugieren que algunos de estos trastornos, como ciertos dolores de espalda, cuello, hombros, etc., están asociados con el trabajo a la intemperie en entornos fríos.
-	Enfermedades de la piel: La respuesta anormal de la piel se produce cuando los trabajadores se exponen al frío durante periodos prolongados. Si se padecen enfermedades crónicas de la piel puede aumentar la sensibilidad al frío y ocasionar dolor. 
  Los problemas de la piel seca pueden empeorar con el frío. 
  La urticaria por frío implica hipersensibilidad al mismo, que se manifiesta con hinchazón de la piel, ronchas y lesiones urticantes. 
  También pueden producirse sabañones, que afectan a porciones desprotegidas de la piel.
-	Lesiones por frío: Cuando se trabaja expuesto al frío, existe el riesgo de sufrir daños locales (congelación) o daños generales (hipotermia).
  -	Lesiones por frío sin congelación: Este tipo de lesiones se produce cuando las extremidades se exponen a bajas temperaturas, pero no llega a congelarse la piel. 
    Las bajas temperaturas, junto con la humedad y la inmovilidad de las extremidades son los principales factores de riesgo. 
    El principal efecto consiste en una disfunción vascular y celular que puede llegar a ser irreversible.
  -	Lesiones por frío con congelación: Puede producirse una congelación local de la capa superficial de la piel, que ocasiona una zona blanquecina en la piel, o una congelación que afecta a los tejidos más profundos de la piel. 
    En este caso se forman cristales de hielo y la piel se vuelve dura al tacto, con sensación de insensibilidad en la zona afectada. 
    La gravedad del daño producido dependerá del grado de enfriamiento, el tiempo de exposición, la superficie afectada y el proceso de recalentamiento. 
    Las personas con problemas de circulación tienen mayor riesgo de sufrir congelación. 
    La congelación se localiza preferentemente en la periferia del cuerpo, siendo las zonas más vulnerables la cara, las orejas y los dedos de las manos y los pies.
-	Hipotermia: Se produce hipotermia cuando la temperatura interna del organismo desciende por debajo de los 35 ºC. 
  Inicialmente se producen escalofríos pero, a medida que desciende la temperatura corporal, estos cesan y los movimientos se vuelven lentos y torpes, por lo que se reduce el rendimiento y la capacidad de trabajo físico. 
  También se altera la capacidad mental, lo que hace aumentar el tiempo de reacción y sufrir confusión mental y alteraciones en el juicio. 
  También la frecuencia cardíaca y respiratoria se vuelve más lenta y débil. 
  Se trata de síntomas que se desarrollan de forma gradual y, con frecuencia, el propio afectado no percibe lo que está sucediendo, por lo que la asistencia externa puede ser la única alternativa para interrumpir la exposición. 
  Cuanto más desciende la temperatura mayor es el riesgo de muerte. 
  En los casos extremos en los que la temperatura interna desciende por debajo de los -28 ºC existe un riesgo importante de fibrilación cardíaca. 
  A menos que la temperatura haya descendido demasiado, es posible la recuperación. 
  El recalentamiento y recuperación de las víctimas de hipotermia profunda debe tratarse en un hospital con personal especializado.
-	Otras lesiones relacionadas con el frío: El pie de trinchera.

Aunque cada vez es menos frecuente, pueden darse casos de pie de trinchera, o pie de inmersión. 
El pie de trinchera ocurre cuando el trabajador ha permanecido durante mucho tiempo con los pies mojados y fríos, aunque no hayan llegado a congelarse. 
La humedad provoca la pérdida de calor y el ablandamiento de los tejidos, y esto puede desacelerar el flujo sanguíneo y dañar los tejidos musculares y los nervios. 
Se trata de una afección muy dolorosa, que presenta una serie de síntomas característicos como sensación de hormigueo, entumecimiento, hinchazón, manchas en la piel, picor y, en casos extremos, gangrena. 
Para prevenir esta afección, se deben mantener los pies secos y calientes, para lo que será necesario utilizar calcetines y calzado adecuados, con suficiente aislamiento, y cambiarlos cuando se hayan mojado.

==== Formación e información a los trabajadores

Los trabajadores deben ser informados e informados sobre los factores de riesgo asociados al frío, los efectos que produce la exposición y las medidas de prevención y protección necesarias para evitar daños a la salud.

==== Ropa de trabajo

Es importante disponer de una información adecuada sobre la ropa de trabajo que puede utilizarse frente al frío, tanto para prevenir situaciones peligrosas como para asegurar unas condiciones de trabajo agradables y más llevaderas.

La selección de la ropa de trabajo exige tener en cuenta factores como la acción del viento que, combinado con una temperatura baja, aumenta significativamente la capacidad de enfriamiento del ambiente, así como las precipitaciones de lluvia o nieve.

También deben considerarse el nivel de actividad física, por la cantidad de sudoración que puede humedecer la ropa, aumentando la sensación de frío, así como las condiciones individuales, la habituación y las preferencias subjetivas de cada persona. 
Es importante protegerse con ropa de abrigo adecuada, preferiblemente con varias capas de prendas aislantes del frío, viento y humedad, al tiempo que permite la transpiración. 
También es importante que cumpla con los requisitos ergonómicos de trabajo (movilidad, destreza, campo de visión, etc...) por lo que se elegirán prendas ligeras y flexibles, para no dificultar los movimientos requeridos por la tarea.

En la evaluación de riesgos se deberá determinar el tipo de ropa requerida, en función del riesgo y el uso previsto. 
Las principales prestaciones que consideran son:
-	La resistencia térmica. 
  Oposición que los materiales ofrecen al paso de un flujo de calor. 
  Depende de la composición y características del material.
-	El aislamiento térmico. 
  No sólo está en función de la resistencia que el material ofrece al paso de un flujo de calor, sino también del ajuste de la prenda al cuerpo, de las partes que cubre o de los cierres y costuras, entre otros factores. 
  Depende del aire que queda atrapado dentro de las fibras y los tejidos y del aire atrapado entre la ropa y la piel. 
  Este aire actúa como una capa aislante muy efectiva.
-	La permeabilidad al aire. 
  La penetración de aire a través del tejido de la prenda reduce notablemente el aislamiento térmico. 
  Se mide como la cantidad de aire que pasa por minuto por una superficie determinada del tejido.
-	La penetración de agua. 
  Cuando se trabaja en exteriores lluviosos o existe, en general, la posibilidad de entrar en contacto con agua, es recomendable utilizar prendas cuyas costuras y capas más superficiales sean resistentes a la penetración de agua.
-	La resistencia al vapor de agua. 
  Debe ser evaluada solamente cuando la ropa de protección sea resistente a la penetración de agua, para así garantizar la evacuación del posible vapor de agua generado (sudoración). 
  La acumulación del sudor en el interior de la ropa tiene efectos negativos puesto que disminuye el aislamiento de la ropa y puede generar riesgo de sobrecalentamiento si el cuerpo no puede eliminar el sudor.

La ropa de protección frente al frío ofrecerá:
-	Aislamiento térmico, para evitar la pérdida de calor corporal.
-	Protección frente a la humedad, para proteger frente a la lluvia.
-	Permeabilidad al aire y vapor de agua, para permitir la transpiración y disipación de parte del calor que se genera al trabajar.

En cuanto al marcado de la ropa de protección contra el frio, tendrá el marcado general (CE) y un marcado específico, basado en pictogramas de riesgos, junto al 
que se indicará la norma de referencia que cumplen y los niveles de prestación que ofrecen para cada ensayo.
-	Deben protegerse las zonas más expuestas y sensibles al frío, como la cabeza y el cuello, los pies y las manos.
-	La ropa deberá cambiarse cuando se encuentre húmeda para no reducir su capacidad aislante.

==== Organización del trabajo

Para prevenir los daños derivados de la exposición al frío son de especial interés las medidas de tipo organizativo, como:
- Planificar los trabajos a la intemperie teniendo en cuenta la previsión meteorológica, considerando factores como la temperatura, humedad, viento, precipitaciones, etc...
  -	Planificar los periodos de trabajo y descanso en función de las condiciones climáticas existentes en cada turno. 
    Son preferibles pausas largas y menos frecuentes, que cortas y frecuentes.
-	Cuando sea posible, se alternarán diferentes tareas para reducir el tiempo de exposición.
-	Evitar un ritmo de trabajo tan elevado que haga sudar fuertemente, para evitar que se humedezca la ropa.
-	Favorecer el trabajo en equipo y disponer de sistemas de comunicación y control de los trabajadores expuestos. 
  Cuando los trabajadores realicen tareas en solitario y aislados, se instalarán dispositivos “hombre muerto” (para enviar señales de alarma en caso de inmovilización prolongada) cuando sea necesario.
-	Evitar el mantenimiento de posturas estáticas prolongadas.
-	Tener en cuenta la interacción con el frío de herramientas y equipos vibratorios que puedan agravar los daños para el trabajador.
-	Adaptar el trabajo a cada persona, considerando factores individuales: características personales del trabajador, edad, estado de salud, etc. 
  Deben adoptarse medidas especiales para controlar la exposición de trabajadores que padezcan enfermedades o consuman alguna medicación que afecte a la regulación normal de la temperatura corporal.
-	Realizar pausas para descansar, ingerir bebidas calientes y recuperar la temperatura en locales acondicionados.

== Primeros auxilios
=== Primeros auxilios por exposición al calor

Cuando un trabajador presenta señales de sobrecarga térmica es muy importante actuar de forma inmediata, en las primeras etapas, para evitar que su estado evolucione y se produzcan daños más graves.

Para ello, es fundamental que el propio afectado y el resto de trabajadores presentes en la obra, sepan identificar los síntomas precursores de los daños del calor y puedan intervenir de una forma eficaz. 
En estas situaciones, hay que tener en cuenta que, entre los primeros síntomas, está la disminución del estado de alerta por lo que existe la posibilidad de que el trabajador que lo sufre no sea capaz de reconocer el riesgo.

A continuación se aportan algunas pautas de actuación en función del tipo de dolencia producida:
-	Deshidratación:
  -	Mantener al trabajador en reposo, tumbado con la cabeza algo más baja que el cuerpo.
  - Si no presenta náuseas, proporcionar líquidos para hidratarlo. 
    Beber pequeñas cantidades de agua, zumos de frutas o bebidas energéticas para recuperar electrolitos.
-	Erupción cutánea:
  -	Limpiar la piel y secarla.
  -	Cambiar la ropa húmeda, en su caso, y sustituirla por ropa seca.
  -	No aplicar pomadas ni cremas en las áreas con sarpullido, puesto que el calor y la humedad pueden empeorar el estado de la piel.
-	Calambres:
  -	Trasladar al trabajador a un lugar fresco y ventilado para descansar.
  -	Si está completamente alerta y sin náuseas, proporcionarle bebidas, como agua con sales o bebidas isotónicas. 
    No bebidas alcohólicas o con cafeína.
  -	Hacer ejercicios suaves de estiramientos y frotar el músculo afectado.
  -	No realizar actividad física hasta 2 horas después de que hayan desparecido los calambres. 
    Seguir trabajando en esas circunstancias podría evolucionar hacia el agotamiento por calor, con mayor gravedad. 
    Si no desaparecen en una hora, avisar al médico.
-	Síncope:
  -	Mantener a la persona afectada tumbada, con las piernas levantadas y en lugar fresco. 
    Cuando recupere la consciencia, proporcionar líquidos para hidratarla.
  -	Aunque no es grave, en muchas ocasiones su inicio no se diferencia de un golpe de calor, por lo que es necesario valorar todos los casos.
-	Agotamiento:
  -	Trasladar al trabajador a un lugar fresco.
  -	Mantenerlo tumbado, o recostado, con las piernas levantadas por encima del nivel del corazón.
  -	Aflojar o retirar la ropa apretada.
  -	Refrescarlo rociándolo con agua, con una esponja húmeda, etc... y abanicarlo.
  -	Si está completamente alerta y sin náuseas, proporcionarle bebidas como agua con sales o bebidas isotónicas. 
    No bebidas alcohólicas o con cafeína.
  -	Generalmente se aprecia mejoría en un tiempo breve. 
    No obstante, es conveniente que el trabajador sea trasladado a un centro médico para que sea revisado por un especialista.
-	Golpe de calor:
  -	El trabajador afectado por un golpe de calor debe ser atendido de forma inmediata por profesionales, en un centro sanitario, puesto que se trata de una urgencia médica con una alta tasa de mortalidad. 
    Mientras tanto, es importante que los trabajadores presentes en la obra sepan identificar los síntomas principales y cómo deben actuar para evitar que la situación se agrave y la víctima sufra daños mayores.
  -	Lo primero que debe hacerse es trasladar al trabajador afectado a un lugar alejado del sol, en sombra y lo más fresco y ventilado posible, puesto que es fundamental intentar bajar su temperatura corporal.
  -	Colocarlo tumbado boca arriba (salvo que esté vomitando o tenga convulsiones), con las piernas ligeramente elevadas para favorecer la circulación.
  -	Retirar o aligerar la ropa.
  -	Empaparlo en agua fría para disminuir la temperatura corporal: aplicar compresas de agua fría (pero no demasiado, para evitar un cambio excesivamente brusco) en zonas como la cabeza, el pecho, las axilas y las ingles, o rociarlo con agua, mojarlo con una esponja, etc. 
    También es eficaz envolverlo en una tela, sábana o toalla mojada.
  -	Proporcionarle aire, abanicándolo.
  -	Si el trabajador está consciente, y sin náuseas, se le ofrecerán líquidos, como agua o bebidas isotónicas para ayudar a reponer sales, en pequeños sorbos. 
    En caso de que no esté consciente, no se le debe proporcionar ninguna bebida.
  -	Si se producen convulsiones colocar bajo su cabeza algún objeto blando para evitar que se lesione, y no intentar controlarlas, puesto que podrían producirse lesiones musculares o articulares importantes.
  -	Observar constantemente su evolución, controlando su temperatura corporal. 
    Siempre debe haber alguien alerta vigilando al trabajador, hasta que sea atendido por profesionales. 
    Mientras tanto, continuar enfriándolo.

=== Primeros auxiliios por exposición al frío

Cuando un trabajador se encuentra expuesto al frío y presenta hipotermia o congelación se tendrán en cuenta las siguientes recomendaciones:
- Congelación: Las zonas más vulnerables son las manos, pies, nariz y orejas.

  Cuando se padecen síntomas de congelación, las actuaciones a realizar son:
  -	Trasladar a la víctima a un lugar cubierto, protegido y cálido, con cuidado para evitar empeorar los daños, y evitando que camine si tiene lesiones en los pies.
  -	Aflojar las ropas ajustadas y retirar la ropa húmeda. 
    Secarlo y abrigarlo con mantas, toallas o ropa seca.
  -	Si está consciente, proporcionar bebidas calientes y suaves (sin cafeína).
  -	Colocar vendajes o gasas secas, limpias y desinfectadas sobre las zonas congeladas, entre los dedos de las manos y los pies, y tapando las heridas.
  -	Hasta que la víctima pueda recibir asistencia médica, se intentará la recuperación de las partes congeladas con agua tibia, sumergiendo manos y pies en un recipiente o aplicando suavemente paños empapados sobre las zonas afectadas.
  A continuación, se exponen algunos consejos sobre lo que NO debe hacerse en caso de congelación:
  -	No friccionar ni masajear las áreas afectadas. 
    Las zonas congeladas son muy delicadas y podrían agravarse las lesiones producidas por el frío.
  -	No descongelar miembros o zonas si hay posibilidad de nueva congelación, puesto que esto provocaría daños aún mayores en los tejidos.
  -	No descongelar utilizando agua caliente. 
    Los miembros congelados son muy frágiles y presentan poca sensibilidad al frío y al calor, por lo que con agua muy caliente podrían producirse graves quemaduras.
  -	No aplicar calor directo, como radiadores, aire caliente, estufas, etc., para evitar quemar los tejidos. 
    El calor debe ser ambiental y no dirigido hacia las heridas o quemaduras producidas por la congelación.
  -	No se deben ofrecer bebidas alcohólicas.
  -	En caso de que se hayan producido ampollas por congelación, no deberán reventarse.
-	Hipotermia: Para saber si una persona sufre hipotermia, y determinar en qué grado, es fundamental saber reconocer los síntomas para tratar la situación de forma correcta.
  -	Lo primero que se debe hacer es reconocer la temperatura corporal del trabajador.
    -	Si su temperatura está entre 32 y 35ºC, se trata de una hipotermia leve.
    -	Si tiene entre 28 y 32 ºC, se trata de hipotermia moderada.
    -	Si tiene una temperatura inferior a 28 ºC, se trata de una hipotermia aguda.
  -	Se deben comprobar también los signos característicos de la hipotermia para identificar el grado que sufre el trabajador afectado:
    -	Hipotermia leve: piel pálida y fría, temblor constante y sensación de cansancio.
    -	Hipotermia moderada: piel pálida y fría, confusión o somnolencia, sensación de cansancio, respiración lenta y poco profunda. 
      El temblor generalmente cesa, y presenta dificultades para hablar y alteraciones en el juicio. 
      Estos síntomas indican un agravamiento de la situación.
    -	Hipotermia aguda: flacidez muscular, dilatación de pupilas, dificultad respiratoria, inconsciencia, latidos muy débiles y fibrilación ventricular.
Cuando aparece alguno de los síntomas descritos es necesario recibir atención médica, incluso aunque se trate de una hipotermia leve, para evitar que empeore, si no se trata adecuadamente, y derive en un cuadro más grave. 
  Mientras tanto, se tendrán en cuenta las siguientes recomendaciones:
    -	Se debe proteger al trabajador de cualquier fuente de frío, colocándolo siempre que sea posible en un lugar cubierto, y con temperatura apropiada, o protegido del viento y arropado. 
      Si está en el suelo, es conveniente poner mantas, toallas o cualquier prenda de ropa para protegerlo y aislarlo del contacto directo con el suelo frío.
    -	Es importante proteger especialmente la cabeza y el cuello, cubriéndolos para retener el calor corporal.
    -	Si su ropa está mojada se debe quitar, y sustituir esas prendas por otras secas o bien cubrirlo con mantas, toallas, etc.
    -	Se debe calentar gradualmente la parte central de cuerpo, mediante la aplicación de compresas calientes en el cuello, el pecho y las ingles, o bien utilizando botellas de agua caliente envueltas.
    -	No se debe usar calor directo, como agua caliente, o fuentes de calor intenso para intentar calentar los brazos, las manos o las piernas.
    -	No frotar el cuerpo con las manos.
    -	Si está consciente y puede tragar, proporcionar al trabajador bebidas calientes (sin cafeína).
    -	No ofrecerle en ningún caso bebidas alcohólicas, ni tabaco, ya que podrían interferir en la circulación y ralentizar la recuperación.
    -	Cuando se atenúen los síntomas y aumente la temperatura, mantener al trabajador seco y caliente hasta que pueda ser atendido por un profesional.
    -	Permanecer en todo momento junto al trabajador para vigilar sus signos vitales.
-	Pie de trinchera:
  -	El tratamiento de esta afección consiste en quitarse el calzado y los calcetines húmedos, lavar los pies, si están sucios, y secarlos muy bien. 
    Deben mantenerse elevados por encima del nivel del corazón mientras se recalientan.
  -	Para calentarlos no se deben frotar ni masajear. 
    Tampoco se colocarán cerca de fuentes de calor intenso, como estufas. 
    En caso de que se hayan producido ampollas, no se deben reventar para evitar infecciones. 
    No utilizar cremas ni lociones.
  -	Evitar caminar para no dañar los tejidos y solicitar ayuda médica.

=== Primeros auxilios por caída de un rayo

Cuando un trabajador ha sido alcanzado por un rayo, como consecuencia de una tormenta eléctrica, la medida prioritaria será asegurar su respiración, por lo que, siempre que haya personas capacitadas para ello, se deberán aplicar las maniobras de reanimación cardiopulmonar.

Es prioritario comenzar esta reanimación cuanto antes, ya que en los casos en que la parada cardiorrespiratoria es consecuencia de un rayo, la probabilidad de salir de esta es mayor que cuando se produce por otras causas.

El contacto con el trabajador afectado no representa un peligro, por lo que puede ser atendido con seguridad de forma inmediata:
-	Cuando el trabajador esté inconsciente, se comprobará el pulso y la respiración.
-	Si tiene pulso, pero no respira, se realizará la respiración boca a boca.
-	Si no tiene pulso, comenzar las maniobras de reanimación cardiopulmonar.
-	Si la víctima ha sufrido una caída y se sospecha que puede haber lesión en la columna, se debe evitar cualquier movimiento.
-	Atender también las posibles heridas o quemaduras, que normalmente se localizarán en dos áreas, correspondientes a la entrada y la salida de la corriente eléctrica.
-	Mantener caliente al trabajador hasta la llegada de los servicios de emergencia.

En cualquier caso, el trabajador afectado debe ser trasladado a un centro donde reciba asistencia médica, para que un profesional valore el impacto del rayo sobre su organismo, incluso aunque sólo se muestre aturdido y sin heridas de importancia.

== Identificación y evaluación de los riesgos laborales. Medidas preventivas

A pesar de que la reglamentación vigente en materia de Seguridad y Salud contempla la obligatoriedad de identificar los riesgos separándolos en evitables y no eliminables, dadas las características de las obras que se van a acometer y en aras de un mayor rigor en la aplicación de la seguridad al proceso productivo, los vamos a considerar todos del tipo “no eliminables”, de manera que, además de las protecciones colectivas, también será fundamental que los trabajadores hagan uso permanente de las oportunas protecciones individuales (EPI’s) que procedan.

La evaluación de los riesgos laborales es el proceso dirigido a estimar la magnitud de aquellos riesgos que no hayan podido evitarse, obteniendo la información necesaria para que el empresario esté en condiciones de tomar una decisión apropiada sobre la necesidad de adoptar medidas preventivas y, en tal caso, sobre el tipo de medidas que deben adoptarse.

En primer lugar, se identifican los factores de riesgo y se asocian a los riesgos derivados de su presencia. 
En la identificación de los riesgos se ha utilizado la lista de “Riesgos de accidente y enfermedad profesional”, que se muestra a continuación:
-	Caída de personas a distinto nivel.
-	Caída de personas al mismo nivel.
-	Caídas de objetos
-	Pisadas sobre objetos.
-	Choques contra objetos inmóviles
-	Choques contra objetos móviles.
-	Golpes y/o cortes por objetos o herramientas.
-	Proyección de fragmentos o partículas.
-	Atrapamientos.
-	Sobreesfuerzos.
-	Exposición a temperaturas ambientales extremas.
-	Contactos térmicos.
-	Contactos eléctricos.
-	Arco eléctrico
-	Exposición a sustancias nocivas.
-	Explosiones.
-	Incendios.
-	Accidentes de tráfico.
-	Ruidos y/o vibraciones.
-	Otros.

//*INSERTAR TABLA DE PROBABILIDAD / SEVERIDAD*

=== Medidas preventivas

Protección contra el calor:
-	Beber abundante agua u otro líquido no alcohólico y tomar abundante sal en las comidas.
-	Mantener la piel lo más limpia posible para favorecer la transpiración.
-	Realizar breves descansos cada dos horas, consumiendo algún alimento y bebiendo agua.
-	Evitar, en la medida de lo posible, las faenas en las horas centrales del día.
-	Usar camisa de manga corta mientras no se realicen trabajos en tensión ni trabajos de corte y en general lo determine la evaluación de riesgos.
-	Usar gafas de protección con filtro UV.
-	Usar crema de protección solar.

Protección contra el frío:
-	Utilizar ropa y calzado adecuados, proteger las manos con guantes y usar pasamontañas si es necesario. 
  En caso de humedad elevada o lluvia, se utilizarán prendas y calzado impermeables.
-	Incrementar el consumo de líquidos por pérdida de los mismos. 
  Es aconsejable tomar bebidas templadas, dulces y evitar el consumo de alcohol.
-	La dieta ha de ser equilibrada y suficiente para contrarrestar el gasto derivado del esfuerzo físico.
-	Evitar, en la medida de lo posible, posturas estáticas y especialmente forzadas.

Protección en caso de fuerte viento y tormentas:
-	Evitar situarse debajo o cerca de árboles, postes y sobre todo de tendidos eléctricos para evitar el riesgo de electrocución en el caso de rayos o aplastamiento en caso de fuerte viento.
-	Evitar los lugares elevados.
-	Si se encuentra en un descampado, y si es posible, tiéndase en el suelo y cúbrase con un plástico hasta que escampe.

Caída de personas al mismo o distinto nivel y pisadas de objetos:
-	Utilizar los pasos y vías existentes
-	Mantener orden y limpieza en la zona de trabajo
-	Utilizar el calzado adecuado

Accidentes causados por seres vivos:
-	Vestir la ropa de trabajo correctamente
-	Utilizar repelentes de insectos en la época de mosquitos.
-	En presencia de animales (perros, ganado..) no dar nunca la espalda y no realizar movimientos bruscos en su presencia.

//*FIRMA, FECHA Y DEMÁS*


= Anexo XI Especificaciones técnicas de los EPI


Listado de principales EPIS usados en obra y sus especificaciones técnicas mínimas.

Nota: Este listado no es exhaustivo, pudiendo usarse en obra otros EPIS, según necesidad. 
En caso de ser así deben cumplir con las especificaciones mínimas de esta lista, y en caso de no aprecer, se revisará de forma previa a su uso que cumplen con la normativa que les sea de aplicación, y será aprobado su uso por la dirección de obra y el coordinador de seguridad.

+ *Casco protector para trabajos en altura con Certificado Riesgos Intermedios. EPI Cat II.SEGÚN EN 397:2012+A1:2012.*
  -	Imprescindible el uso de barboquejo para trabajos en altura a partir de 2m y de acuerdo a la normativa EN365.
  -	Sistema de liberación automático del barboquejo entre 15dN y 25dN conforme a la EN397.
  -	Arnés de cabeza con sistema de suspensión interno.
  -	Almohadillas lavables.
  -	Ventilación interna.
  -	Confortable, acolchado en la zona de la cabeza y barbilla.
  -	Puntos de fijación para visores.
  -	Punto de fijación para protectores auditivos.
  -	Con goma elástica para sujeción del frontal.
  -	Material: ABS.
  -	Incluye barboquejo para sujeción.
  -	Sin visera.

+	*PROFI 3 ARNES ANTICAIDA EN358/361*
  -	Arnés para cubrir los riesgos básicos de trabajos en alturas de más de 2 metros
  -	Certificado Riesgos Irreversibles EPI Cat III SEGÚN EN 358 y EN 361
  -	Características
  -	Ojal de captura posterior de acuerdo con la Norma EN361
  -	2 puntos de anclaje esternal de acuerdo con la Norma EN361
  -	2 puntos de anclaje dorsal de acuerdo con la Norma EN358
  -	Ajuste óptimo de la hebilla del cinturón y del cinturón de sujeción
  -	Probado y aprobado hasta 125kg
  -	Talla estándar ajustable
  -	Forma ergonómica
  -	10 años de vida útil Es obligatorio su revisión anual después del primer uso
  -	Etiqueta informativa protegida con gancho y bucle.

+ *MOSQUETON ALU.AUT. EN362-B/12275-B-H*
  -	Certificado Riesgos Irreversibles
  -	EPI Cat III
  -	SEGÚN EN 362-B/12275-B-H
  -	Tres acciones para abrir
  -	Es obligatoria la revisión anual de los dispositivos contra caídas después del primer uso

+ *RETRACTIL AUTOMATICO ANTICAIDA HSG10K 10M HSG10 ANTICAIDA RETRÁCTIL ACERO 10M*
  -	Certificados Riesgos Irreversibles EPI Cat. III SEGÚN EN 360
  -	Para uso horizontal y vertical
  -	Carcasa realizada en plástico.
  -	Cable retráctil realizado en acero, Ø 4,8mm.
  -	El usuario tendrá que estar siempre por debajo del punto de anclaje.
  -	El punto de anclaje debe tener una resistencia mínima de11kN (1,1ton).
  -	El aparato se bloquea al alcanzar una velocidad de caída de1,5m/s.
  -	Proteger el dispositivo de productos químicos y temperaturas extremas.
  -	Es obligatorio hacer controles anuales para la seguridad del dispositivo, después del primer uso.

+ *GAFAS PROTECCIÓN*
  -	Certificado riesgos intermedios EPI Cat.II según EN166:2001.
  -	Protección100% UV (por encima de 380 nm).
  -	Capa exterior e interior resistente a rayadas.
  -	Inserciones de goma suave antideslizantes en el puente de la nariz.
  -	Peso: 24g.

+ *GUANTES DE PIEL LIGEROS*
  -	Guantes de piel flor ligeros. Certificado Riesgos Intermedios EPI Cat. II SEGÚN EN ISO 21420:2020, EN 388:2016+A1:2018 (2122X).
  -	Realizado en piel de cabra de color gris
  -	Grosor de la piel: 0,5 a 0,9mm
  -	Parte superior realizada en algodón poliéster
  -	Ajustable en la muñeca por medio de una banda de goma situada en la parte superior
  -	Contenido en Cromo inferior a 2mg/kg
  -	Certificado de Riesgos Intermedios EPI Cat II EN 388:2016

+	*GUANTES AISLANTES CLASE 0*
  -	Certificado Riesgos Complejos EPI Cat. III SEGÚN EN 60903:2014
  -	Guantes homologados para trabajos con voltaje de hasta 1000 V/AC
  -	Grosor de la capa según el estándar máximo de 1 + 0,6 mm.
  -	Se suministra en una bolsa de PE resistente a los rayos UV.
  -	EN 61482-1 + 2
  -	Nivel 1: 4 KA / 0,5 s / 300 mm
  -	Nivel 2: 7 KA / 0,5 s / 300 mm
  -	Guantes dieléctricos para riesgos eléctricos.
  -	Para trabajos a media y baja tensión.
  -	Protege del paso de corriente eléctrica a través del cuerpo humano (choque eléctrico), producido por el contacto físico con un elemento conductor, a diferente tensión. 
    (No protege de corrientes eléctricas inducidas en el cuerpo humano por campos electromagnéticos fuertes o cualquier otro riesgo derivado de la energía eléctrica).
  -	CLASE: Número (00, 0, 1, 2, 3 y 4) que indica el valor de tensión máxima de trabajo.
  -	Fabricados en látex natural.
  -	Los guantes se deben almacenar en su embalaje.
  -	Se tendrá cuidado de que los guantes no se aplasten, ni doblen, ni se coloquen en las proximidades de radiadores u otras fuentes de calor artificial o se expongan directamente a los rayos del sol, a la luz artificial o a fuentes de ozono.

+ *ZAPATO DE SEGURIDAD. PUNTERA DE FIBRA DE CARBONO.*
  -	Parte superior textil con refuerzos de TPU.
  -	Puntera muy ligera en FIBRA DE CARBONO.
  -	Plantilla antiperforación muy ligera en PET 100% reciclado, fresco y flexible.
  -	Suela en EVA SRC antideslizante y antiestática con inserciones de goma.
  -	ESD Clase 1, Horma ancha Mondopoint 11.
  -	Sin partes metálicas.

+ *CUERDA DE SUJECIÓN*
  -	Certificado Riesgos Irreversibles
  -	EPI Cat III
  -	SEGÚN EN 358, EN 353-2
  -	Cuerda de 2m de longitud, Ø12mm de grosor y con los extremos cosidos y protegidos con casquillo termo retráctil
  -	Mosquetón de acero con seguro roscado Ø10 mm
  -	Deslizante de aluminio accionado por resorte con orificio de Ø16mm
  -	Color: blanco, naranja y rojo
  -	Peso: 0,517kg
  -	Es obligatoria la revisión anual de los dispositivos contra caídas después del primer uso

//*FIRMA, FECHA Y DEMÁS*


= Anexo XII Normativa de aplicación al proyecto


#table(
  columns: (auto, auto, auto, auto),
  table.header([Disposición],[Título],[Órgano emisor],[Publicación]),
  [Ley 31 de 8-11-1995],[Prevención de riesgos laborales], [Jefatura del Estado], [BOE. núm. 269 de 10-11-1995],
  
  [Ley 54/2003], [Reforma del marco normativo de la prevención de riesgos laborales], [Jefatura el Estado], [BOE. núm. 298 de 13-12-2003],
  
  table.cell(rowspan: 2,[R.D. 171/2004, de 30 de enero]), [Desarrolla el art. 24 de la ley 31/1995], table.cell(rowspan: 2,[Ministerio de Trabajo y Asuntos Sociales]),[BOE. núm. 27 de 27-01-2004],
  [Corrección de errores], [BOE. núm. 60 de 10-03-2004],
  
  [R. Decreto 39/1997], [Reglamento de los servicios de prevención], table.cell(rowspan: 2, [Ministerio de Trabajo y Asuntos Sociales]), [BOE. núm. 27 de 31-01-1997],
  [R. Decreto 780/1998], [Modificación del R.D. 39/1997], [BOE. núm. 104 de 1-05-1998],
  [R. Decreto 298/2009], [Modifica el R.D. 39/1997], [Ministerio de la Presidencia], [BOE. núm. 57 de 07-03-2009],
  table.cell(rowspan: 3, [Orden TIN/2504/2010]),[Desarrolla el R.D. 39/1997], table.cell(rowspan: 3, [Ministerio de Trabajo Inmigración]), [BOE. núm. 235 de 28-09-2010],
  [Corrección de errores de la Orden TIN/2504/2010], [BOE. núm. 279 de 18-1-2010],
  [Corrección de errores de la Orden TIN/2504/2010], [BOE. núm. 256 de 22-11-2011],
  [R. Decreto 899/2015], [Modifica el R. D. 39/1997], table.cell(rowspan: 2, [Ministerio de Empleo y Seguridad Sociales]), [BOE. núm. 243 de 10-10-2015],
  [Orden ESS/2259/2015], [Modifica la ORden TIN/2504/2010], [BOE. núm. 260 de 30-10-2015],
  [R. Decreto 598-2015], [Modificaciones del RD 39/1997; del RD 485/1997 y del RD 374/2001], [Ministerio de la Presidencia], [BOE. núm. 159 de 04-07-2015],
  [R. Decreto 337/2010], [Modificaciones del RD 39/1997 y del RD 1627/1997], [Ministerio de Trabajo], [BOE. núm. 071 de 23-03-2010],
  [R. Decreto 604/2006], [Modificaciones del R.D. 39/1997 y del R.D. 1627/1997], [Minsiterio de Trabajo], [BOE . núm. 127 de 29-05-2006],

  [R. Decreto 1627/1997, de 29 de enero], [Disposiciones mínimas de Seguridad y Salud en las obras. Obligación del estudio de Seguridad y Salud o del estudio básico de Seguridad y Salud], [Minsiterio de la Presidencia], [BOE. núm. 265 de 25-10-1997],
  
  [R. Decreto 67/2010, de 29 de enero], [De adaptación de la elgislación de prevención de riesgos laborales a la administración general del estado], [Minsiterio de la Presicencia], [BOE. núm. 36 de 10-02-2006],

  [Ley 54/2003], [Reforma del marco normativo de la prevención de riesgos laborales], [Jefatura del Estado], [BOE. núm. 298 de 13-12-2003],

  [Ley 32/2006], [Ley de subcontratación en el sector de la construcción], [Jefatura del Estado], [BOE. núm. 250 de 19-10-2006],
  [R. Decreto 1109/2007], [Desarrolla la ley 32/2006], [Ministerio de Trabao y Asuntos Sociales], [BOE. núm 204 de 25-08-2007 BOE. núm. 219 de 12-09-2007],
  [Orden de 22-11-2007], [Procedimiento habilitación del libro de subcontratación, regulado en R. D. 1109/2007], [Consejería de Empleo], [BOJA. núm. 249 de 20-12-2007],
  [R. Decreto 337/2010], [Modifica el R.D. 1109/2007], [Minsterio de Trabajo e Inmigración], [BOE. núm. 23-03-2010],

  [R. Decreto 1029/2022, de 20 de diciembre], [Reglamento sobre protección de la salud contra los riesgos derivados de la exposición a las radiaciones ionizantes], table.cell(rowspan: 2, [Ministerio de la Presidencia]), [BOE. núm. 305 de 21-12-2022],
  [R. Decreto 1217/2024], [Modifica el R.D. 1029/2022], [BOE. núm. 292 de 04-12-2024],

  [R. Decreto 542/2020, de 26 de mayo], [Se modifican y derogan diferentes disposicoines en materia de calidad y seguridad industrial. Modificaciones. Entre otras destacamos: Modificación del R.D. 2200/1995, Reglamento de la Infraestructura para la Calidad y la Seguridad Industrial. Derogación de disposiciones. Entre otras: R.D. 140/1992, qye regula condiciones para la comercialización y libre circulación intracomunitaria de equipos de protección individual, isn perjuicio de los plazos transitorios incluidos en art. 47 del Reglamento (UE) 2016/425], [Ministerio de la Presidencia], [BOE. núm. 072 de 20-06-2020],

  [R. Decreto 299/2016, de 22 de julio], [Protección de la salud y la seguridad de lso trabajadores contra los riesgos relacionados ocn la exposición a campos electromagnéticos], [Ministerio de la Presidencia], [BOE. núm. 182 de 29-07-2016],
  
  [R. Decreto 144/2016, de 8 de abril], [Requisitos esenciales de salud y seguridad exigibles a los aparatos y sistemas de protección para su uso en atmósferas potencialmente explosivas y se modifica el R.D. 455/2012, que establece medidas destinadas a reducir la cantidad de vapores de gasolina emitidos a la atmósfera durante el repostaje de los vehículos de motor en las estaciones de servicio], [Minsiterio de Industria, Energía], [BOE. núm. 90 de 14-04-2016],
  
  [R. Decreto 840/2015, de 21 de septiembre], [Por el que se aprueban medidas de control de los riesgos inherenes a los accidentes graves en los que intervengan sustancias peligrosas], [Ministerio de la Presidencia], [BOE. núm. 251 de 20-10-2015],
  
  [R. Decreto 486/2010, de 23 de abril], [Protección de la salud y seguridad de los trabajadores contra riesgos relacionados con la exposición a radiaciones ópticas artificiales], [Ministerio de Trabajo], [BOE. núm. 29 de 24-04-2010], 

  [R. Decreto 396/2006, de 31 de marzo], [Protección de la salud y seguridad de los trabajadores contra riesgos relacionados con la exposición a radiaciones ópticas artificiales], [Ministerio de Trabajo], [BOE. núm. 29 de 24-04-2010],
  [Orden de 12-11-2007], [De aplicación en Andalucía del R.D. 396/2006], table.cell(rowspan: 2, [Consejería de Empleo]), [BOJA. núm. 234 de 28-11-2007],
  [Orden de 14-09-2011], [Por la que se modifica la Orden de 12-11-2007], [BOJA. núm. 199 de 10-10-2011],

  [R. Decreto 1311/2005, de 4 de noviembre], [Protección de la salud y la seguridad de trabajadores frente a los riesgos derivados o que puedan derivarse de la exposición a vibraciones mecánicas], [Minsiterio de Trabajo y Asuntos], [BOE. núm. 265 de 5-11-2005],
  [R. Decreto 330/2009], [Modificaciones del R.D. 1331/2005], [Ministerio de la Presidencia], [BOE. núm. 73 de 26-03-2009],

  [R. Decreto 681/2003, de 12 de junio], [Protección de la salud y la seguridad de los trabajadores expuestos a riesgos derivados de atmósferas explosivas en el lugar de trabajo], [Ministerio de la Presidencia], [BOE. núm. 145 de 18-06-2003],

  [R. Decreto 374/2001, de 6 de abril], [Protección de la salud de los trabajadores contra los riesgos relacionados con los agentes químicos durante el trabajo disposiciones mínimas para la protección de la salud y seguridad de los trabajadores frente al riesgo eléctrico], [Minsiterio de la Presidencia], [BOE. núm. 104 de 01-05-2001],
  [R. Decreto 614/2001, de 8 de junio], [Corrección de erratas: BOE. núm. 129 de 30-05-2001 y BOE. núm. 149 de 22-06-2001], [Ministerio de la Presidencia], [BOE. núm. 148 de 21-06-2001],

  [R. Decreto 485/1997, de 14 de abril], [Disposiciones mínimas en materia de señalización de seguridad y salud en el trabajo], [Ministerio de Trabajo y Asuntos Sociales], [BOE. núm. 97 de 23-04-1997],

  [R. Decreto 486/1997, de 14 de abril], [Disposiciones mínimas de seguridad y salud en los luagres de trabajo], [Ministerio de Trabajo y Asuntos Sociales], [BOE. núm. 97 de 23-04-1997],

  [R. Decreto 487/1997, de 14 de abril], [Disposiciones mínimas de seguridad y salud relativas a la manipulación manual de cargas que entrañe riesgos para los trabajadores], [Minsiterio de Trabajo y Asuntos Sociales], [BOE. núm. 97 de 23-04-1997],

  [R. Decreto 488/1997, de 14 de abril], [Disposiciones mínimas de seguridad y salud relativas al trabajo con equipos que incluyan pantallas de visualización], [Minsiterio de Trabajo y Asuntos Sociales], [BOE. núm. 97 de 23-04-1997],

  [R. Decreto 664/1997, de 12 de mayo], [Protección de los trabajadores contra los riesgos relacioinados con la exposición de agentes biológicos durante el trabajo], [Ministerio de la Presidencia], [BOE. núm. 124 de 24-05-1997],
  [Orden de 25-03-1998], [Adapta al progreso técnico el R.D. 664/1997], [Ministerio de Trabajo y Asuntos Sociales], [BOE. núm. 76 de 30-03-1998],
  [Orden TES/1180/2020], [Adapta al progreso técnico el R.D. 664/1997], [Ministerio de Trabajo y Economía Social], [BOE. núm. 322 de 10-12-2020],
  [Orden TES/1287/2021], [Adapta al progreso técnico el R.D. 664/1997], [Ministerio de Trabajo y Economía Social], [BOE. núm. 282 de 25-11-2021],

  [R. Decreto 665/1997, de 12 de mayo], [Protección de los trabajadores contra los riesgos relacionados con la exposición a agentes cancerígenos durante el trabajo], table.cell(rowspan: 6, [Minsiterio de la Presidencia]), [BOE. núm. 124 de 24-05-1997],
  [R. Decreto 349/2003], [Modifica el R.D. 665/1997, y amplía su ámbito a los agentes mutágenos], [BOE. núm. 82 de 05-04-2003],
  [R. Decreto 1154/2020], [Adapta al progreso técnico el R.D. 665/1997], [BOE. núm. 334 de 23-12-2020],
  [R. Decreto 427/2021], [Adapta al progreso técnico el R.D. 665/1997], [BOE. núm. 143 de 16-06-2021],
  [R. Decreto 395/2022], [Adapta al progreso técnico el R.D. 665/1997], [BOE. núm. 124 de 25-05-2022],
  [R. Decreto 612/2024], [Adapta al progreso técnico el R.D. 665/1997], [BOE. núm. 160 de 03-07-2024],

  table.cell(rowspan: 2, [R. Decreto 779/1997 de 30 de mayo]), [Disposiciones mínimas de Seguridad y Salud relativas a la utilización por los trabajadores de equipos de protección individual], table.cell(rowspan: 3, [Ministerio de la Presidencia]), [BOE. núm. 140 de 12-06-1997],
  [Corrección de errores], [BOE. núm. 171 de 18-07-1997],
  [R. Decreto 1076/2021], [Modificaciones del R. D. 773/1997], [BOE. núm. 293 de 08-12-2021],

  [R. Decreto 1215/1997, de 30 de mayo], [Disposiciones mínimas de Seguridad y Salud para la utilización por los trabajadores de los equipos de trabajo], table.cell(rowspan: 2, [Ministerio de la Presidencia]), [BOE. núm. 188 de 07-08-1997],
  [R. Decreto 2177/2004], [Modificaciones del R.D. 1215/1997], [BOE. núm. 148 de 13-11-2004],

  table.cell(rowspan:2, [R. Decreto 195/1995, de 3 de febrero]), [Modificación del R.D. 1407/1992, que regula las condiciones para comercialización y libre circulación intracomunitaria de los equipos de protección individual], table.cell(rowspan: 2, [Ministerio de la Presidencia]), [BOE. núm. 57 de 08-09-1995],
  [Rectificaciones], [BOE. núm. 69 de 22-03-1995],

  table.cell(rowspan: 3, [R. Decreto 286/2006, de 10 de marzo]), [Protección de la salud y la seguridad de los trabajadores contra los riesgos relacionados con la exposición al ruido], table.cell(rowspan: 3, [Minsiterio de la Presidencia]), [BOE. núm. 60 de 11-03-2006],
  [Corrección de errores del R.D. 286/2006, de 10 de marzo], [BOE. núm. 63 de 14-03-2006],
  [Corrección de errores del R.D. 286/2006, de 10 de marzo], [BOE. núm. 71 de 24-03-2006],

  [Orden de 20-05-52], [Reglamento de seguridad e higiene en el trabajo en la industria de la construcción], table.cell(rowspan: 7, [Ministerio de Trabajo]), [BOE. núm. 167 de 15-06-1952], 
  [Orden de 10-11-53], [Modificación], [BOE. núm. 356 de 22-12-1953],
  [Orden de 20-01-66], [Cumplimenta con trabajos en cajones de aire comprimido], [BOE. núm. 33 de 02-02-1956, BOE. núm.66 de 06-03-1956],
  [Orden de 23-09-66], [Complemento], [BOE. núm 235 de 01-10-1996],
  table.cell(rowspan: 3, [Orden de 9-03-71]), table.cell(rowspan:2, [Ordenanza general de seguridad e higiene en el trabajo. Disposiciones derogatorias y transitorias en: Ley 31/95, RD 614/2001, RD 485/97, RD 486/97, RD 664/97, RD 665/97, RD 773/97 y RD 1215/97]), [BOE. núm. 64 de 16-03-1971],
  [BOE. núm. 65 de 17-03-1971],
  [Corrección de errores], [BOE. núm. 82 de 06-04-1971],

  [R. Decreto 173/2005], [Prevención de riesgos laborales en la Guardia Civil], [Ministerio de la Presidencia], [BOE. núm. 49 de 26-02-2005],

  [R. Decreto 1932/1998, de 11 de septiembre], [Adaptación de los cap III y V de la Ley 31/1995, de prevención de riesgos laborales, al ámbito de los centros y establecimientos militares], table.cell(rowspan: 2, [Ministerio de la Presidencia]), [BOE. núm. 224 de 18-09-1998],
  [R. Decreto 60/2018], [Por el que se modifica el Real Decreto 1932/1998], [BOE. núm. 37 de 10-02-2018],

  [R. Decreto 339/2021, de 18 de mayo], [Regula el equipo de seguridad y de prevención de la contaminación de las embarcaciones de recreo], [Ministerio de Transportes, Movilidad y Agenda Urbana], [BOE. núm. 219 de 19-05-2021],

  [Orden de 25-10-2014], [Obligación de puesta a disposición de la autoridad laboral de las memorias anuales de los servicios de prevención ajenos y de los servicios de prevención mancomunados], [Consejería de Economía, Innovación, Ciencia y Empleo], [BOE. núm. 193 de 02-10-2014],
)




*NORMATIVAS ESPECÍFICAS*

ESTATALES:
-	CTE (R.D. 314/2006) y las exigencias básicas desarrolladas en sus Documentos Básicos "DB SE (Seguridad Estructural): DB-SE-AE: Acciones en la Edificación, DB-SE-C: Cimientos, DB-SE- A: Acero, DB-SE-F: Fábrica, DB-SE M: Madera". "DB SI (Seguridad en caso de incendio)". "DB SUA (Seguridad de utilización y accesibilidad)". "DB HS (Salubridad)". "DB HR (Protección frente al ruido)". "DB HE (Ahorro de energía)" y modificaciones en el R.D. 1371/2007, R.D. 1675/2008, Orden VIV/984/2009, R.D. 173/2010, Orden FOM/1635/2013, Orden FOM/588/2017, R.D. 732/2019 y R.D. 450/2022.



-	Ley 24/2013, del Sector Eléctrico y disposiciones adicionales no derogadas de la antigua Ley 54/1997, del sector eléctrico.
-	R.D. 337/2014. Reglamento sobre condiciones técnicas y garantías de seguridad en instalaciones eléctricas de alta tensión y sus ITC-RAT 01 a 23.
-	R.D. 223/2008. Reglamento sobre condiciones técnicas y garantías de seguridad en líneas eléctricas de alta tensión y sus ITC-LAT 01 a 09.

-	R.D. 842/2002. Reglamento electrotécnico para baja tensión y sus instrucciones técnicas complementarias (ITC) BT 01 a BT 51.



-	Resolución 18-09-2025. Actualiza el listado de normas de la ITC RAT-02.
-	Resolución 09-01-2020. Actualiza el listado de normas de la ITC BT-02.





-	R.D. 36/2023. Establece un sistema de Certificados de Ahorro Energético.
-	R.D-ley 18/2022. Medidas de refuerzo de la protección de los consumidores de energía y de contribución a la reducción del consumo de gas natural.
-	R.D-ley 29/2021. Adopta medidas urgentes en el ámbito energético para el fomento de la movilidad eléctrica, el autoconsumo y el despliegue de energías renovables.
-	R.D. 1183/2020, de acceso y conexión a las redes de transporte y distribución de energía eléctrica.
-	R.D. 647/2020. Regula aspectos necesarios para la implementación de los códigos de red de conexión de determinadas instalaciones eléctricas.
-	R.D. 244/2019. Regula las condiciones administrativas, técnicas y económicas del autoconsumo de energía eléctrica.
-	Resolución de 11-12-2019. Se aprueban determinados procedimientos de operación para su adaptación al R.D. 244/2019.
-	R.D-ley 15/2018. Medidas urgentes para la transición energética y la protección de los consumidores.
-	R.D. 187/2016. Regula las exigencias de seguridad del material eléctrico destinado a ser utilizado en determinados límites de tensión.
-	R.D. 186/2016. Regula la compatibilidad electromagnética de los equipos eléctricos y electrónicos.
-	R.D. 1074/2015. Modifica distintas disposiciones en el sector eléctrico.
-	R.D. 1073/2015. Modifica distintas disposiciones en los reales decretos de retribución de redes eléctricas.
-	R.D. 900/2015. Se regulan las condiciones administrativas, técnicas y económicas de las modalidades de suministro de energía eléctrica con autoconsumo y de producción con autoconsumo.
-	Orden IET/2660/2015. Aprueba las instalaciones tipo y los valores unitarios de referencia de inversión, de operación y mantenimiento por elemento de inmovilizado.
-	R.D-ley 9/2013, por el que se adoptan medidas urgentes para garantizar la estabilidad financiera del sistema eléctrico.
-	R.D. 413/2014. Regula la actividad de producción de energía eléctrica a partir de fuentes de energía renovables, cogeneración y residuos.
- R.D. 917/2025. Modifica el RD 413/2014.
-	R.D.1048/2013. Establece la metodología para el cálculo de la retribución de la actividad de distribución de energía eléctrica.
-	R.D. 1047/2013. Establece la metodología para el cálculo de la retribución de la actividad de transporte de energía eléctrica.
-	R.D. 1699/2011. Regula la conexión a red de instalaciones de producción de energía eléctrica de pequeña potencia.
-	R.D. 222/2008. Establece el régimen retributivo de la actividad de distribución de energía eléctrica (Derogada por RD 1048/2013, excepto la disposición adicional 4ª).
-	R.D. 1110/2007. Reglamento unificado de puntos de medida del sistema eléctrico y Orden TEC/1281/2019, que aprueba las ITCs al Reglamento unificado de puntos de medida del sistema eléctrico.
-	R.D. 1454/2005. Modifica determinadas disposiciones relativas al sector eléctrico.
-	R.D. 1955/2000. Regulación de las actividades de transporte, distribución, comercialización, suministro y procedimientos de autorización de instalaciones de energía eléctrica y Decreto 9/2011 que modifica algunas de sus normas.
-	R.D. 164/2025. Reglamento de seguridad contra incendios en los establecimientos industriales.
-	R.D. 513/2017. Reglamento de instalaciones de protección contra incendios.
-	R.D. 842/2013. Clasificación de los productos de construcción y de los elementos constructivos en función de sus propiedades de reacción y de resistencia frente al fuego.
-	R.D. 809/2021. Reglamento de equipos a presión y sus I.T.Cs.
-	R.D. 709/2015. Establece los requisitos esenciales de seguridad para la comercialización de los equipos a presión.
-	R.D. 108/2016. Establece los requisitos esenciales de seguridad para la comercialización de los recipientes a presión simples.
- R.D. 1027/2007, RITE y sus ITEs., y R. Decretos: 1826/2009, 249/2010, 238/2013, 56/2016 y R. Decreto 178/2021, que lo modifican entre otros.
-	R.D. 487/2022. Establece los requisitos sanitarios para la prevención y el control de la legionelosis y R.D. 614/2024, por el que se modifica.
-	R.D. 390/2021. Procedimiento básico para la certificación de la eficiencia energética de los edificios.
-	R.D. 659/2025. Modificaciones del RD 390/2021.
-	R.D. 56/2016, por el que se transpone la Directiva 2012/27/UE, relativa a la eficiencia energética, en lo referente a auditorías energéticas, acreditación de proveedores de servicios y auditores energéticos y promoción de la eficiencia del suministro de energía.
-	R.D. 919/2006. Reglamento técnico de distribución y utilización de combustibles gaseosos y sus ITCs ICG 01 a 11.
-	R.D. 552/2019. Reglamento de seguridad para instalaciones frigoríficas y sus ITCs. Corrección erratas B.O.E. 25-10-2019.
-	Resolución de 15-03-2021, que amplía la relación de refrigerantes autorizados por  el Reglamento de seguridad para instalaciones frigoríficas y Resolución de 15-06-2021 que la modifica.
-	R.D. 115/2017. Regula la comercialización y manipulación de gases fluorados y equipos basados en los mismos, así como la certificación de los profesionales que los utilizan y por el que se establecen los requisitos técnicos para las instalaciones que desarrollen actividades que emitan gases fluorados.
-	R.D. 1644/2008. Normas para la comercialización y puesta en servicio de las máquinas y modificaciones en R.D. 494/2012.
-	R.D. 355/2024. Aprueba la ITC AEM 1 «Ascensores», que regula la puesta en servicio, modificación, mantenimiento e inspección de los ascensores, así como el incremento de la seguridad del parque de ascensores existente.
-	R.D. 203/2016. Establece los requisitos esenciales de seguridad para la comercialización de ascensores y componentes de seguridad para ascensores.
-	R.D. 836/2003. Aprueba una nueva ITC "MIE-AEM-2" del Reglamento de aparatos de elevación y manutención, referente a grúas torre para obras u otras aplicaciones.
-	R.D. 837/2003. Aprueba el nuevo texto modificado y refundido de la ITC "MIE-AEM-4" del Reglamento de aparatos de elevación y manutención, referente a grúas móviles autopropulsadas.
-	R. D. 958/2020. Comunicaciones comerciales de las actividades de juego.
-	R.D. 2816/1982. Reglamento general de policía de espectáculos públicos y actividades recreativas.
-	R.D. 1457/1986. Regula la actividad industrial y la prestación de servicios en los talleres de reparación de vehículos y R.D. 455/2010, que lo modifica.
-	Ley 11/2022. General de Telecomunicaciones y disposiciones adicionales no derogadas de la antigua Ley 9/2014.
-	R.D. 391/2019. Plan técnico nacional de la televisión digital terrestre y se regulan determinados aspectos para la liberación del segundo dividendo digital.
-	R.D. 346/2011. Reglamento regulador de las infraestructuras comunes de telecomunicaciones para el acceso a los servicios de telecomunicación en el interior de las edificaciones y Orden ITC/1644/2011 que lo desarrolla.
-	Orden ITC/1077/2006. Procedimiento a seguir en las instalaciones colectivas de recepción de televisión en el proceso de su adecuación para la recepción de la televisión digital terrestre y se modifican determinados aspectos administrativos y técnicos de las infraestructuras comunes de telecomunicaciones en el interior de los edificios.
-	Ley 10/2005. Medidas urgentes para el impulso de la televisión digital terrestre, de liberalización de la televisión por cable y de fomento del pluralismo.
-	R. Decreto Ley 1/1998. Infraestructuras comunes en los edificios para el acceso a los servicios de telecomunicación.
-	R.D. 188/2016. Reglamento por el que se establecen los requisitos para la comercialización, puesta en servicio y uso de equipos radioeléctricos, y se regula el procedimiento para la evaluación de la conformidad, la vigilancia del mercado y el régimen sancionador de los equipos de telecomunicación.
-	R.D. 656/2017. Reglamento de almacenamiento de productos químicos y sus ITCs MIE APQs 0 a 10.
-	R.D. 888/2006. Reglamento sobre almacenamiento de fertilizantes a base de nitrato amónico con un contenido en nitrógeno igual o inferior al 28% en masa.
- RD 137/1993. Reglamento de Armas,  RD 726/2020, R.D. 653/2023, Orden  INT/291/2025  y  Orden INT/330/2025 por los que se modifica.
-	Ley 25/2022, sobre precursores de explosivos
-	R.D. 130/2017. Reglamento de Explosivos.
-	Orden TED/1098/2025. Modifica la ITC 9, del Reglamento de Explosivos.
-	R.D 989/2015. Reglamento de artículos pirotécnicos y cartuchería, Orden PJC/342/2025 que lo modifica.
-	R.D. 1217/2024. Reglamento sobre instalaciones nucleares y radiactivas, y otras actividades relacionadas con la exposición a las radiaciones ionizantes.
-	Ley 34/1998, del sector de hidrocarburos y Ley 12/2007 que la modifica.
-	R.D. 376/2022. Regula los criterios de sostenibilidad y de reducción de las emisiones de gases de efecto invernadero de los biocarburantes, biolíquidos y combustibles de biomasa, así como el sistema de garantías de origen de los gases renovables.
-	R.D. 2085/1994. Reglamento de instalaciones petrolíferas e instrucciones técnicas complementarias MI-IP01 “refinerías” y MI-IP02 “parques de almacenamiento de líquidos petrolíferos”.
-	R.D. 1562/1998. Modificación de la ITC-MI-IP2.
-	R.D. 1427/1997. ITC MI-IP03 “Instalaciones petrolíferas para uso propio”.
-	R.D. 1523/1999. Modificaciones del Reglamento de instalaciones petrolíferas y de la ITC MI-IP03 que queda redactada como “Instalaciones de almacenamiento para su consumo en la propia instalación”.
-	R.D. 706/2017. ITC MI-IP 04 "Instalaciones para suministro a vehículos" y se regulan determinados aspectos de la reglamentación de instalaciones petrolíferas.
-	Resolución de 25-03-2019. Se actualiza el listado de normas de la ITC MI-IP 04 "instalaciones de suministro a vehículos", aprobada por el RD 706/2017.





-	R.D. 770/2025. Modifica diversas normas reglamentarias en materia de seguridad industrial.
-	R.D. 145/2023. Modifica diversas normas reglamentarias en materia de seguridad industrial para su adaptación al principio de reconocimiento mutuo.
-	R.D. 298/2021. Modifica diversas normas reglamentarias en materia de seguridad industrial.
-	R.D. 542/2020. Modifica y deroga diferentes disposiciones en materia de calidad y seguridad industrial.
-	R.D. 560/2010. Modifica diversas normas reglamentarias en materia de seguridad industrial.



-	R.D. 105/2008. Regula la producción y gestión de los residuos de construcción y demolición.





-	Ley 31/1995, de Prevención de riesgos laborales, y Reglamentos que desarrollan dicha Ley, y modificaciones, entre otros: R.D. 39/1997 Reglamento de los servicios de prevención, Orden Ministerial del 27-06-97 que desarrolla el R.D. 39/1997, R.D. 780/1998, que modifica el RD 39/1997, R.D. 1627/1997 sobre Disposiciones mínimas de seguridad y salud en las obras, R.D. 598/2015, R.D. 337/2010, R.D. 604/2006, R.D. 665/1997, R.D. 664/1997, R.D. 486/1997, Disposiciones mínimas de seguridad y salud en los lugares de trabajo, R.D. 487/1997, Disposiciones mínimas de seguridad y salud relativas a la manipulación manual de cargas que entrañe riesgos, en particular dorsolumbares, R.D. 485/1997, Disposiciones mínimas en materia de señalización de seguridad y salud en el trabajo, R.D. 1215/1997, Disposiciones mínimas de seguridad y salud para la utilización por los trabajadores de los equipos de trabajo, R.D. 773/1997, Disposiciones mínimas de seguridad y salud relativas a la utilización por los trabajadores de equipos de protección individual, R.D. 614/2001, Disposiciones mínimas para la protección de la salud y seguridad de los trabajadores frente al riesgo eléctrico, R.D. 286/2006, protección de la salud y la seguridad de los trabajadores contra los riesgos relacionados con la exposición al ruido, R.D. 299/2016, protección de la salud y la seguridad de los trabajadores contra los riesgos relacionados con la exposición a campos electromagnéticos, R.D. 1029/2022, protección de la salud contra los riesgos derivados de la exposición a las radiaciones ionizantes.

-	Ley 32/2006, de subcontratación en el sector de la construcción, R.D. 1109/2007 que desarrolla la ley 32/2006, Orden de 22-11-2007 que desarrolla el procedimiento de habilitación del libro de subcontratación y R.D. 337/2010 que modifica el R.D.1109/2007, y modificaciones.
-	Condiciones impuestas por los Organismos Públicos afectados.






- R. D. 286/2006


-	Ordenanza General de Seguridad e Higiene en el Trabajo del 09-03-71.


-	Ley 23/2015, Ordenadora del Sistema de Inspección de Trabajo y Seguridad Social.


-	Artículos aplicables del R.D 1993/1995, que establece el Reglamento General sobre colaboración en la gestión de las Mutuas de Accidentes de Trabajo y Enfermedades Profesionales de la Seguridad Social.
-	Artículos aplicables del R.D. 250/97, que modifica el Reglamento de Colaboración de las Mutuas de Accidentes de Trabajo y Enfermedades Profesionales de la Seguridad Social, aprobado por RD 1993/95, y el Reglamento General sobre inscripción de empresas y afiliación, altas, bajas y variaciones de datos de trabajadores en la Seguridad Social, aprobado por RD 84/96.
-	Artículos aplicables del R R.D. 216/99, que recoge las Disposiciones mínimas de seguridad y salud en el trabajo en el ámbito de las empresas de trabajo temporal.
-	Orden TAS/3623/2006, por la que se regulan las actividades preventivas en el ámbito de la Seguridad Social y la financiación de la Fundación para la Prevención de Riesgos Laborales.
-	Orden TIN/442/2009, por la que se modifica la Orden TAS/3623/2006, por la que se regulan las actividades preventivas en el ámbito de la Seguridad Social y la financiación de la Fundación para la Prevención de Riesgos Laborales.

*Comunidad Autónoma de Andalucía*

-	Decreto 50/2025.
  Reglamento para la preservación de la calidad acústica en Andalucía.
-	Decreto 37/2025. Reglamento de protección frente a la contaminación lumínica en Andalucía.
-	Ley 3/2023, de Economía Circular de Andalucía.
-	Decreto-ley 3/2024. Medidas de simplificación y racionalización administrativa para la mejora de las relaciones de los ciudadanos con la Administración de la Junta de Andalucía y el impulso de la actividad económica en Andalucía.
-	Decreto 550/2022. Reglamento General de la Ley 7/2021, de impulso para la sostenibilidad del territorio de Andalucía.
-	Ley 7/2021, de impulso para la sostenibilidad del territorio de Andalucía. Modificaciones en el Decreto-ley 11/2022.
-	Ley 7/2007. Gestión Integrada de la Calidad Ambiental.
-	Decreto 5/2012. Regulación de la Autorización Ambiental Integrada.
-	Decreto 356/2010. Regula la Autorización Ambiental Unificada y sus modificaciones surgidas en el Decreto 5/2012.
-	Decreto 297/1995. Reglamento de Calificación Ambiental.
-	Decreto 18/2015. Reglamento que regula el régimen aplicable a los suelos contaminados.
- Decreto 169/2014. Procedimiento de la Evaluación del Impacto en la Salud de la Comunidad Autónoma de Andalucía.
-	Decreto-ley 26/2021. Adopta medidas de simplificación administrativa y mejora de la calidad regulatoria para la reactivación económica en Andalucía.
-	Decreto 234/2021. Aprueba el Plan Andaluz de Acción por el Clima.
-	Ley 8/2018. Medidas frente al cambio climático y para la transición hacia un nuevo modelo energético en Andalucía.
-	Decreto-ley 2/2020. Mejora y simplificación de la regulación para el fomento de la actividad productiva de Andalucía.
-	Decreto-ley 2/2018. Simplificación de normas en materia de energía y fomento de las energías renovables en Andalucía.
-	Decreto 1/2016. Medidas para la aplicación de la declaración responsable para determinadas actividades económicas reguladas en la Ley 3/2014.
-	Ley 3/2015. Medidas en Materia de Gestión Integrada de Calidad Ambiental, de Aguas, Tributaria y de Sanidad Animal.
-	Ley 3/2014. Medidas normativas para reducir las trabas administrativas para las empresas.
-	Decreto-ley 5/2014. Medidas normativas para reducir las trabas administrativas para las empresas.
-	Decreto 73/2012. Reglamento de Residuos de Andalucía.
-	Decreto 293/2011. Regula la calidad del medio ambiente atmosférico y se crea el registro de sistemas de evaluación de la calidad del aire en Andalucía.
-	Decreto 67/2011. Regula el control de calidad de la construcción y obra pública.
-	Decreto 9/2011. Modifica diversas Normas Reguladoras de Procedimientos Administrativos de Industria y Energía.
-	Decreto 22/2010. Regula el distintivo de calidad ambiental de la Administración de la Junta de Andalucía.
-	Decreto 293/2009, Reglamento que regula las normas para la accesibilidad en las infraestructuras, el urbanismo, la edificación y el transporte en Andalucía y Orden 9-01-2012,  que aprueba los modelos de fichas y tablas justificativas de dicho Reglamento.
-	Decreto 50/2008. Regulan los procedimientos administrativos referidos a las instalaciones de energía solar fotovoltaica emplazadas en la comunidad autónoma de Andalucía.
-	Ley 2/2007. Fomento de las energías renovables y del ahorro y eficiencia energética de Andalucía.
-	Decreto 155/2018. Catálogo de Espectáculos Públicos, Actividades Recreativas y Establecimientos Públicos de Andalucía y se regulan sus modalidades, régimen de apertura o instalación y horarios de apertura y cierre.
-	Decreto 251/2023, por el que se modifica el Decreto 155/2018.
-	Decreto 195/2007. Condiciones generales para la celebración de espectáculos públicos y actividades recreativas de carácter ocasional y extraordinario.
-	Ley 13/1999. Normas reguladoras de espectáculos públicos y actividades recreativas en Andalucía.
-	Decreto 178/2006. Normas de protección de la avifauna para las instalaciones eléctricas de alta tensión.
-	Resolución de 23-09-2019. Aprueba especificaciones particulares y proyectos tipo de Endesa, SLU.
-	Resolución de 05-12-2018. Aprueba especificaciones particulares y proyectos tipo de Endesa, SLU.
-	Resolución de 05-05-2005. Normas particulares y condiciones técnicas y de seguridad de Endesa, en Andalucía y modificaciones.
-	Resolución de 03-06-2020 y Resolución de 14-06-2019, por la que se derogan parcialmente la Resolución de 05-05-2005.
-	Instrucción de 14-10-2004, Sobre previsión de cargas eléctricas y coeficientes de simultaneidad en áreas de uso residencial y áreas de uso industrial e Instrucción 2/2023, por la que se modifica la Instrucción de 14-10-2004.
-	Resolución de 8-10-2019, por la que se modifican los Anexos I y II de la Orden de 5-03-2013.
-	Instrucción de 01-03-2017, sobre tramitación de modificaciones y ampliaciones de líneas e instalaciones eléctricas de alta tensión competencia de la comunidad autónoma de Andalucía.
-	Resolución de 29-11-2016, por la que se modifican los Anexos II y III de la Orden de 20-02-2013, para adaptarla al RD 337/2014, por el que se aprueban el reglamento sobre condiciones técnicas y garantías de seguridad en instalaciones eléctricas de alta tensión y sus ITCs-RAT 01 a 23
-	Orden de 20-02-2013, aprueba la tramitación electrónica de los procedimientos para la expedición de las habilitaciones profesionales y para la presentación de declaraciones y comunicaciones, en materia de Industria, Energía y Minas
-	Decreto 59/2005. Regula el procedimiento para la instalación, ampliación, traslado y puesta en funcionamiento de los establecimientos industriales, así como el control, responsabilidad y régimen sancionador de los mismos con desarrollo y modificaciones en: Orden de 27-05-2005, Orden de 05-10-2007, Orden de 05-03-2013, Resolución de 13-05-2025 y demás Resoluciones donde se modifican los Anexos I y II de dicha Orden para la comunicación de puesta en funcionamiento de establecimientos e instalaciones industriales y las fichas técnicas descriptivas de instalaciones industriales.
-	Orden de 24-01-2003. Normas de diseño y constructivas para edificios de uso docente (Capítulos dedicados a instalaciones).
-	Decreto 287/2002. Establece medidas para el control y la vigilancia higiénico-sanitarias de instalaciones de riesgo en la transmisión de la legionelosis.
-	Decreto 327/2012. Modifica diversos Decreto (Decreto 120/1991, D 9/2003, D 60/2010), para su adaptación a la normativa estatal de transposición de la Directiva de Servicios.
- Decreto 120/1991. Reglamento de suministro domiciliario de agua y Decreto 9/2011 que modifica algunas normas de dicho Decreto.
-	Decreto 9/2003. Regula la actividad industrial y la prestación de servicios en los talleres de reparación y mantenimiento de vehículos automóviles y el artículo 7 y el Anexo II de la Orden 25- 01-2007.
-	Decreto 36/2014. Regula el ejercicio de las competencias de la Administración de la Junta de Andalucía en materia de Ordenación del Territorio y Urbanismo.
-	Ley 8/2001, de 12 de julio, de Carreteras de Andalucía.
-	Decreto 69/2024. Establece el contenido y efectos de la declaración de emergencia de interés general de Andalucía y se aprueba el Plan Territorial de Emergencias de Protección Civil de Andalucía.
- Ley 2/2002.Gestión de Emergencias en Andalucía y Ley 2/2023, que la modifica.
-	Ordenanza de 26-10-2012 (BOP núm. 208) Municipal de Jaén, reguladora de la ocupación de vía pública con veladores y estructuras auxiliares.
-	Plan general Municipal de ordenación urbana.

*Atribuciones profesionales*

-	Ley 38 de 05-11-1999. Ordenación de la edificación.
-	Ley 12 de 01-04-1986. Regulación de las atribuciones profesionales de los Arquitectos e Ingenieros Técnicos y Ley 33/1992, que la modifica.
-	R.D. 37/1977. Atribuciones de los Peritos Industriales.
-	Resolución de 21-07-2015, por la que se publica el Acuerdo del Consejo de Ministros de 10-07- 2015, por el que se determina el nivel de correspondencia al nivel del Marco Español de Cualificaciones para la Educación Superior del Título Universitario Oficial de Ingeniero Técnico Industrial, especialidad: Electricidad, Electrónica Industrial, Mecánica, Química Industrial, Textil.
-	R.D. 967/2014. Requisitos y procedimiento para la homologación y declaración de equivalencia a titulación y a nivel académico universitario oficial y para la convalidación de estudios extranjeros de educación superior, y el procedimiento para determinar la correspondencia a los niveles del marco español de cualificaciones para la educación superior de los títulos oficiales de Arquitecto, Ingeniero, Licenciado, Arquitecto Técnico, Ingeniero Técnico y Diplomado.
-	Orden CIN/351/2009. Requisitos para la verificación de los títulos universitarios oficiales que habiliten para el ejercicio de la profesión de Ingeniero Técnico Industrial.

*Normas*

Norma Básica de la Edificación:

Normas NTE que les sean de aplicación, según fase de obra.

Normas UNE que les sean de aplicación.

//*FIRMA, FECHA Y DEMÁS*



= Planos



