import React from 'react';
import { Route, Router, browserHistory } from 'react-router';
import RideShowContainer from './RideShowContainer'


const App = props => {
  return (
      <Router history={browserHistory}>
        <Route path='/rides/:id' component={RideShowContainer} />
      </Router>
  )
}

export default App;
