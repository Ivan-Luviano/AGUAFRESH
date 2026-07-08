import "./login.css";
import { FiMail, FiLock } from "react-icons/fi";

function Login() {
  return (
    <main className="login-page">
      <section className="login-card">
        <div className="login-logo">
          <div className="logo-circle">💧</div>
          <h1>AGUAFRESH</h1>
          <p>Panel Administrativo</p>
        </div>

        <form className="login-form">
          <label>Correo electrónico</label>
          <div className="input-group">
            <FiMail />
            <input type="email" placeholder="admin@aguafresh.com" />
          </div>

          <label>Contraseña</label>
          <div className="input-group">
            <FiLock />
            <input type="password" placeholder="••••••••" />
          </div>

          <button type="button" className="login-button">
            Iniciar sesión
          </button>

          <button type="button" className="forgot-button">
            ¿Olvidaste tu contraseña?
          </button>
        </form>
      </section>
    </main>
  );
}

export default Login;