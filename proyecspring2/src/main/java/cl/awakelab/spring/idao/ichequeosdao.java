package cl.awakelab.spring.idao;

import java.util.List;

import cl.awakelab.spring.modelo.ChequeoVisita;


public interface ichequeosdao {

	public boolean registrarChequeo(ChequeoVisita chequeovisita);
	public List<ChequeoVisita> obtenerChequeo();
	public boolean actualizarChequeo(ChequeoVisita chequeovisita);
	public boolean eliminarChequeo(ChequeoVisita chequeovisita);
	public boolean desplegarChequeo(ChequeoVisita chequeovisita);
	public ChequeoVisita obtenerChequeoporid(int idchequeo);
	public List<ChequeoVisita> obtenerRuts();
	public List<ChequeoVisita> obtenerIDs();
	public ChequeoVisita obtenerIDmax(int idmax);
}
