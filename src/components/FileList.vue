<style>
.center {
  padding-top: 2rem;
  margin: auto;
  width: 50%;
}
</style>
<template>
  <div class="center">
    <v-text-field v-model="searchTerm" placeholder="Search" @input="searchFiles"/>
    <div v-for="item in fileList" :key="item.title">
      <FileItem :item="item" />
    </div>
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
      searchTerm: ""
    };
  },
  mounted() {
    axios
      .get(`${import.meta.env.VITE_BACKEND_HOST}/files/`)
      .then((response) => {
        this.fileList = response.data;
        console.log(this.fileList);
      })
      .catch((e) => {
        console.log("There is an error " + e);
      });
  },
  methods: {
    searchFiles() {
      axios
      .get(`${import.meta.env.VITE_BACKEND_HOST}/files/?search=${this.searchTerm}`)
      .then((response) => {
        this.fileList = response.data;
      })
      .catch((e) => {
        console.log("There is an error " + e);
      });
    }
  }
  });
</script>
