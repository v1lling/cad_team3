<template>
  <v-list-item class="mix"> File </v-list-item>
</template>

<script lang="ts">
export default {
  name: "FileItem",
  props: {
    item: {},
  },
  data() {
    return {};
  },
  methods: {
    getDetail() {
      console.log("getting details");
    },
  },
};
</script>

<style scoped></style>
