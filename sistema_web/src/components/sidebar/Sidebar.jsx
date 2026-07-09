import { NavLink } from "react-router-dom";
import {
  FiHome,
  FiUsers,
  FiActivity,
  FiDroplet,
  FiFileText,
  FiBell,
  FiSettings,
} from "react-icons/fi";

import logo from "../../assets/images/dragon-tank.png";
import "./Sidebar.css";

function Sidebar() {
  return (
    <aside className="sidebar">
      <div className="sidebar-brand">
        <img src={logo} alt="Logo AGUAFRESH" className="sidebar-logo" />

        <h2>AGUAFRESH</h2>
        <p>Dispensador de agua inteligente</p>
      </div>

      <nav className="sidebar-nav">
        <NavLink to="/dashboard">
          <FiHome />
          <span>Resumen</span>
        </NavLink>

        <NavLink to="/usuarios">
          <FiUsers />
          <span>Usuarios</span>
        </NavLink>

        <NavLink to="/monitoreo">
          <FiActivity />
          <span>Monitoreo</span>
        </NavLink>

        <NavLink to="/llenados">
          <FiDroplet />
          <span>Llenados</span>
        </NavLink>

        <NavLink to="/reportes">
          <FiFileText />
          <span>Reportes</span>
        </NavLink>

        <NavLink to="/alertas">
          <FiBell />
          <span>Alertas</span>
        </NavLink>

        <NavLink to="/configuracion">
          <FiSettings />
          <span>Configuración</span>
        </NavLink>
      </nav>

      <div className="sidebar-footer">
        <span>💧</span>
        <p>Agua inteligente, campus sostenible.</p>
      </div>
    </aside>
  );
}

export default Sidebar;