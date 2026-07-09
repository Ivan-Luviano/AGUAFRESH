import DashboardLayout from "../../components/layouts/DashboardLayout";
import "./Dashboard.css";

import dragonTank from "../../assets/images/dragon-tank.png";
import waterWave from "../../assets/images/water-wave.png";

import {
  FiDroplet,
  FiUsers,
  FiBell,
  FiCheckCircle,
  FiRefreshCw,
} from "react-icons/fi";

function Dashboard() {
  return (
    <DashboardLayout>
      <section className="agua-dashboard">
        <div className="dashboard-grid-main">
          <div className="tank-panel card">
            <h3>Nivel actual del tanque</h3>

            <div className="tank-content">
              <img src={dragonTank} alt="Tanque AGUAFRESH" />

              <div>
                <h2>12,450 ml</h2>
                <p>de 15,000 ml</p>
                <div className="circle-percent">83%</div>
                <span className="green-pill">Lleno</span>
              </div>
            </div>
          </div>

          <div className="metric-card card">
            <FiDroplet />
            <p>Litros consumidos hoy</p>
            <h2>8,700 ml</h2>
            <span>↑ 12% vs. ayer</span>
          </div>

          <div className="metric-card card">
            <FiDroplet />
            <p>Número de llenados hoy</p>
            <h2>23</h2>
            <span>↑ 15% vs. ayer</span>
          </div>

          <div className="metric-card card">
            <FiUsers />
            <p>Usuarios registrados</p>
            <h2>148</h2>
            <span>↑ 8% vs. semana pasada</span>
          </div>

          <div className="metric-card card system-ok">
            <FiCheckCircle />
            <p>Estado del sistema</p>
            <h2>Operando</h2>
            <span>correctamente</span>
          </div>
        </div>

        <div className="levels-card card">
          <div>
            <FiDroplet />
            <strong>Lleno</strong>
            <span>75% - 100%</span>
          </div>

          <div>
            <FiDroplet />
            <strong>Medio</strong>
            <span>50% - 75%</span>
          </div>

          <div>
            <FiDroplet />
            <strong>Bajo</strong>
            <span>25% - 50%</span>
          </div>

          <div>
            <FiDroplet />
            <strong>Vacío</strong>
            <span>0% - 25%</span>
          </div>
        </div>

        <div className="dashboard-grid-middle">
          <div className="card chart-card">
            <h3>Consumo de agua (ml)</h3>

            <div className="line-chart">
              <span style={{ height: "45%" }}></span>
              <span style={{ height: "58%" }}></span>
              <span style={{ height: "70%" }}></span>
              <span style={{ height: "50%" }}></span>
              <span style={{ height: "85%" }}></span>
              <span style={{ height: "95%" }}></span>
            </div>
          </div>

          <div className="card pie-card">
            <h3>Llenados por tamaño</h3>

            <div className="donut-chart">
              <div>
                <strong>Total</strong>
                <h2>23</h2>
              </div>
            </div>

            <p>500 ml · 1 L · 1.5 L</p>
          </div>

          <div className="card alerts-card">
            <div className="card-title-row">
              <h3>
                <FiBell /> Alertas
              </h3>
              <span>Ver todas</span>
            </div>

            <div className="alert-item warning">
              <strong>Tanque bajo</strong>
              <p>El nivel del tanque está por debajo del 50%.</p>
            </div>

            <div className="alert-item danger">
              <strong>Tanque vacío</strong>
              <p>El tanque se encuentra vacío.</p>
            </div>
          </div>
        </div>

        <div className="dashboard-grid-bottom">
          <div className="card users-card">
            <div className="card-title-row">
              <h3>Administración de usuarios</h3>
              <span>Ver todos</span>
            </div>

            <table>
              <thead>
                <tr>
                  <th>Nombre</th>
                  <th>Correo</th>
                  <th>Estado</th>
                  <th>Último uso</th>
                </tr>
              </thead>

              <tbody>
                <tr>
                  <td>María González</td>
                  <td>maria@utsem.edu.mx</td>
                  <td>
                    <span className="status active">Activo</span>
                  </td>
                  <td>22/05/2024</td>
                </tr>

                <tr>
                  <td>Juan Pérez</td>
                  <td>juan@utsem.edu.mx</td>
                  <td>
                    <span className="status active">Activo</span>
                  </td>
                  <td>22/05/2024</td>
                </tr>

                <tr>
                  <td>Ana Torres</td>
                  <td>ana@utsem.edu.mx</td>
                  <td>
                    <span className="status inactive">Inactivo</span>
                  </td>
                  <td>21/05/2024</td>
                </tr>
              </tbody>
            </table>
          </div>

          <div className="card update-card">
            <h3>
              <FiRefreshCw /> Última actualización
            </h3>
            <p>Los datos se actualizan automáticamente.</p>
            <img src={waterWave} alt="Agua" />
            <span>Sincronizado en tiempo real</span>
          </div>

          <div className="card summary-card">
            <h3>Resumen del sistema</h3>
            <p>
              Estado general <strong>Operativo</strong>
            </p>
            <p>
              Conectividad <strong>En línea</strong>
            </p>
            <p>
              Respaldo de datos <strong>Activo</strong>
            </p>
            <p>
              Integridad de datos <strong>Óptima</strong>
            </p>
            <p>
              Consumo total hoy <strong>8,700 ml</strong>
            </p>
          </div>
        </div>
      </section>
    </DashboardLayout>
  );
}

export default Dashboard;