import { StatusBar } from 'expo-status-bar';
import React from 'react';
import { StyleSheet, Text, View, NativeModules, Button } from 'react-native';
const { HapticModule } = NativeModules;

import Boing from './ahap/Boing.json'
import Drums from './ahap/Drums.json'
import Gravel from './ahap/Gravel.json'
import Heartbeats from './ahap/Heartbeats.json'
import Inflate from './ahap/Inflate.json'
import Oscillate from './ahap/Oscillate.json'
import Rumble from './ahap/Rumble.json'
import Sparkle from './ahap/Sparkle.json'

const AHAPS = {
    Boing, Drums, Gravel, Heartbeats, Inflate, Oscillate, Rumble, Sparkle
}

export default function App() {
  return (
    <View style={styles.container}>
      <Text>vv</Text>
      <StatusBar style="auto" />
      {
          Object.keys(AHAPS).map(ahap =>
            <Button key={ahap} title={ahap} onPress={() => HapticModule.createCalendarEvent(JSON.stringify(AHAPS[ahap]), 'testLocation')} />
            )
      }
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
