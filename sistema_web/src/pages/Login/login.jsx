import { useState } from "react";
import { useNavigate } from "react-router-dom";
import { FiMail, FiLock } from "react-icons/fi";
import Swal from "sweetalert2";

import { loginAdmin } from "../../services/authService";
import "./Login.css";

function Login() {
  const navigate = useNavigate();

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = async (e) => {
    e.preventDefault();

    if (!email || !password) {
      Swal.fire("Campos requeridos", "Ingresa correo y contraseña.", "warning");
      return;
    }

    try {
      await loginAdmin(email, password);

      Swal.fire({
        icon: "success",
        title: "Bienvenido",
        text: "Inicio de sesión correcto",
        timer: 1500,
        showConfirmButton: false,
      });

      navigate("/dashboard");
    } catch (error) {
      Swal.fire(
        "Error",
        "Correo o contraseña incorrectos.",
        "error"
      );
    }
  };

  return (
    <main className="login-page">
      <section className="login-card">
        <div className="login-logo">
          <div className="logo-circle">💧</div>
          <h1>AGUAFRESH</h1>
          <p>Panel Administrativo</p>
        </div>

        <form className="login-form" onSubmit={handleLogin}>
          <label>Correo electrónico</label>
          <div className="input-group">
            <FiMail />
            <input
              type="email"
              placeholder="admin@aguafresh.com"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
          </div>

          <label>Contraseña</label>
          <div className="input-group">
            <FiLock />
            <input
              type="password"
              placeholder="••••••••"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
          </div>

          <button type="submit" className="login-button">
            Iniciar sesión
          </button>
        </form>
      </section>
    </main>
  );
}

export default Login;