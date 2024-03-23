# tennis_court_scheduling

#DEV

#Introducción:
El siguiente documento detalla el proceso de desarrollo de una aplicación móvil para la reserva de canchas de tenis utilizando Flutter. El proyecto se realizó como parte de un reto técnico, con el objetivo de demostrar el dominio de conceptos como Clean Architecture, SOLID, KISS y el uso de una base de datos local llamada ISAR.

#Arquitectura:
Capa de Presentación: Utilizamos el patrón MVVM (Modelo-Vista-VistaModelo) para la capa de presentación. Riverpod se implementó como el manejador de estados entre widgets, facilitando la comunicación y actualización de la interfaz de usuario de manera eficiente.

Capa de Negocio: Aquí reside la lógica de negocio de la aplicación. Se aplicaron los principios SOLID para garantizar que cada componente sea independiente y reutilizable.

Capa de Datos: ISAR se utilizó como la base de datos local para almacenar y gestionar los datos de la aplicación de manera eficiente.
Se utilizo un proveedor de datos externos para la consulta de estado del tiempo.

#Como empezar ?

1.Copiar el .env.template y renombrarlo a .env
2.Cambiar las variables de entorno. (Adjuntas en el correo) 3. cambios en la entidad, hay que ejecutar el comando :
'flutter pub run build_runner build', para poder usar isar como localBD

Alcance logrado:

Alcance a terminar el template con la arquitectura limpia.
Alcance a crear los Mappers
Alcance a terminar la implementacion de ISAR como Base de datos local
Alcance a implementar Riverpod para los estados de los widgets.
Alcance a implementar DIO como manejador de las peticiones HTTP.
Alcance a crear las capas de Presentacio, Infraestructura y Dominio.
Alcance a crear 2 pantallas para manejar la logica de negocio.
Alcance a crear, editar y consultar las canchas, agendar nuevas canchas.
Alcance a crear la vista de canchas.

Pendientes

manejar la logica de las canchas.
Manejar la logica de borrado de canchas.
Actualizar la vista con cada movimiento en la BD.
