import { auth } from "../firebase/firebaseConfig";
import {
  signInWithEmailAndPassword,
  signOut,
} from "firebase/auth";

export const loginAdmin = async (email, password) => {
  return await signInWithEmailAndPassword(auth, email, password);
};

export const logoutAdmin = async () => {
  return await signOut(auth);
};