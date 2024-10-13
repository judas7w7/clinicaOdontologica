package logica;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Odontologo extends Persona implements Serializable {

    //private int id_odontolog;
    private String especialidad;
    //Relacion bidireccional - Mapeado por odonto que es instanciado en turno
    @OneToMany(mappedBy = "odonto")
    private List<Turno> listaTurnos;
    @OneToOne
    private Usuario unUsuario;
    @OneToOne
    private Horario unHorario;

    public Odontologo() {

    }

    public Odontologo(String especialidad, List<Turno> listaTurnos, Usuario unUsuario, Horario unHorario, int id, String dnhi, String nombre, String apellidos, String telefono, String direccion, String fecha_nac) {
        super(id, dnhi, nombre, apellidos, telefono, direccion, fecha_nac);
        this.especialidad = especialidad;
        this.listaTurnos = listaTurnos;
        this.unUsuario = unUsuario;
        this.unHorario = unHorario;
    }
    
    
}
