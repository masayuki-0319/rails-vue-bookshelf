<template>
  <div class="container">
    <h1 class="#f3e5f5 purple lighten-5 center">[Rails+Vue.js]~Bookshelf~</h1>
    <div class="row #e3f2fd blue lighten-5">
      <div class="col s4 m6" v-for="book in books">
        <div class="card">
          <span class="card-title" v-on:click="setBookInfo(book.id)">
            {{ book.title }}
          </span>
        </div>
      </div>
    </div>
    <div class="row" v-show="bookInfoBool">
      <div class="col s12 m12">
        <div class="card blue-grey darken-1">
          <div class="card-content white-text">
            <span class="card-title">
              【{{ bookInfo.title }}】
            </span>
            <div class="detail">
              ・著者：{{ bookInfo.author }}
            </div>
            <div class="detail">
              ・出版社：{{ bookInfo.publisher }}
            </div>
            <div class="detail">
              ・ジャンル：{{ bookInfo.genre }}
            </div>
            <router-link :to="{ path: `/edit/${bookInfo.id}` }" class="btn">本の編集</router-link>
            <button class="btn #e53935 red darken-1" v-on:click="deleteBook(bookInfo.id)">削除</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    name: 'BookHome',
    computed: {
     books() {
       return this.$store.state.books
     },
     bookInfo() {
       return this.$store.state.bookInfo
     },
     bookInfoBool() {
       return this.$store.state.bookInfoBool
     }
    },
    mounted: function() {
      this.$store.commit('fetchBooks')
    },
    methods: {
      setBookInfo(id) {
        this.$store.commit('setBookInfo', { id })
      },
      deleteBook(id) {
        this.$store.commit('deleteBook', { id })
        this.$store.commit('fetchBooks')
      },
    }
  }
</script>

<style scoped></style>
