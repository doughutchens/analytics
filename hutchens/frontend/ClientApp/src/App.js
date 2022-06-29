import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { FetchData } from './components/FetchData';
import { Counter } from './components/Counter';
import { CBB } from './components/CBB';
import { WCBB } from './components/WCBB';
import { Blog } from './components/Blog';
import { About } from './components/About';

import './custom.css'

export default class App extends Component {
  static displayName = App.name;

  render () {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route path='/counter' component={Counter} />
        <Route path='/fetch-data' component={FetchData} />
        <Route path='/cbb' component={CBB} />
        <Route path='/wcbb' component={WCBB} />
        <Route path='/blog' component={Blog} />
        <Route path='/about' component={About} />
      </Layout>
    );
  }
}
