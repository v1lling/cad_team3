<template>
  <v-container>
    <v-card>
      <v-card-title> 
        <v-icon>mdi-file</v-icon> 
        {{ item?.title }}       
      </v-card-title>
      <v-card-subtitle> {{ item?.filename }}</v-card-subtitle>
      <v-card-text> {{ getDateFormat(item?.timestamp)}}</v-card-text>
      <v-card-actions>
        <v-img
          max-height="100"
          max-width="100"
          :src="item?.file"
        ></v-img>
        <v-spacer></v-spacer>
        <v-btn flat icon color="blue" class="ma-2" @click="downloadFile">
          <v-icon right dark>
            mdi-cloud-download
          </v-icon>
        </v-btn>
      </v-card-actions>
      
    </v-card>
  </v-container>
  
</template>

<script lang="ts">
import { defineComponent } from "vue";
import axios from "axios";
import FileDownload  from 'js-file-download';
import moment from 'moment'

export default defineComponent({
  name: "FileItem",
  props: {
    item: Object,
  },
  data() {
    return {};
  },
  methods: {
    getDetail() {
      console.log("getting details");
    },
    downloadFile() {
      let url = this.item!.file;
      window.open(url, '_blank');
    },
    getDateFormat(value: String) {
      return moment(String(value)).format('DD.MM.YYYY hh:mm') + 'Uhr';
    }
  },
});
</script>

<style scoped>

</style>
