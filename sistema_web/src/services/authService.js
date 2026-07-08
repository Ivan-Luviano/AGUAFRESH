import { auth } from "../firebase/firebaseConfig";
import {
  signInWithEmailAndPassword,
  signOut,
} from "firebase/auth";

export const login = async (email, password) => {
  return await signInWithEmailAndPassword(auth, email, password);
};

export const logout = async () => {
  return await signOut(auth);
};