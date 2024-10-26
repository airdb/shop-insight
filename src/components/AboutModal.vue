<template>
  <div class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
    <div class="bg-white rounded-3xl p-8 max-w-md w-full mx-4 relative">
      <h2 class="text-2xl font-bold mb-2">About APPLORE</h2>
      <button @click="$emit('close')" class="absolute top-4 right-4 text-gray-500 hover:text-gray-700">
        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
        </svg>
      </button>
      
      <p class="mb-4 text-sm text-gray-600">
        APPLORE is a dedicated platform for discovering and exploring app icons. We provide a rich visual
        library of app icons, allowing users to browse, search, and analyze app icon designs across
        various categories and colors.
      </p>
      
      <h3 class="font-bold mb-2 text-sm">Key features include:</h3>
      <ul class="list-disc list-inside mb-4 text-sm text-gray-600">
        <li>Browse app icons by category, color, or release date</li>
        <li>View detailed information for each app</li>
        <li>Analyze color schemes of app icons</li>
        <li>Create and manage custom icon collections</li>
        <li>Powerful search functionality</li>
        <li>Submit new app icons to the database</li>
      </ul>
      
      <p class="mb-6 text-sm text-gray-600">
        Whether you're a designer, developer, or simply interested in app icons, APPLORE offers
        inspiration and insights. Explore the latest design trends, discover unique creations, and let
        APPLORE be your source of design inspiration.
      </p>
      
      <button class="bg-yellow-400 hover:bg-yellow-500 text-black font-bold py-3 px-6 rounded-full flex items-center justify-center w-full text-sm">
        <span class="mr-2">☕</span> Buy me a coffee
      </button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AboutModal',
  emits: ['close']
}
</script>

<style scoped>
/* 如果需要额外的样式，可以在这里添加 */
</style>
