<template>
  <v-container>
    <v-card>
    <v-card-title> <v-icon>mdi-file</v-icon> {{ item.title }} {{ item.file }}</v-card-title>
    <v-card-subtitle> {{ item.timestamp }}</v-card-subtitle>
    </v-card>
  </v-container>
  
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
