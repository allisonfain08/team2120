

// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional

const firebaseConfig = {
  apiKey: "AIzaSyDyahaMPJraHtdv0JEHDoz-LG-GvxiJ8p4",
  authDomain: "fashionapp-5b85a.firebaseapp.com",
  projectId: "fashionapp-5b85a",
  storageBucket: "fashionapp-5b85a.appspot.com",
  messagingSenderId: "796267220714",
  appId: "1:796267220714:web:0ce702e26f9a715a081193",
  measurementId: "G-81691M52JT"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

/*import * as firebase from 'firebase'
const firebaseConfig={ 
  apiKey: "AIzaSyDyahaMPJraHtdv0JEHDoz-LG-GvxiJ8p4",
  authDomain: "fashionapp-5b85a.firebaseapp.com",
  projectId: "fashionapp-5b85a",
  storageBucket: "fashionapp-5b85a.appspot.com",
  messagingSenderId: "796267220714",
  appId: "1:796267220714:web:0ce702e26f9a715a081193",
  measurementId: "G-81691M52JT"
};

app = firebase.initializeApp(firebaseConfig)

if(!firebase.app.length){
  firebase.InitializeApp(firebaseConfig); 

}

export {firebase}*/

