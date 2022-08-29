<template>
  <p>
    <router-link class="rlink" to="/PrimarySymbol">Primary Symbols</router-link>
    |
    <router-link class="rlink" to="/tf">tf</router-link>
    |
    <router-link class="rlink" to="/">About</router-link>
  </p>
  <div id="application">
    <Navbar />
  </div>

  <router-view></router-view>
</template>

<script>
import Navbar from './components/Navbar.vue';
export default {
  name: 'application',
  components: {
    Navbar
  },
  data() {
  return {
    contentType: [],
    }
  },
};
</script>


<style lang="sass">
@import "css/colors"
@import "css/global"

#app
  font-family: Avenir, Helvetica, Arial, sans-serif
  -webkit-font-smoothing: antialiased
  -moz-osx-font-smoothing: grayscale
  text-align: center
  color: #2c3e50

  .rlink
    color: orange
    text-decoration: none

  max-width: 800px
  margin: auto
</style>

<style>
*{
  
  padding: 0;
  box-sizing: border-box;
}

body{
  font-family: 'montserrat', sans-serif;
}

header{
  width: 100vw;
  background-color: #222;
  padding: 15px;

}
</style>

