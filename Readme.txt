
Proyecto Evaluacion Final Modulo 5

El objetivo es poder desarrollar una soluci�n tecnol�gica que cubra los procesos de negocio descritos y
que proponga una mejora en la gesti�n, el control, la seguridad, y disponibilidad de informaci�n para la empresa y sus clientes. El sistema debe permitir la planificaci�n de actividades y el control
de ejecuci�n de �stas, la gesti�n de clientes, la coordinaci�n entre la empresa, los profesionales y los clientes para la respuesta temprana ante incidentes de seguridad. 
El presente proyecto se va a encargar de realizar una implementaci�n de un Framework para la capa de presentaci�n, dentro de las conocidas arquitecturas Modelo/Vista/Controlador (MVC). 
Por eso se trabajara con el patron MVC ya que es un patron de dise�o de software confiable, que separa las funciones de la aplicaci�n en modelos, vistas y controladores y esto hace que la aplicacion sea mas ligera. 
La separaci�n del Modelo y la Vista, cuyo objetivo es separar los datos de su representaci�n visual, facilita el manejo de errores y es posible agregar m�ltiples representaciones de los datos.




Version
1.1

Autores:
Juan Ignacio Lagos
Luis Felipe Gonzalez
Rolando Lazcano
Esteban Perez
Karen Recabarren 
Rodrigo Salas


Podemos mencionar los Controladores, cuya funcion ser� de procesar todas las peticiones, y en funci�n de �stas, gestionar de un modo u otro su soluci�n:

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

Luego tenemos la implementacion del Modelo, donde se encuentra toda la l�gica necesaria y servicios para llevar a cabo las peticiones enviadas y por ultimo el desarrollo de la vista del patr�n MVC, donde se muestran los diferentes datos e
informaci�n, frutos de un trabajo previo sobre el negocio. 

En este proyecto incluimos 20 casos de usos que fueron entregados clase a clase donde ahora se recopilo toda la informacion necesaria para entregar un proyecto final con la solucion tecnol�gica a este problema.
Los Casos de Uso son los siguientes:
	- inicio: P�gina de inicio del portal con informaci�n relevante del proyecto que se est� realizando.
	- contacto: Formulario de contacto para realizar consultas.
	- crear capacitacion: Formulario para crear una capacitaci�n en el sistema.
	- listar capacitaciones: Listado de capacitaciones registradas.
	- listado usuarios: Listado con los usuarios existentes en plataforma.
	- crear usuario: Formulario que permitir� crear un usuario en sistema.
	- editar cliente: Formulario que permite modificar los datos de un usuario de tipo cliente.
	- editar administrativo: Formulario que permite modificar los datos de un usuario de tipo administrativo.
	- editar profesional: Formulario que permite modificar los datos de un usuario de tipo profesional.
	- listado visitas: Lista de todas las visitas realizadas a cada uno de los clientes.
	- responder checklist: Listado de chequeos de una visita.
	- listado pago: Lista de todos los pagos realizados por los clientes.
	- crear pago: Formulario que permitir� agregar un pago al sistema.
	- listado asesorias: debe contener una lista con las asesor�as realizadas hasta el momento.
	- crear asesorias:Contiene un formulario para agregar una nueva asesor�a.
	- reportes: Despliega reportes espec�ficos. 
	- administrarasistentes:Administraci�n de asistentes a una capacitaci�n; incluye listarlos, poder agregar asistentes y eliminarlos. 
	- Login: Acceso a un usuario portal a traves de una rut usuario y clave.
	- Gestionaraccidente: Listado con todos los accidentes registrados en plataforma. Adem�s,permite editarlos, agregar uno nuevo y eliminarlos. En esta secci�n cada cliente administra sus propios accidentes
	- Administrar chequeos: Permite mostrar los distintos chequeos realizados a cada cliente en una visita a terreno, y permite agregar uno nuevo, y cambiar su estado.


Rutas Github:

Karen Recabarren https://github.com/KarenRecabarren
Luis Gonzalez https://github.com/allaccess28
Rodrigo Salas https://github.com/r0dr190
Rolando Lazcano https://github.com/
Juan Lagos https://github.com/juanignaciolagos
Esteban Perez https://github.com/stevenuhd

	



