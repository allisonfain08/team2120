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
//const [name, setName] = useState("");

const LoginScreen = ({navigation}) => {
  const [email, setEmail] = useState("");
  //const [name, setName] = useState("");
  return (
    <View style={styles.container}>
          <StatusBar style="auto" />
          <View style={styles.inputView}>
            <TextInput
              style={styles.TextInput}
              placeholder="Email"
              placeholderTextColor="#003f5c"
              onChangeText={(value) => setEmail(value)}

            />
          </View>
    
          <View style={styles.inputView}>
            <TextInput
              style={styles.TextInput}
              placeholder="Password"
              placeholderTextColor="#003f5c"
              secureTextEntry={true}
            />
          </View>
    
          <TouchableOpacity>
            <Text style={styles.forgot_button}>Forgot Password?</Text>
          </TouchableOpacity>
    
          <TouchableOpacity style={styles.loginBtn} onPress={() => navigation.navigate('Home', {
              paramKey: email,
            })}>
            <Text style={styles.loginText}>LOGIN</Text>
          </TouchableOpacity>
    
          <TouchableOpacity style={styles.loginBtn} onPress={() => this.props.navigation.navigate("Register")}>
            <Text style={styles.loginText}>REGISTER</Text>
          </TouchableOpacity>
        </View>
    );

}

//booleans to check pass requirements 
const [containsCaseC, setContainsCaseC] = useState(false)
const [containsCaseL, setContainsCaseL] = useState(false)
const [containsNum, setContainsNum] = useState(false)
const [containsSpecialChar, setContainsSpecialChar] = useState(false)
const [minPassLength, setMinPassLength] = useState(false)
const [passMatch, setPassMatch] = useState(false)
const [allPass, setAllPass] = useState(false)

// strings associated with each check
const mustContainErrorStr = [
  ["Password must contain an upper case letter.", containsCaseC]
  ["Password must contain a lower case letter.", containsCaseL]
  ["Password must contain a number.", containsNum]
  ["Password must contain a special character.", containsSpecialChar]
  ["Password must contain at least 8 characters.", minPassLength]
  ["Entered passwords must match.", passMatch]
]

// password validation checks:
const validatePassword = () => {
  //check case: 
  if (password.toLowerCase() != password) setContainsCaseC(true)
  else setContainsCaseC(false)
  
  if (password.toUpperCase() != password) setContainsCaseL(true)
  else setContainsCaseL(false)

  //check if has numbers: 
  if (/\d/.test(password)) setContainsNum(true)
  else setContainsNum(false)

  //check if has special characters 
  if (/[~`!#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/g.test(password)) setContainsSpecialChar(true)
  else setContainsSpecialChar(false)

  //check pass meets min length 
  if (password.length >= 8) setMinPassLength(true)
  else setMinPassLength(false)

  //check if passwords match
  if (password !== "" && password == confirmPass) setPassMatch(true)
  else setPassMatch(false)

  //check if all conditions pass
  if (containsCaseC && containsCaseL && containsNum && containsSpecialChar && minPassLength && passMatch) setAllPass(true)
  else setAllPass(false)
}

const RegisterScreen = ({navigation}) => {
  return(
    <View style={styles.container}>
      <StatusBar style="auto" />
      <View style={styles.inputView}>
        <TextInput
          style={styles.TextInput}
          placeholder="Email"
          placeholderTextColor="#003f5c"
          // onChangeText={(email) => setEmail(email)}
        />
      </View>

      <View style={styles.inputView}>
        <TextInput
          style={styles.TextInput}
          placeholder="Password"
          placeholderTextColor="#003f5c"
          secureTextEntry={true}
          // onChangeText={(password) => setPassword(password)}
        />
      </View>

      <TouchableOpacity style={styles.loginBtn} onPress={() => navigation.navigate("Home")}>
        <Text style={styles.loginText}>CREATE ACCOUNT</Text>
      </TouchableOpacity>

      <TouchableOpacity onPress={() => navigation.navigate("Login")}>
        <Text style={styles.forgot_button}>Back to Login</Text>
      </TouchableOpacity>


    </View> 
  );
}

const HomeScreen = ({route}) => {
  return(
    <View style={{ flex: 1, alignItems: 'center', justifyContent: 'center' }}>
      <Text>Home Screen</Text>
      <Text style={styles.textStyle}>
          Welcome, {route.params.paramKey}
        </Text>
    </View>
  );
}

const Stack = createNativeStackNavigator();

export default function App() {
  //const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
 
  return (
    <NavigationContainer>
      <Stack.Navigator>
        <Stack.Screen name="Login" component={LoginScreen} />
        <Stack.Screen name="Register" component={RegisterScreen} />
        <Stack.Screen name="Home" component={HomeScreen} />
      </Stack.Navigator>
    </NavigationContainer>
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