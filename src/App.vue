<template>
  <div id="app" class="flex h-screen">
    <!-- Left Sidebar -->
    <AppSidebar class="w-64 flex-shrink-0" />

    <!-- Right Content Area -->
    <div class="flex-grow flex flex-col">
      <!-- Top Navigation -->
      <nav class="bg-white shadow-md p-4">
        <div class="flex justify-between items-center">
          <div class="flex space-x-4">
            <div class="relative">
              <input
                type="text"
                placeholder="Search icons..."
                class="w-64 px-4 py-2 rounded-full border border-gray-300 focus:outline-none focus:ring-2 focus:ring-black focus:border-transparent"
              >
              <button class="absolute right-3 top-1/2 transform -translate-y-1/2">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-400" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                </svg>
              </button>
            </div>
            <button class="px-3 py-2 rounded-md bg-black text-white">Category</button>
            <button class="px-3 py-2 rounded-md bg-white text-black border border-gray-300">Color</button>
            <button class="px-3 py-2 rounded-md bg-white text-black border border-gray-300">Release Date</button>
          </div>
          <div class="flex space-x-4">
            <button @click="openAboutModal" class="px-3 py-2 text-gray-600">About</button>
            <button @click="openSubmitModal" class="px-3 py-2 bg-black text-white rounded-md">Submit</button>
          </div>
        </div>
      </nav>

      <!-- Main Content -->
      <main class="flex-grow overflow-y-auto bg-gray-100">
        <IconGrid />
      </main>
    </div>

    <!-- Modals -->
    <AboutModal v-if="isAboutModalOpen" @close="closeAboutModal" />
    <SubmitAppModal v-if="isSubmitModalOpen" @close="closeSubmitModal" />
  </div>
</template>

<script>
import AppSidebar from '@/components/AppSidebar.vue'
import IconGrid from '@/components/IconGrid.vue'
import AboutModal from '@/components/AboutModal.vue'
import SubmitAppModal from '@/components/SubmitAppModal.vue'

export default {
  name: 'App',
  components: {
    AppSidebar,
    IconGrid,
    AboutModal,
    SubmitAppModal
  },
  data() {
    return {
      isAboutModalOpen: false,
      isSubmitModalOpen: false
    }
  },
  methods: {
    openAboutModal() {
      this.isAboutModalOpen = true
    },
    closeAboutModal() {
      this.isAboutModalOpen = false
    },
    openSubmitModal() {
      this.isSubmitModalOpen = true
    },
    closeSubmitModal() {
      this.isSubmitModalOpen = false
    }
  }
}
</script>

<style>
body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
}

#app {
  min-height: 100vh;
}
</style>
