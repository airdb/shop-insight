<template>
  <div class="icon-grid">
    <div v-for="icon in icons" :key="icon.id" class="icon-item">
      <div class="icon-wrapper">
        <img :src="icon.url" :alt="icon.name" class="icon-image">
      </div>
      <div class="icon-name">{{ icon.name }}</div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'IconGrid',
  data() {
    return {
      icons: [
        { id: 1, name: 'Facebook', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968764.png' },
        { id: 2, name: 'Instagram', url: 'https://cdn-icons-png.flaticon.com/128/3955/3955024.png' },
        { id: 3, name: 'Twitter', url: 'https://cdn-icons-png.flaticon.com/128/3256/3256013.png' },
        { id: 4, name: 'LinkedIn', url: 'https://cdn-icons-png.flaticon.com/128/3536/3536505.png' },
        { id: 5, name: 'TikTok', url: 'https://cdn-icons-png.flaticon.com/128/3046/3046121.png' },
        { id: 6, name: 'WhatsApp', url: 'https://cdn-icons-png.flaticon.com/128/3536/3536445.png' },
        { id: 7, name: 'YouTube', url: 'https://cdn-icons-png.flaticon.com/128/1384/1384060.png' },
        { id: 8, name: 'Snapchat', url: 'https://cdn-icons-png.flaticon.com/128/1409/1409941.png' },
        { id: 9, name: 'Pinterest', url: 'https://cdn-icons-png.flaticon.com/128/145/145808.png' },
        { id: 10, name: 'Spotify', url: 'https://cdn-icons-png.flaticon.com/128/174/174872.png' },
        { id: 11, name: 'Netflix', url: 'https://cdn-icons-png.flaticon.com/128/2504/2504929.png' },
        { id: 12, name: 'Amazon', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968217.png' },
        { id: 13, name: 'Uber', url: 'https://cdn-icons-png.flaticon.com/128/5969/5969103.png' },
        { id: 14, name: 'Airbnb', url: 'https://cdn-icons-png.flaticon.com/128/2111/2111320.png' },
        { id: 15, name: 'Dropbox', url: 'https://cdn-icons-png.flaticon.com/128/174/174844.png' },
        { id: 16, name: 'Slack', url: 'https://cdn-icons-png.flaticon.com/128/2111/2111615.png' },
        { id: 17, name: 'Zoom', url: 'https://cdn-icons-png.flaticon.com/128/4401/4401470.png' },
        { id: 18, name: 'Twitch', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968819.png' },
        { id: 19, name: 'Reddit', url: 'https://cdn-icons-png.flaticon.com/128/1384/1384019.png' },
        { id: 20, name: 'Discord', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968756.png' },
        { id: 21, name: 'Skype', url: 'https://cdn-icons-png.flaticon.com/128/174/174869.png' },
        { id: 22, name: 'Telegram', url: 'https://cdn-icons-png.flaticon.com/128/2111/2111646.png' },
        { id: 23, name: 'PayPal', url: 'https://cdn-icons-png.flaticon.com/128/174/174861.png' },
        { id: 24, name: 'Google Drive', url: 'https://cdn-icons-png.flaticon.com/128/2965/2965327.png' },
        { id: 25, name: 'Microsoft Teams', url: 'https://cdn-icons-png.flaticon.com/128/3670/3670246.png' },
        { id: 26, name: 'Trello', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968812.png' },
        { id: 27, name: 'Evernote', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968743.png' },
        { id: 28, name: 'Medium', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968906.png' },
        { id: 29, name: 'Dribbble', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968735.png' },
        { id: 30, name: 'Behance', url: 'https://cdn-icons-png.flaticon.com/128/5968/5968671.png' },
      ]
    }
  }
}
</script>

<style scoped>
.icon-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, 120px);
  gap: 16px;
  justify-content: center;
  padding: 16px;
}

.icon-item {
  width: 120px;
  height: 144px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #f0f0f0;
  border-radius: 12px;
  padding: 12px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.icon-wrapper {
  width: 86px;
  height: 86px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 8px;
  background-color: white;
  border-radius: 18px;
  overflow: hidden;
}

.icon-image {
  width: 86px;
  height: 86px;
  object-fit: cover;
}

.icon-name {
  font-size: 12px;
  text-align: center;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  width: 100%;
}
</style>
