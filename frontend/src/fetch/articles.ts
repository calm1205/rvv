export type Articles = { name?: string; age?: number; job?: string }
type FetchArticles = () => Promise<Articles>

export const fetchArticles: FetchArticles = async () => {
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
