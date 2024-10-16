package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import logica.Horario;
import logica.Odontologo;
import logica.Paciente;
import logica.Responsable;
import logica.Secretario;
import logica.Turno;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {

    HorarioJpaController horaJPA = new HorarioJpaController();
    OdontologoJpaController odontoJPA = new OdontologoJpaController();
    PacienteJpaController pacJPA = new PacienteJpaController();
    PersonaJpaController persJPA = new PersonaJpaController();
    ResponsableJpaController respJPA = new ResponsableJpaController();
    SecretarioJpaController secreJPA = new SecretarioJpaController();
    TurnoJpaController turnJPA = new TurnoJpaController();
    UsuarioJpaController usuJPA = new UsuarioJpaController();

    public void crearUsuario(Usuario usu) {
        usuJPA.create(usu);
    }

    public List<Usuario> getUsuarios() {
        return usuJPA.findUsuarioEntities();
    }

    public void borrarUsuario(int id) {
        try {
            usuJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id) {
        return usuJPA.findUsuario(id);

    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Horario> getHorarios() {
        return horaJPA.findHorarioEntities();
    }

    public void crearHorario(Horario hr) {
        horaJPA.create(hr);
    }

    public List<Responsable> getResponsable() {
        return respJPA.findResponsableEntities();
    }

    public void crearResponsable(Responsable res) {
        respJPA.create(res);
    }

    public void crearSecretario(Secretario sec) {
        secreJPA.create(sec);
    }

    public List<Secretario> getSecretario() {
        return secreJPA.findSecretarioEntities();
    }

    public List<Odontologo> getOdontologos() {
        return odontoJPA.findOdontologoEntities();
    }

   public List<Paciente> getPacientes() {
        return pacJPA.findPacienteEntities();
    } 

    public Odontologo traerOdontologo(int id) {
        return odontoJPA.findOdontologo(id);
    }

    public Paciente traerPaciente(int id) {
        return pacJPA.findPaciente(id);
    }

    public void crearTurno(Turno tur) {
        turnJPA.create(tur);
    }
    
    public List<Turno> getTurno() {
        return turnJPA.findTurnoEntities();
    }

    public List<Turno> listarTurnosActuales(String fActual) {
        EntityManager em = turnJPA.getEntityManager();
        Query query = em.createQuery("SELECT t FROM Turno t WHERE t.fecha > :fHoy ORDER BY t.id_turno");
        query.setParameter("fHoy", fActual);
        List<Turno> lista = query.getResultList();
        return lista;
    }

    public Responsable buscarResponsable(int id) {
        return respJPA.findResponsable(id);
    }

    public void borrarResponsable(Integer id) {
        try {
            respJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editarResponsable(Responsable responsable) {
        try {
            respJPA.edit(responsable);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void crearPaciente(Paciente paciente) {
        pacJPA.create(paciente);
    }

    public List<Paciente> buscarPaciente() {
        return pacJPA.findPacienteEntities();
    }

    public void borrarPaciente(Integer id) {
        try {
            pacJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Paciente buscarPaciente(Integer id) {
        return pacJPA.findPaciente(id);
    }

    public void editarPaciente(Paciente pacienteActualizar) {
        try {
            pacJPA.edit(pacienteActualizar);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
