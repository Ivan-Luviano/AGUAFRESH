import { useEffect, useState } from "react";
import { FiBell, FiLogOut, FiWifi, FiCalendar, FiClock } from "react-icons/fi";
import { logoutAdmin } from "../../services/authService";
import { useNavigate } from "react-router-dom";
import "./Navbar.css";

function Navbar() {
  const navigate = useNavigate();
  const [fechaHora, setFechaHora] = useState(new Date());

  useEffect(() => {
    const intervalo = setInterval(() => {
      setFechaHora(new Date());
    }, 1000);

    return () => clearInterval(intervalo);
  }, []);

  const fecha = fechaHora.toLocaleDateString("es-MX", {
    day: "2-digit",
    month: "long",
    year: "numeric",
  });

  const hora = fechaHora.toLocaleTimeString("es-MX", {
    hour: "2-digit",
    minute: "2-digit",
  });

  const handleLogout = async () => {
    await logoutAdmin();
    navigate("/login");
  };

  return (
    <header className="navbar">
      <div className="navbar-left">
        <h1>Panel de administración</h1>
      </div>

      <div className="navbar-center">
        <span><FiWifi /> Wi-Fi conectado</span>
        <span><FiCalendar /> {fecha}</span>
        <span><FiClock /> {hora}</span>
      </div>

      <div className="navbar-actions">
        <button className="icon-button">
          <FiBell />
        </button>

        <button className="logout-button" onClick={handleLogout}>
          <FiLogOut />
          Salir
        </button>
      </div>
    </header>
  );
}

export default Navbar;