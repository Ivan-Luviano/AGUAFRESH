import DashboardLayout from "../../components/layouts/DashboardLayout";
import "./Usuarios.css";

const usuarios = [
  {
    nombre: "Edgar Moreno",
    correo: "admin@aguafresh.com",
    rol: "Administrador",
    estado: "Activo",
    fecha: "08/07/2026",
  },
  {
    nombre: "María González",
    correo: "maria@correo.com",
    rol: "Usuario",
    estado: "Activo",
    fecha: "07/07/2026",
  },
  {
    nombre: "Juan Pérez",
    correo: "juan@correo.com",
    rol: "Usuario",
    estado: "Inactivo",
    fecha: "05/07/2026",
  },
];

function Usuarios() {
  return (
    <DashboardLayout>
      <section className="usuarios-page">
        <div className="usuarios-header">
          <div>
            <h2>Administración de usuarios</h2>
            <p>Consulta y gestión de usuarios registrados en AGUAFRESH.</p>
          </div>

          <button className="usuarios-button">+ Agregar usuario</button>
        </div>

        <div className="usuarios-card">
          <table className="usuarios-table">
            <thead>
              <tr>
                <th>Nombre</th>
                <th>Correo electrónico</th>
                <th>Rol</th>
                <th>Estado</th>
                <th>Fecha de registro</th>
                <th>Acciones</th>
              </tr>
            </thead>

            <tbody>
              {usuarios.map((usuario, index) => (
                <tr key={index}>
                  <td>{usuario.nombre}</td>
                  <td>{usuario.correo}</td>
                  <td>{usuario.rol}</td>
                  <td>
                    <span
                      className={
                        usuario.estado === "Activo"
                          ? "badge activo"
                          : "badge inactivo"
                      }
                    >
                      {usuario.estado}
                    </span>
                  </td>
                  <td>{usuario.fecha}</td>
                  <td>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </section>
    </DashboardLayout>
  );
}

export default Usuarios;