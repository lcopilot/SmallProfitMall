<template>
  <div class="header-wraper">
    <header class="blog-header">
      <h1 class="header-title">
        <router-link to="/">SmallProfit</router-link>
      </h1>
      <nav class="header-nav">
        <ul style="margin-left: 3rem">
          <li v-if="this.$route.path!='/login'">
            <router-link to="/login">登录</router-link>
          </li>
        </ul>
      </nav>
    </header>
  </div>
</template>
<script>
  export default {
    name: "Header",
    data() {
      return {

      };
    },
    methods: {

    },
    created() {

    }
  };
</script>
<style scoped>
  .header-wraper {
    position: fixed;
    top: 0;
    display: flex;
    width: 100%;
    height: 50px;
    line-height: 50px;
    border-bottom: 1px solid #eee;
    z-index: 999;
    background-color: #fff;
  }

  .blog-header {
    display: flex;
    width: 960px;
    margin: 0 auto;
    justify-content: space-between;
    padding: 0 15px;
  }

  .header-title {
    font-size: 20px;
    font-weight: 700;
  }

  .header-nav {
    display: -webkit-box;
    margin-right: 13rem;
  }

  .blog-header .header-nav ul {
    list-style: none;
  }

  .blog-header .header-nav li {
    display: inline-block;
  }

  .blog-header .header-nav li a {
    padding: 0 15px;
  }
</style>
