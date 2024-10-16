
package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Paciente extends Persona implements Serializable {
    //private int id_paciente
    private boolean eps;
    private String tipo_sangre;
    
    @OneToOne
    private Responsable unResponsable;
    
    //Relacion bidireccional - Mapeado por Paciente que es instanciado en turno
    @OneToMany (mappedBy="pacien")
    private List<Turno>listaTurnos;

    /*public Paciente(int id, boolean eps, String tipo_sangre, Responsable unResponsable, List<Turno> listaTurnos, String dnhi, String nombre, String apellidos, String telefono, String direccion, String fecha_nac) {
        super(id, dnhi, nombre, apellidos, telefono, direccion, fecha_nac);
        this.eps = eps;
        this.tipo_sangre = tipo_sangre;
        this.unResponsable = unResponsable;
        this.listaTurnos = listaTurnos;
    }*/

    public Paciente(int id, boolean eps, String tipo_sangre, Responsable unResponsable, String dnhi, String nombre, String apellidos, String telefono, String direccion, String fecha_nac) {
        super(id, dnhi, nombre, apellidos, telefono, direccion, fecha_nac);
        this.eps = eps;
        this.tipo_sangre = tipo_sangre;
        this.unResponsable = unResponsable;
    }
        
    public Paciente(boolean eps, String tipo_sangre, Responsable unResponsable, String dni, String nombre, String apellidos, String telefono, String direccion, String fecha_nac) {
        super(dni, nombre, apellidos, telefono, direccion, fecha_nac);
        this.eps = eps;
        this.tipo_sangre = tipo_sangre;
        this.unResponsable = unResponsable;
    }

    public Paciente() {
    }
    

    public boolean isEps() {
        return eps;
    }

    public void setEps(boolean eps) {
        this.eps = eps;
    }

    public String getTipo_sangre() {
        return tipo_sangre;
    }

    public void setTipo_sangre(String tipo_sangre) {
        this.tipo_sangre = tipo_sangre;
    }

    public Responsable getUnResponsable() {
        return unResponsable;
    }

    public void setUnResponsable(Responsable unResponsable) {
        this.unResponsable = unResponsable;
    }

    public List<Turno> getListaTurnos() {
        return listaTurnos;
    }

    public void setListaTurnos(List<Turno> listaTurnos) {
        this.listaTurnos = listaTurnos;
    }
    
    
    
}
