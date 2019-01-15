//Place code here for ios

//Import a library to help create a Component
import React from 'react';
import { Text, AppRegistry } from 'react-native';

//Create a Component
const App = () => {
  return(
    <Text>Some Text</Text>
  )
};

//Render component to a device
AppRegistry.registerComponent('albums', () => App);
