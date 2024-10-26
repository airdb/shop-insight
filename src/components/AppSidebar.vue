<template>
  <aside class="bg-white border-r border-gray-200 h-full overflow-y-auto">
    <div class="p-4">
      <div class="flex items-center mb-6">
        <img src="@/assets/logo.png" alt="APPLORE Logo" class="w-8 h-8 mr-2">
        <h1 class="text-xl font-bold">APPLORE</h1>
      </div>
      <nav>
        <ul class="space-y-2">
          <li v-for="category in categories" :key="category.id">
            <a href="#" class="flex items-center space-x-2 p-2 rounded hover:bg-gray-100">
              <span class="text-lg">{{ category.icon }}</span>
              <span>{{ category.name }}</span>
              <span class="ml-auto text-sm text-gray-500">{{ category.count }}</span>
            </a>
          </li>
        </ul>
      </nav>
    </div>
  </aside>
</template>

<script>
export default {
  name: 'AppSidebar',
  data() {
    const categories = [
      { id: 2, name: 'Social Media', count: 150, icon: '🌐' },
      { id: 3, name: 'Productivity', count: 120, icon: '📈' },
      { id: 4, name: 'Entertainment', count: 200, icon: '🎥' },
      { id: 5, name: 'Education', count: 80, icon: '📚' },
      { id: 6, name: 'Health & Fitness', count: 100, icon: '🏋️‍♀️' },
      { id: 7, name: 'Finance', count: 70, icon: '💸' },
      { id: 8, name: 'Travel', count: 90, icon: '🗺️' },
      { id: 9, name: 'Food & Drink', count: 110, icon: '🍴' },
      { id: 10, name: 'Shopping', count: 130, icon: '🛍️' },
      { id: 11, name: 'News', count: 61, icon: '📰' },
    ];

    const totalCount = categories.reduce((sum, category) => sum + category.count, 0);

    return {
      categories: [
        { id: 1, name: 'All', count: totalCount, icon: '🔍' },
        ...categories
      ]
    }
  }
}
</script>

<style scoped>
.sidebar {
  width: 280px;
  height: 100%;
  overflow-y: auto;
  background-color: #f8f9fa;
  padding: 20px;
  box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
}

.sidebar-title {
  font-size: 1.8rem;
  margin-bottom: 20px;
  color: #333;
  text-align: center;
  font-weight: 600;
}

.search-container {
  margin-bottom: 20px;
}

.search-input {
  width: 100%;
  padding: 12px 20px;
  border: 2px solid #e0e0e0;
  border-radius: 25px;
  font-size: 14px;
  transition: all 0.3s ease;
}

.category-header {
  font-size: 1.2rem;
  margin-bottom: 10px;
  color: #333;
}

.category-list {
  list-style-type: none;
  padding: 0;
}

.category-item {
  margin-bottom: 10px;
}

.category-item a {
  display: flex;
  align-items: center;
  padding: 8px 12px;
  color: #555;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.3s ease;
}

.category-icon {
  width: 24px;
  height: 24px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-right: 10px;
  font-size: 14px;
}

.category-name {
  flex-grow: 1;
}

.category-count {
  font-size: 0.9em;
  color: #888;
}

.action-buttons {
  display: flex;
  justify-content: space-between;
  margin-bottom: 20px;
}

.action-button {
  padding: 10px 20px;
  border: none;
  border-radius: 20px;
  font-size: 14px;
  font-weight: bold;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.action-button.about {
  background-color: #3498db;
}

.action-button.submit {
  background-color: #2ecc71;
}

.action-button:hover {
  opacity: 0.9;
}
</style>
