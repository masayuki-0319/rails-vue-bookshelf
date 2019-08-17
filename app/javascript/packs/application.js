import Vue    from 'vue'
import App    from './App.vue'
import Router from '../router/router.js'

const app = new Vue({
   el: '#app',
   router: Router,
   render: h => h(App)
})
