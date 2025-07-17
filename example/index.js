import 'react-native-reanimated';
import { AppRegistry } from 'react-native';
import App from './src/App';
import { name as appName } from './app.json';

// @ts-ignore - AppRegistry expects a component constructor but we're passing a function
AppRegistry.registerComponent(appName, () => App);
