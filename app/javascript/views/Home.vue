<template>
  <section id="home">
    <h1>{{ title }}</h1>
    <a class="btn btn-primary" href="#" role="button">Link</a>
<button class="btn btn-primary" type="submit">Button</button>
<input class="btn btn-primary" type="button" value="Input">
<input class="btn btn-primary" type="submit" value="Submit">
<input class="btn btn-primary" type="reset" value="Reset">
  </section>
</template>

<script>
export default {
  data() {
    return {
      title: "Homeです"
    };
  }
};
</script>

<style lang="scss" scoped>

</style>