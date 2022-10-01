
// v9 compat packages are API compatible with v8 code
import firebase from 'firebase/compat/app';
import 'firebase/compat/auth';
import 'firebase/compat/firestore';
//import * as firebase from 'firebase'
const firebaseConfig={ 
  apiKey: "AIzaSyDyahaMPJraHtdv0JEHDoz-LG-GvxiJ8p4",
  authDomain: "fashionapp-5b85a.firebaseapp.com",
  projectId: "fashionapp-5b85a",
  storageBucket: "fashionapp-5b85a.appspot.com",
  messagingSenderId: "796267220714",
  appId: "1:796267220714:web:0ce702e26f9a715a081193",
  measurementId: "G-81691M52JT"
}

app = firebase.initializeApp(firebaseConfig)

if(!firebase.app.length){
  firebase.InitializeApp(firebaseConfig); 

}

export {firebase}

