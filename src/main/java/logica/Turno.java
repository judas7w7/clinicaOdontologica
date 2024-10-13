package logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Turno implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id_turno;
    private String fecha;
    private String hora;
    private String tratamiento;

    @ManyToOne
    @JoinColumn(name = "id_odont")
    private Odontologo odonto;

    @ManyToOne
    @JoinColumn(name = "id_pacien")
    private Paciente pacien;

    public Turno() {
    }

    public Turno(int id_turno, String fecha, String hora, String tratamiento, Odontologo odonto, Paciente pacien) {
        this.id_turno = id_turno;
        this.fecha = fecha;
        this.hora = hora;
        this.tratamiento = tratamiento;
        this.odonto = odonto;
        this.pacien = pacien;
    }

    public int getId_turno() {
        return id_turno;
    }

    public void setId_turno(int id_turno) {
        this.id_turno = id_turno;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
    }

    public Odontologo getOdonto() {
        return odonto;
    }

    public void setOdonto(Odontologo odonto) {
        this.odonto = odonto;
    }

    public Paciente getPacien() {
        return pacien;
    }

    public void setPacien(Paciente pacien) {
        this.pacien = pacien;
    }
    
    
    
}
