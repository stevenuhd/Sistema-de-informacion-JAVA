package cl.awakelab.spring.modelo;

import java.util.Scanner;

/**
 * Se origina por cada visita a terreno, puede existir una o varias por visita.
 * @author grupo 3 Fernando Cabrera, Jorge Navarrete, Karen Recabarren, Juvenal Colipi, Juan Lagos.
 *
 */
public class Revision extends Visitaterreno {
	private int idrevision;
	private int idterreno;
	private String nombrerev;
	private String detalle;
	private int estado;
	Scanner letras = new Scanner(System.in);
	Scanner numeros = new Scanner(System.in); 
	int temp=0;
	String temp1="";
	
	public Revision() {
		super();
	}

	public Revision(int idrevision, int idterreno, String nombrerev, String detalle, int estado) {
		super();
		this.idrevision = idrevision;
		this.idterreno = idterreno;
		this.nombrerev = nombrerev;
		this.detalle = detalle;
		this.estado = estado;
	}

	public int getIdrevision() {
		return idrevision;
	}

	public void setIdrevision(int idrevision) {
		this.idrevision = idrevision;
	}

	public int getIdterreno() {
		return idterreno;
	}

	public void setIdterreno(int idterreno) {
		this.idterreno = idterreno;
	}

	public String getNombrerev() {
		return nombrerev;
	}

	public void setNombrerev(String nombrerev) {
		this.nombrerev = nombrerev;
	}

	public String getDetalle() {
		return detalle;
	}

	public void setDetalle(String detalle) {
		this.detalle = detalle;
	}

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	}

	@Override
	public String toString() {
		return "Revision [idrevision=" + idrevision + ", idterreno=" + idterreno + ", nombrerev=" + nombrerev
				+ ", detalle=" + detalle + ", estado=" + estado + "]";
	}
	
	public void ingresarrevision() {
		Revision revision= new Revision();
		System.out.println("Ingrese ID de revisión");
		temp=numeros.nextInt();
		revision.setIdrevision(idrevision);
		System.out.println("Ingrese ID de la visita a terreno asociada");
		temp=numeros.nextInt();
		revision.setIdterreno(temp);
		System.out.println("Nombre alusivo a la revisión");
		temp1=letras.nextLine();
		revision.setNombrerev(temp1);
		System.out.println("Detalle para revisar");
		temp1=letras.nextLine();
		revision.setDetalle(temp1);
		System.out.println("Estado: 1 (sin problemas), 2 (con observaciones), 3 (no aprueba)");
		temp=numeros.nextInt();
		revision.setEstado(temp);
		
	}
	
}
