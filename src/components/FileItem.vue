<template>
  <v-list-item class="mix"> {{ item.title }} {{ item.file }} </v-list-item>
</template>

<script lang="ts">
import { defineComponent } from "vue";
export default defineComponent({
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
});
</script>

<style scoped></style>
