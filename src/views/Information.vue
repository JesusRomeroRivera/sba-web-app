<template>
  <section class="Information">  
      {{this.$store.state.informationId}}
  </section>
</template>

<script>

export default {
  name: "Information",
  components: {
  },
  data() {
    return {
      buttonColor: "black",
    };
  },
};
</script>
<style scoped>  
</style>
