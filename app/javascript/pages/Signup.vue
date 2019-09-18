<template>
  <div class="container">
    <h1 class="#f3e5f5 purple lighten-5 center">Sign UP</h1>
    <form class="col" @submit.prevent="signup">
      <div class="text-red" v-if="error">{{ error }}</div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Name" type="text" class="validate" v-model="name" required="required"></br>
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Email" type="text" class="validate" v-model="email" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Password" type="text" class="validate" v-model="password" required="required">
        </div>
      </div>
      <div class="row">
        <div class="input-field">
          <input placeholder="Password_confirmation" type="text" class="validate" v-model="password_confirmation" required="required">
        </div>
      </div>

      <button type="submit" class="btn waves-effect waves-light">Sign Up</button>
      <div><router-link to="/signin" class="btn link-grey">Sign In</router-link></div>
    </form>
  </div>
</template>

<script>
  export default {
    name: 'Signup',
    data() {
      return {
        name: '',
        email: '',
        password: '',
        password_confirmation: '',
        error: ''
      }
    },
    created() {
      this.checkSignedIn()
    },
    updated() {
      this.checkSignedIn()
    },
    methods: {
      signup() {
        this.$http.plain.post('/api/signup', { name: this.name, email: this.email, password: this.password, password_confirmation: this.password_confirmation })
          .then(response => this.signupSuccessful(response))
          .catch(error => this.signupFailed(error))
      },
      signupSuccessful(response) {
        if (!response.data.csrf) {
          this.signupFailed(response)
          return
        }
        localStorage.csrf = response.data.csrf
        localStorage.signedIn = true
        this.$store.dispatch('doFetchSignedIn')
        this.error = ''
        this.$router.replace('/')
      },
      signupFailed(error) {
        this.error = (error.response && error.response.data && error.response.data.error) || 'Something went wrong'
        delete localStorage.csrf
        delete localStorage.signedIn
      },
      checkSignedIn() {
        if (localStorage.signedIn) {
          this.$router.replace('/')
        }
      }
    }
  }
</script>
