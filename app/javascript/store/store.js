import Vue from 'vue'
import Vuex from 'vuex'
import router from '../router/router.js'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    books: []
  },
  mutations: {
    fetchBooks(state) {
      state.books = [];
      axios.get('/api/books').then((res) => {
        for(var i = 0; i < res.data.books.length; i++) {
          state.books.push(res.data.books[i]);
        }
      }, (error) => {
        console.log(error);
      });
    }
  },
})
