import 'zone.js/lib/browser/zone-microtask';
import 'reflect-metadata';
import 'babel-polyfill';

import {bootstrap} from 'angular2/platform/browser';

import {AppComponent} from './components/app';

// bootstrap from AppComponent
document.addEventListener("DOMContentLoaded", function(){
	bootstrap(AppComponent)
})
