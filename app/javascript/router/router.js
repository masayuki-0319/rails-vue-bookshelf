import Vue          from 'vue'
import VueRouter    from 'vue-router'
import BookHome     from '../pages/BookHome.vue'
import BookCreate   from '../pages/BookCreate.vue'
import BookEdit     from '../pages/BookEdit.vue'
import Signup       from '../pages/Signup.vue'
import Signin       from '../pages/Signin.vue'

Vue.use(VueRouter)

const routes = [
  { path: '/',          name: 'BookHome',    component: BookHome },
  { path: '/create',    name: 'BookCreate',  component: BookCreate },
  { path: '/edit/:id',  name: 'BookEdit',    component: BookEdit },
  { path: '/signup',    name: 'Signup',      component: Signup },
  { path: '/signin',    name: 'Signin',      component: Signin }
];

export default new VueRouter({ routes });
