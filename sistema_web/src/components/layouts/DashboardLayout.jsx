import Sidebar from "../sidebar/Sidebar";
import Navbar from "../navbar/Navbar";
import "./DashboardLayout.css";

function DashboardLayout({ children }) {
  return (
    <div className="admin-layout">
      <Sidebar />

      <div className="admin-content">
        <Navbar />
        <main className="admin-main">{children}</main>
      </div>
    </div>
  );
}

export default DashboardLayout;