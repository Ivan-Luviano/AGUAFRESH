// Importar Firebase
import { initializeApp } from "firebase/app";
import { getAuth } from "firebase/auth";
import { getFirestore } from "firebase/firestore";

// Configuración del proyecto Firebase
const firebaseConfig = {
  apiKey: "AIzaSyBhqp7MN5E56FDsnc6keZxbmE2NI7e3L48",
  authDomain: "aguafresh-aced5.firebaseapp.com",
  projectId: "aguafresh-aced5",
  storageBucket: "aguafresh-aced5.firebasestorage.app",
  messagingSenderId: "1032349290901",
  appId: "1:1032349290901:web:69e9bd2a73adfbec19669c",
};

// Inicializar Firebase
const app = initializeApp(firebaseConfig);

// Servicios que utilizará la aplicación
export const auth = getAuth(app);
export const db = getFirestore(app);

export default app;