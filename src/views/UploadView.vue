<style>
  .center{
    margin: auto;
    width: 50%;
  }
</style>

<template>
  <div id="input-field" class="center">
    <h1>Upload File</h1>
    <v-file-input truncate-length="15" 
        chips
        multiple
        show-size
        label="Choose File" 
        @change="showUpload"></v-file-input>
    <v-btn v-if="showButton" @click="upload">Upload</v-btn>
  </div>
</template>

<script>
  export default {
    data() {
      return{
        showButton : false
      }
    },
    methods: {
      showUpload() {
        this.showButton = true
      },
      upload() {
        console.log("upload")
      }
    }
  }
</script>
