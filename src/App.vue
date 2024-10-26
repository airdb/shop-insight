<template>
  <div id="app">
    <div class="app-container">
      <aside class="sidebar">
        <div class="sidebar-content">
          <div class="logo-title">
            <img src="@/assets/logo.png" alt="APPLORE Logo" class="logo">
            <h1 class="title">APPLORE</h1>
          </div>
          <div class="search-bar">
            <input type="text" placeholder="Search app icons..." />
          </div>
          <nav class="categories">
            <ul>
              <li><a href="#" class="active"><span class="icon">●</span>All</a></li>
              <li><a href="#"><span class="icon">◆</span>Social</a></li>
              <li><a href="#"><span class="icon">■</span>Productivity</a></li>
              <li><a href="#"><span class="icon">▲</span>Entertainment</a></li>
              <li><a href="#"><span class="icon">◯</span>Education</a></li>
              <li><a href="#"><span class="icon">★</span>Health & Fitness</a></li>
              <li><a href="#"><span class="icon">▼</span>Finance</a></li>
              <li><a href="#"><span class="icon">◀</span>Food & Drink</a></li>
              <li><a href="#"><span class="icon">▶</span>Shopping</a></li>
              <li><a href="#"><span class="icon">♥</span>Travel</a></li>
            </ul>
          </nav>
        </div>
      </aside>
      <div class="content-wrapper">
        <main class="main-content">
          <h2>Discover and Explore App Icons</h2>
          <p>Browse, analyze, and gain insights into app icon designs</p>
          <div class="filter-buttons">
            <button class="filter-btn">Category</button>
            <button class="filter-btn">Color</button>
          </div>
          <!-- 主内容区域的其他内容 -->
        </main>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
body {
  margin: 0;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  background-color: #f0f0f0;
}

#app {
  min-height: 100vh;
  padding: 10px; /* 减小顶部和底部的间距 */
  box-sizing: border-box;
}

.app-container {
  display: flex;
  height: calc(100vh - 20px); /* 调整高度以适应新的padding */
  background-color: #ffffff;
  border-radius: 15px;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0,0,0,0.1);
}

.sidebar {
  width: 280px;
  background-color: #f8f8f8;
  border-radius: 15px 0 0 15px;
  position: relative;
  overflow: hidden;
}

.sidebar-content {
  height: 100%;
  padding: 15px; /* 减小内部padding */
  display: flex;
  flex-direction: column;
}

.logo-title {
  display: flex;
  align-items: center;
  margin-bottom: 15px; /* 减小底部margin */
}

.logo {
  width: 40px;
  height: 40px;
  margin-right: 10px;
}

.title {
  font-size: 24px;
  font-weight: bold;
}

.search-bar {
  margin-bottom: 20px;
}

.search-bar input {
  width: 100%;
  padding: 10px;
  border: 1px solid #e0e0e0;
  border-radius: 4px;
  font-size: 14px;
}

.categories {
  flex-grow: 1;
  overflow-y: auto;
}

.categories ul {
  list-style-type: none;
  padding: 0;
}

.categories li {
  margin-bottom: 5px;
}

.categories a {
  display: flex;
  align-items: center;
  padding: 8px 10px;
  color: #333;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.2s ease;
  font-size: 14px;
}

.categories a:hover, .categories a.active {
  background-color: #e0e0e0;
}

.categories .icon {
  margin-right: 10px;
  font-size: 16px;
  width: 20px;
  text-align: center;
}

.content-wrapper {
  flex-grow: 1;
  display: flex;
  padding-left: 20px; /* 添加左侧内边距 */
  background-color: #ffffff;
}

.main-content {
  flex-grow: 1;
  padding: 15px; /* 减小内部padding */
  overflow-y: auto;
  background-color: #ffffff;
  border-radius: 15px 0 0 15px; /* 添加左侧圆角 */
  box-shadow: -5px 0 15px rgba(0,0,0,0.05); /* 添加左侧阴影 */
}

.filter-buttons {
  margin-top: 20px;
}

.filter-btn {
  padding: 10px 20px;
  margin-right: 10px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

/* 其他主内容区域的样式 */
</style>
