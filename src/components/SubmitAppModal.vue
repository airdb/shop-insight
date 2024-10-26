<template>
  <div class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
    <div class="bg-white rounded-3xl p-8 max-w-md w-full mx-4">
      <h2 class="text-2xl font-bold mb-2">Submit your favorite iOS APP</h2>
      <p class="mb-6 text-gray-600 text-sm">Enter the app's URL or ID. We'll review and feature it on our page.</p>
      
      <form @submit.prevent="submitApp">
        <div class="mb-4">
          <label for="appUrl" class="block mb-2 text-sm font-semibold">App URL</label>
          <input 
            type="text" 
            id="appUrl" 
            v-model="appUrl" 
            placeholder="https://apps.apple.com/..."
            class="w-full p-3 border rounded-xl bg-gray-100 text-sm"
            required
          >
        </div>
        
        <div class="mb-4">
          <label for="appId" class="block mb-2 text-sm font-semibold">App ID</label>
          <input 
            type="text" 
            id="appId" 
            v-model="appId" 
            placeholder="e.g., 1234567890"
            class="w-full p-3 border rounded-xl bg-gray-100 text-sm"
            required
          >
        </div>
        
        <div class="mb-6">
          <label for="twitterUsername" class="block mb-2 text-sm font-semibold">Twitter Username (Optional)</label>
          <input 
            type="text" 
            id="twitterUsername" 
            v-model="twitterUsername" 
            placeholder="@username"
            class="w-full p-3 border rounded-xl bg-gray-100 text-sm"
          >
          <p class="text-xs text-gray-500 mt-1">This will help us to tag you</p>
        </div>
        
        <div class="flex justify-end space-x-4">
          <button 
            type="button" 
            @click="$emit('close')" 
            class="px-4 py-2 bg-gray-200 rounded-md hover:bg-gray-300"
          >
            Cancel
          </button>
          <button 
            type="submit" 
            class="px-4 py-2 bg-black text-white rounded-md hover:bg-gray-800 flex items-center"
          >
            <span class="mr-2">Submit</span>
            <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
              <path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd" />
            </svg>
          </button>
        </div>
      </form>
    </div>
  </div>
</template>

<script>
export default {
  name: 'SubmitAppModal',
  data() {
    return {
      appUrl: '',
      appId: '',
      twitterUsername: ''
    }
  },
  methods: {
    submitApp() {
      // 这里处理表单提交逻辑
      console.log('Submitting app:', { url: this.appUrl, id: this.appId, twitter: this.twitterUsername });
      // 提交后可以关闭模态框
      this.$emit('close');
    }
  }
}
</script>
