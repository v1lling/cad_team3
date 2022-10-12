<style>
.center {
  margin: auto;
  width: 50%;
}
</style>

<template>
  <div id="input-field" class="center">
    <h1>Upload File</h1>
    <v-text-field
      prepend-inner-icon="mdi-pencil"
      v-model="title"
      :rules="rules"
      counter
      maxlength="20"
      hint="not more than 20 characters"
      label="Insert title of file"
      ref="title"
    ></v-text-field>
    <v-file-input
      truncate-length="15"
      chips
      show-size
      label="Choose File"
      @change="showUpload"
      ref="file"
    ></v-file-input>
    <v-btn v-if="showButton" @click="upload">Upload</v-btn>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      file: "",
      title: "",
      showButton: false,
    };
  },
  methods: {
    showUpload() {
      this.showButton = true;
      this.file = this.$refs.file.files[0];
      this.title = this.$refs.title.value;
    },
    async upload() {
      console.log("upload");
      let formData = new FormData();
      formData.append("file", this.file);
      formData.append('filename', this.file.name);
      formData.append("title", this.title);
      await axios
        .post(
          "http://localhost:8000/files/upload/", /////// INSERT API URL
          formData,
          {
            headers: {
              "Content-Type": "multipart/form-data",
            },
          }
        )
        .then(function () {
          console.log("SUCCESS!!");
        })
        .catch(function () {
          console.log("FAILURE!!");
        });
    },
  },
};
</script>
