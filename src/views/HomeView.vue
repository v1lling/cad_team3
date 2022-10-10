<template>
  <main>
    <v-list four-line>
      <template v-for="x in [0, 1, 2]">
        <FileItem />
      </template>
    </v-list>
  </main>
</template>

<script lang="ts">
import { defineComponent } from "vue";

// Components
import FileItem from "../components/FileItem.vue";

export default defineComponent({
  name: "HomeView",

  components: {
    FileItem,
  },
});
</script>
