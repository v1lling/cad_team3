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
        show-size
        label="Choose File" 
        @change="showUpload" ref="file"></v-file-input>
    <v-btn v-if="showButton" @click="upload">Upload</v-btn>
  </div>
</template>

<script>
  import axios from "axios";

  export default {
    data() {
      return{
        file: '',
        date: Date.now(),
        showButton : false
      }
    },
    methods: {
      showUpload() {
        this.showButton = true
        this.file = this.$refs.file.files[0];
      },
      async upload() {
        console.log("upload");
        let formData = new FormData();
        formData.append('file', this.file);

        await axios.post( '/single-file',     /////// INSERT API URL
          formData,
          {
            headers: {
                'Content-Type': 'multipart/form-data'
            }
          }
          ).then(function(){
            console.log('SUCCESS!!');
          })
          .catch(function(){
            console.log('FAILURE!!');
          });
      }
    }
  }
</script>
