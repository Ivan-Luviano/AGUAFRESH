import "./dashboard.css";
import { FiUsers, FiDroplet, FiBell, FiBarChart2 } from "react-icons/fi";
import {
  BarChart, Bar, XAxis, YAxis, Tooltip, ResponsiveContainer,
  PieChart, Pie, Cell
} from "recharts";

const consumo = [
  { dia: "Lun", litros: 80 },
  { dia: "Mar", litros: 120 },
  { dia: "Mié", litros: 95 },
  { dia: "Jue", litros: 150 },
  { dia: "Vie", litros: 110 },
];

const volumen = [
  { name: "1L", value: 65 },
  { name: "1.5L", value: 35 },
];

function Dashboard() {
  return (
    <div className="dashboard-layout">
      <aside className="sidebar">
        <h2>AGUAFRESH</h2>
        <nav>
          <a className="active">Dashboard</a>
          <a>Usuarios</a>
          <a>Monitoreo</a>
          <a>Reportes</a>
          <a>Alertas</a>
        </nav>
      </aside>

      <main className="dashboard-main">
        <header className="dashboard-header">
          <div>
            <h1>Panel Administrativo</h1>
            <p>Monitoreo general del bebedero inteligente</p>
          </div>
          <button>Cerrar sesión</button>
        </header>

        <section className="stats-grid">
          <article className="stat-card">
            <FiUsers />
            <div>
              <p>Usuarios</p>
              <h3>245</h3>
            </div>
          </article>

          <article className="stat-card">
            <FiDroplet />
            <div>
              <p>Litros hoy</p>
              <h3>128 L</h3>
            </div>
          </article>

          <article className="stat-card">
            <FiBarChart2 />
            <div>
              <p>Llenados</p>
              <h3>96</h3>
            </div>
          </article>

          <article className="stat-card warning">
            <FiBell />
            <div>
              <p>Alertas</p>
              <h3>1</h3>
            </div>
          </article>
        </section>

        <section className="dashboard-grid">
          <article className="panel-card">
            <h3>Nivel del tanque</h3>
            <div className="tank-box">
              <div className="tank-fill" />
            </div>
            <strong>72%</strong>
            <p>Nivel considerable</p>
          </article>

          <article className="panel-card chart-card">
            <h3>Consumo semanal</h3>
            <ResponsiveContainer width="100%" height={260}>
              <BarChart data={consumo}>
                <XAxis dataKey="dia" />
                <YAxis />
                <Tooltip />
                <Bar dataKey="litros" radius={[10, 10, 0, 0]} />
              </BarChart>
            </ResponsiveContainer>
          </article>

          <article className="panel-card chart-card">
            <h3>Volúmenes solicitados</h3>
            <ResponsiveContainer width="100%" height={260}>
              <PieChart>
                <Pie data={volumen} dataKey="value" outerRadius={90} label>
                  <Cell />
                  <Cell />
                </Pie>
                <Tooltip />
              </PieChart>
            </ResponsiveContainer>
          </article>
        </section>
      </main>
    </div>
  );
}

export default Dashboard;