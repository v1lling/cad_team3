<script setup lang="ts">
import '../components/FileItem.vue'
</script>

<template>
  <main>
    <v-list four-line>
      <template v-for="x in [0,1,2]">
        <FileItem/>
      </template>
    </v-list>
  </main>
</template>
