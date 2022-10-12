<template>
  <div v-for="item in fileList" :key="item.title">
    <FileItem :item="item" />
  </div>
</template>

<script lang="ts">
import axios from "axios";

// Components

import { defineComponent } from "vue";
import FileItem from "../components/FileItem.vue";

export default defineComponent({
  name: "FileList",
  components: {
    FileItem,
  },
  data() {
    return {
      fileList: null,
    };
  },
  mounted() {
    axios
      .get("http://localhost:8000/files/")
      .then((response) => {
        this.fileList = response.data;
        console.log(this.fileList);
      })
      .catch((e) => {
        console.log("There is an error " + e);
      });
  },
});
</script>
