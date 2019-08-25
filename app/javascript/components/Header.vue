<template>
   <div>
     <nav>
       <div class="nav-wrapper">
         <router-link to="/" class="brand-logo">Bookshelf</router-link>
         <ul id="nav-mobile" class="right">
           <li v-if="signedIn()">ログイン中</li>
           <li><router-link to="/create">本の登録</router-link></li>
           <li><router-link to="/signup" v-if="!signedIn()">Sign up</router-link></li>
           <li><router-link to="/signin" v-if="!signedIn()">Sign in</router-link></li>
           <li><a href="#" v-if="signedIn()" @click.prevent="signOut">Sign out</a></li>
         </ul>
       </div>
     </nav>
   </div>
</template>

<script>
  export default {
    name: 'Header',
    created () {
      this.signedIn()
    },
    methods: {
      setError (error, text) {
        this.error = (error.response && error.response.data && error.response.data.error) || text
      },
      signedIn () {
        return localStorage.signedIn
      },
      signOut () {
        this.$http.secured.delete('/signin')
          .then(response => {
            delete localStorage.csrf
            delete localStorage.signedIn
            this.$router.replace('/')
          })
          .catch(error => this.setError(error, 'Cannot sign out'))
      }
    }
  }
</script>
