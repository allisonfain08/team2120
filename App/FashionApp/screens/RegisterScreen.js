import { StatusBar } from "expo-status-bar";
import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  View,
  Image,
  TextInput,
  Button,
  TouchableOpacity,
} from "react-native";

import { NavigationContainer } from "@react-navigation/native";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import { firebase } from "../Firebase/firebase";
import auth from "../Firebase/firebase";

const handleRegister = () => { 
  auth 
    .createUserWithEmailandPassword(email, password)
    .then(userCredentials => {
      const user = userCredentials.user; 
      console.log(user.email); 
    })
    .catch(error => alert(error.message))

}
const RegisterScreen = (props) => {

  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')

    return(
        <View style={styles.container}>
          <StatusBar style="auto" />
          <View style={styles.inputView}>
            <TextInput
              style={styles.TextInput}
              placeholder="Email"
              placeholderTextColor="#003f5c"
              onChangeText={(text) => setEmail(text)}
            />
          </View>
    
          <View style={styles.inputView}>
            <TextInput
              style={styles.TextInput}
              placeholder="Password"
              placeholderTextColor="#003f5c"
              secureTextEntry={true}
              onChangeText={(text) => setPassword(text)}
            />
          </View>

          <TouchableOpacity style={styles.loginBtn} onPress={() => props.navigation.navigate("Home")}>
            <Text style={styles.loginText}>CREATE ACCOUNT</Text>
          </TouchableOpacity>
    
          <TouchableOpacity onPress={handleRegister}>
            <Text style={styles.forgot_button}>Back to Login</Text>
          </TouchableOpacity>
        </View> 
      );
  }

const styles = StyleSheet.create({
    container: {
      flex: 1,
      backgroundColor: "#fff",
      alignItems: "center",
      justifyContent: "center",
    },
   
    image: {
      marginBottom: 40,
    },
   
    inputView: {
      backgroundColor: "#FFC0CB",
      borderRadius: 30,
      width: "70%",
      height: 45,
      marginBottom: 20,
   
      alignItems: "center",
    },
   
    TextInput: {
      height: 50,
      flex: 1,
      padding: 10,
      marginLeft: 20,
    },
   
    forgot_button: {
      height: 30,
      marginBottom: 30,
    },
   
    loginBtn: {
      width: "80%",
      borderRadius: 25,
      height: 50,
      alignItems: "center",
      justifyContent: "center",
      marginTop: 40,
      backgroundColor: "#FF1493",
    },
  });


export default RegisterScreen; 