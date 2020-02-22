

<template>
  <Verify @success="alert('success')" @error="alert('error')" :type="3"></Verify>
</template>


<script>
  import Verify from 'vue2-verify'

  export default {
    name: 'app',
    methods: {
      alert(text) {
        console.log(text)
      }
    },
    components: {
      Verify
    }
  }
</script>
