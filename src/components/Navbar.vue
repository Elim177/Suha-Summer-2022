<template>
  <nav>
    <Dropdown title="Level" :items="levels" />
  </nav>
</template>

<script>
import Dropdown from './Dropdown.vue';
export default {
  name: 'Navbar',
  components: {
    Dropdown
  },
  data () {
    return {
      levels: [
        {
          title: 'Beginner',
          link: 'PrimarySymbolBeginner'
        },
        {
          title: 'Original',
          link: 'PrimarySymbol'
        }
      ]
    }
  }
}
</script>

<style>
nav {
  display: flex;
  align-items: center;
  justify-content: left;
}
nav .menu-item {
  color: #71bfed;
  background-color: rgb(79, 76, 76);
  padding: 10px 20px;
  position: relative;
  text-align: center;
  border-bottom: 3px solid transparent;
  display: flex;
  transition: 0.4s;
}
nav .menu-item.active,
nav .menu-item:hover {
  background-color: rgb(39, 38, 38);
  border-bottom-color: #71bfed;
}
nav .menu-item a {
  color: inherit;
  text-decoration: none;
}
</style>