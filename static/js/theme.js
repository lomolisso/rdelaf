// Gruvbox theme switching functionality
document.addEventListener('DOMContentLoaded', () => {
  const themeToggle = document.getElementById('theme-toggle');
  const prefersDarkScheme = window.matchMedia('(prefers-color-scheme: dark)');
  
  // Check for saved theme preference or use the system preference
  const currentTheme = localStorage.getItem('theme') || 
                      (prefersDarkScheme.matches ? 'dark' : 'light');
  
  // Apply the theme on initial load
  if (currentTheme === 'light') {
    document.body.classList.add('light-mode');
    themeToggle.innerHTML = '🌙';
  } else {
    themeToggle.innerHTML = '☀️';
  }
  
  // Toggle theme when button is clicked
  themeToggle.addEventListener('click', () => {
    const isLightMode = document.body.classList.toggle('light-mode');
    const newTheme = isLightMode ? 'light' : 'dark';
    
    // Update button text and save preference
    if (isLightMode) {
      themeToggle.innerHTML = '🌙';
      localStorage.setItem('theme', 'light');
    } else {
      themeToggle.innerHTML = '☀️';
      localStorage.setItem('theme', 'dark');
    }
  });
}); 