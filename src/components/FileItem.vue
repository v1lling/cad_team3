
    
<template>
<v-list-item  class="mix">
  <v-list-item-content @click="getDetail()">
  <v-list-item-title>
    File
  </v-list-item-title>
  <v-list-item-subtitle>
    22.02.2022 <br>
    Hallo
  </v-list-item-subtitle>
</v-list-item-content>

</v-list-item>
</template>
    
<script>
  export default {
    name: 'FileItem',
    props: {
      item: {},
    },
    data() {
      return {
       item: {} 
      }
    },
    methods: {
      getDetail() {
        console.log("getting details");
      },
      
    }
  }
  </script>
        
<style scoped>

</style>