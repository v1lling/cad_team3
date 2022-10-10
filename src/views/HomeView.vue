<template>
  <main>
    <FileList/>
  </main>
</template>

<script lang="ts">
import { defineComponent } from "vue";

// Components
import FileItem from "../components/FileItem.vue";
import FileList from "../components/FileList.vue";

export default defineComponent({
  name: "HomeView",

  components: {
    FileItem,
    FileList
  },
});
</script>
