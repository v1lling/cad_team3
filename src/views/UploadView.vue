<template>
  <main>
    <file-upload/>
  </main>
</template>

<script lang="ts">
import { defineComponent } from 'vue';

// Components
import FileUpload from '../components/FileUpload.vue';

export default defineComponent({
  name: 'UploadView',

  components: {
    FileUpload,
  },
});
</script>
