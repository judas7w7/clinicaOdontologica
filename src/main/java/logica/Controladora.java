package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();
    Usuario usu = new Usuario();

    public void crearUsuario(String nombreUsuario, String contrasenia, String rol) {

        usu.setNombre_usuario(nombreUsuario);
        usu.setContrasenia(contrasenia);
        usu.setRol(rol);
        controlPersis.crearUsuario(usu);
    }

//    public boolean existeUsuario(String nombreUsuario, String rol) {
//        return svUsuario.existeUsuario(nombreUsuario, rol);
//    }
    public List<Usuario> getUsuarios() {
        return controlPersis.getUsuarios();

    }

    public void borrarUsuario(int id) {
        controlPersis.borrarUsuario(id);

    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);

    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);

    }

    public boolean comprobarAcceso(String usuario, String contrasenia) {

        List<Usuario> listaUsuario = new ArrayList<Usuario>();
        listaUsuario = controlPersis.getUsuarios();
        for (Usuario usu : listaUsuario) {
            if (usu.getNombre_usuario().equals(usuario)) {
                if (usu.getContrasenia().equals(contrasenia)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean comprobarExistencia(String usuario, String rol) {

        List<Usuario> listaUsuario = new ArrayList<Usuario>();
        try{
            listaUsuario = controlPersis.getUsuarios();

            for (Usuario usu : listaUsuario) {
                if (usu.getNombre_usuario().equals(usuario)) {
                    if (usu.getRol().equals(rol)) {
                        return true;
                    }
                }
            }
        }catch(NullPointerException e){
            return false;     
        }finally{
            return false;
        }
    }

    public List<Horario> getHorarios() {
        return controlPersis.getHorarios();
    }

    public List<Responsable> getResponsable() {
        return controlPersis.getResponsable();
    }

    public void crearSecretario(String dni, String nombre, String apellidos, String telefono, String direccion, String fechanac, String sector, String UnUsuario) {
        Secretario sec = new Secretario();
        sec.setDni(dni);
        sec.setNombre(nombre);
        sec.setApellidos(apellidos);
        sec.setTelefono(telefono);
        sec.setDireccion(direccion);
        sec.setFecha_nac(fechanac);
        sec.setSector(sector);
        sec.setUnUsuario(usu);
        controlPersis.crearSecretario(sec);

    }

    public List<Secretario> getSecretario() {
        return controlPersis.getSecretario();
    }

    public List<Odontologo> getOdontologos() {
        return controlPersis.getOdontologos();
    }

    public List<Paciente> getPacientes() {
        return controlPersis.getPacientes();

    }

    public Odontologo traerOdontologo(int id) {
        return controlPersis.traerOdontologo(id);
    }

    public Paciente traerPaciente(int id) {
        return controlPersis.traerPaciente(id);
    }

    public void crearTurno(String fecha, String hora, String tratamiento, Odontologo odont, Paciente pacien) {
        Turno tur = new Turno();
        tur.setFecha(fecha);
        tur.setHora(hora);
        tur.setTratamiento(tratamiento);
        tur.setOdonto(odont);
        tur.setPacien(pacien);
        controlPersis.crearTurno(tur);
    }

    public List<Turno> getTurno() {
        return controlPersis.getTurno();
    }

    public List<Turno> listarTurnosActuales(String fActual) {
        return controlPersis.listarTurnosActuales(fActual);
    }

    public void borrarPaciente(Integer id) {
        controlPersis.borrarPaciente(id);
    }

    public Paciente buscarPaciente(Integer id) {
       return controlPersis.buscarPaciente(id);
    }

    public Responsable buscarResponsable(int id) {
        return controlPersis.buscarResponsable(id);
    }

    public void crearPciente(Paciente pacienteActualizar) {
        controlPersis.crearPaciente(pacienteActualizar);
    }

    public void editarPaciente(Paciente pacienteActualizar) {
        controlPersis.editarPaciente(pacienteActualizar);
    }

}
