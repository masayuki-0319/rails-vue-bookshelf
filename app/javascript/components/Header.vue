<template>
   <div>
     <nav>
       <div class="nav-wrapper">
         <router-link to="/" class="brand-logo">Bookshelf</router-link>
         <ul id="nav-mobile" class="right">
           <li><router-link to="/create">本の登録</router-link></li>
           <li><router-link to="/signup" v-if="!signedIn">Sign up</router-link></li>
           <li><router-link to="/signin" v-if="!signedIn">Sign in</router-link></li>
           <li><a href="/" v-if="signedIn" @click="signOut">Sign out</a></li>
         </ul>
       </div>
     </nav>
   </div>
</template>

<script>
  import { mapState } from 'vuex'

  export default {
    name: 'Header',
    computed: mapState([
      'signedIn'
    ]),
    mounted: function() {
      this.$store.dispatch('doFetchSignedIn')
    },
    methods: {
      setError(error, text) {
        this.error = (error.response && error.response.data && error.response.data.error) || text
      },
      signOut() {
        this.$http.secured.delete(`/api/signin`)
          .then(response => {
            delete localStorage.csrf
            delete localStorage.signedIn
          })
          .catch(error => this.setError(error, 'Cannot sign out'))
      }
    }
  }
</script>
