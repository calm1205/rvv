<script setup lang="ts">
import { onMounted, ref } from "vue"

type ResponseData = { name?: string; age?: number; job?: string }
type FetchData = () => Promise<ResponseData>

const fetchData: FetchData = async () => {
  try {
    const response = await fetch("http://localhost:3000/articles")
    if (!response.ok) throw new Error("Network response was not ok.")

    const data = await response.json()
    console.log(data)
    return data
  } catch (error) {
    console.error("fetch error", error)
  }
}

const response = ref<ResponseData>({})

onMounted(async () => {
  response.value = await fetchData()
})
</script>

<template>
  <p>Hi.</p>
  <p>My name is {{ response.name }}.</p>
  <p>I'm {{ response.age }} years old.</p>
  <p>My job is {{ response.job }}.</p>
</template>

<style scoped></style>
