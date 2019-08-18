import Vue          from 'vue'
import VueRouter    from 'vue-router'
import BookHome     from '../pages/BookHome.vue'
import BookCreate   from '../pages/BookCreate.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',       name: 'BookHome',    component: BookHome },
  { path: '/create', name: 'BookCreate',  component: BookCreate },
];

export default new VueRouter({ routes });
