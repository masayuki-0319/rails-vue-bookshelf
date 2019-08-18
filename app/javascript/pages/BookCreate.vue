<template>
  <div class="container">
    <h1 class="#f3e5f5 purple lighten-5 center">本の登録</h1>
    <form class="col">
      <div class="row">
        <div class="input-field">
          <input placeholder="Title" type="text" class="validate" v-model="book.title" required="required"></br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Author" type="text" class="validate" v-model="book.author" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Publisher" type="text" class="validate" v-model="book.publisher" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Genre" type="text" class="validate" v-model="book.genre" required="required">
        </div>
      </div>
      <div class="btn btn-info waves-effect waves-light" v-on:click="createBook">本を登録</div>
    </form>
  </div>
</template>

<script>
  import axios from 'axios';
  export default {
    data: function() {
      return {
        book: {
          title: '',
          author: '',
          publisher: '',
          genre: ''
        }
      }
    },
    methods: {
      createBook: function () {
        if (!this.book.title) return;
        axios.post('/api/books', { book: this.book }).then((res) => {
          this.$router.push({ path: '/' });
        }, (error) => {
          console.log(error);
        });
      }
    }
  }
</script>

<style scoped></style>
