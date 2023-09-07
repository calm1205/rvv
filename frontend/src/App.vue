<script setup lang="ts">
import { Articles, fetchArticles } from "./fetch/articles"
import { onMounted, ref } from "vue"

const response = ref<Articles>({})

onMounted(async () => {
  response.value = await fetchArticles()
})
</script>

<template>
  <p>Hi.</p>
  <p>My name is {{ response.name }}.</p>
  <p>I'm {{ response.age }} years old.</p>
  <p>My job is {{ response.job }}.</p>
</template>

<style scoped></style>
