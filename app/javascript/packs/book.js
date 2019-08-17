import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: '.js-booksIndex',
  data: {
    bookInfo: {},
    bookInfoBool: false
  },
  methods: {
    setBookInfo(id){
      axios.get(`api/books/${id}.json`).then(res => {
        this.bookInfo = res.data;
        this.bookInfoBool = true;
      });
    }
  }
});
