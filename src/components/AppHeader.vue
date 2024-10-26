<template>
  <header>
    <div class="logo-title">
      <img src="@/assets/logo.png" alt="APPLORE Logo" class="logo">
      <h1 class="applore-title">APPLORE</h1>
    </div>
    <nav>
      <!-- 添加导航项 -->
    </nav>
  </header>
</template>

<script>
export default {
  name: 'AppHeader'
}
</script>

<style scoped>
header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 1rem 2rem;
  background-color: #ffffff;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.logo-title {
  display: flex;
  align-items: center;
}

.logo {
  width: 30px; /* 调整大小以适应你的设计 */
  height: 30px;
  margin-right: 10px;
}

.applore-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #333;
  text-transform: uppercase;
  letter-spacing: 2px;
  margin: 0; /* 移除默认的标题边距 */
}

/* 可以添加一些悬停效果 */
.logo-title:hover .logo {
  transform: rotate(10deg);
}

.logo-title:hover .applore-title {
  color: #4a90e2; /* 或者你喜欢的任何颜色 */
}

nav {
  /* 添加导航样式 */
}
</style>
