= Mobile Web
== Components

- break UIs down in a modular way
- enable interchangeability
- isolate state from application business logic

-> based on shadow DOM

== React

React wraps an imperative API with a declarative one

- React's rendering process must always be pure
  - Event handlers don't need to be pure, as they don't run during rendering
- Virtual DOM
  - React compares the virtual DOM with the real DOM and only updates the parts that have changed

= React Native

- Application logic is written and executed in JavaScript
   - functional approach to constructing UIs
- Bridge translates JavaScript to native code
- Application UI is fully native

== Navigation

- Navigation works differently on each native platform. iOS uses view controllers, while android uses activities.
- Navigation on mobile is stateful. On the web, navigation is typically stateless, where a url (i.e. route) takes a user to a
single screen/page. On mobile, the history of the user's navigation state is persisted in the application so that the user
can go back to previous screens - a stack of screens can even include the same screen multiple times.

```jsx
import { createStackNavigator } from '@react-navigation/stack'
import { NavigationContainer } from '@react-navigation/native'

const Root = createStackNavigator()

export default function App() {
  return (
    <NavigationContainer>
      <Root.Navigator>
        <Root.Screen name="Screen1" component={Screen1} />
        <Root.Screen name="Screen2" component={Screen2} />
      </Root.Navigator>
    </NavigationContainer>
  )
}
```

== Redux (State Management)

- Redux is a state management library that helps manage the state of an application
- The entire state of the application will be represented by one JavaScript object
- State tree is read-only, and can only be changed by dispatching actions
- State changes are made with pure functions called reducers
  - Avoid array and object mutations