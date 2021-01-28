
Proyecto Evaluacion Final Modulo 5

El objetivo es poder desarrollar una solución tecnológica que cubra los procesos de negocio descritos y
que proponga una mejora en la gestión, el control, la seguridad, y disponibilidad de información para la empresa y sus clientes. El sistema debe permitir la planificación de actividades y el control
de ejecución de éstas, la gestión de clientes, la coordinación entre la empresa, los profesionales y los clientes para la respuesta temprana ante incidentes de seguridad. 
El presente proyecto se va a encargar de realizar una implementación de un Framework para la capa de presentación, dentro de las conocidas arquitecturas Modelo/Vista/Controlador (MVC). 
Por eso se trabajara con el patron MVC ya que es un patron de diseño de software confiable, que separa las funciones de la aplicación en modelos, vistas y controladores y esto hace que la aplicacion sea mas ligera. 
La separación del Modelo y la Vista, cuyo objetivo es separar los datos de su representación visual, facilita el manejo de errores y es posible agregar múltiples representaciones de los datos.




Version
1.1

Autores:
Juan Ignacio Lagos
Luis Felipe Gonzalez
Rolando Lazcano
Esteban Perez
Karen Recabarren 
Rodrigo Salas


Podemos mencionar los Controladores, cuya funcion será de procesar todas las peticiones, y en función de éstas, gestionar de un modo u otro su solución:

Los controladores que ocupamos en nuestro proyecto:

	-AccidenteControlador
	-AdminControlador
	-AsesoriasControlador
	-AsistenteControlador
	-CapacitacionesControlador
	-ChequeoControlador
	-ClienteControlador
	-ContactoControlador
	-HomeControlador
	-LoginControlador
	-PagoControlador
	-ProfesionalControlador
	-UsuarioControlador
	-Visitacontrolador

Luego tenemos la implementacion del Modelo, donde se encuentra toda la lógica necesaria y servicios para llevar a cabo las peticiones enviadas y por ultimo el desarrollo de la vista del patrón MVC, donde se muestran los diferentes datos e
información, frutos de un trabajo previo sobre el negocio. 

En este proyecto incluimos 20 casos de usos que fueron entregados clase a clase donde ahora se recopilo toda la informacion necesaria para entregar un proyecto final con la solucion tecnológica a este problema.
Los Casos de Uso son los siguientes:
	- inicio: Página de inicio del portal con información relevante del proyecto que se está realizando.
	- contacto: Formulario de contacto para realizar consultas.
	- crear capacitacion: Formulario para crear una capacitación en el sistema.
	- listar capacitaciones: Listado de capacitaciones registradas.
	- listado usuarios: Listado con los usuarios existentes en plataforma.
	- crear usuario: Formulario que permitirá crear un usuario en sistema.
	- editar cliente: Formulario que permite modificar los datos de un usuario de tipo cliente.
	- editar administrativo: Formulario que permite modificar los datos de un usuario de tipo administrativo.
	- editar profesional: Formulario que permite modificar los datos de un usuario de tipo profesional.
	- listado visitas: Lista de todas las visitas realizadas a cada uno de los clientes.
	- responder checklist: Listado de chequeos de una visita.
	- listado pago: Lista de todos los pagos realizados por los clientes.
	- crear pago: Formulario que permitirá agregar un pago al sistema.
	- listado asesorias: debe contener una lista con las asesorías realizadas hasta el momento.
	- crear asesorias:Contiene un formulario para agregar una nueva asesoría.
	- reportes: Despliega reportes específicos. 
	- administrarasistentes:Administración de asistentes a una capacitación; incluye listarlos, poder agregar asistentes y eliminarlos. 
	- Login: Acceso a un usuario portal a traves de una rut usuario y clave.
	- Gestionaraccidente: Listado con todos los accidentes registrados en plataforma. Además,permite editarlos, agregar uno nuevo y eliminarlos. En esta sección cada cliente administra sus propios accidentes
	- Administrar chequeos: Permite mostrar los distintos chequeos realizados a cada cliente en una visita a terreno, y permite agregar uno nuevo, y cambiar su estado.


Rutas Github:

Karen Recabarren https://github.com/KarenRecabarren
Luis Gonzalez https://github.com/allaccess28
Rodrigo Salas https://github.com/r0dr190
Rolando Lazcano https://github.com/
Juan Lagos https://github.com/juanignaciolagos
Esteban Perez https://github.com/stevenuhd

	



