
package logica;

import javax.persistence.Entity;

@Entity
public class Responsable extends Persona {
    
    private String tipo_responsable;

    public Responsable() {
    }

    public Responsable(String tipo_responsable, int id, String dnhi, String nombre, String apellidos, String telefono, String direccion, String fecha_nac) {
        super(id, dnhi, nombre, apellidos, telefono, direccion, fecha_nac);
        this.tipo_responsable = tipo_responsable;
    }

    public String getTipo_responsable() {
        return tipo_responsable;
    }

    public void setTipo_responsable(String tipo_responsable) {
        this.tipo_responsable = tipo_responsable;
    }
    
    
    
    
}
