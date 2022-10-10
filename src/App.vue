<template>
  <v-app>
    <v-app-bar dense dark app fixed>
      <v-toolbar-title class="v-title">Team 3</v-toolbar-title>

      <v-toolbar-items>
        <v-btn to="/"> Home </v-btn>
        <v-btn to="/upload"> Upload </v-btn>
        <v-btn to="/about"> About </v-btn>
      </v-toolbar-items>
    </v-app-bar>
    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "App",

  data() {
    return {
      //
    };
  },
});
</script>
