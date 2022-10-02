
import * as firebase from "firebase"; 

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
let app; 
if(firebase.apps.length === 0){
  app = firebase.initializeApp(firebaseConfig);
} else {
  app = firebase.app(); 
}

//const analytics = getAnalytics(app);
const auth = firebase.auth();
export{auth}; 

 
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

}*/

export {firebase}

