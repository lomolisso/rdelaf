// Main JavaScript file
document.addEventListener('DOMContentLoaded', function() {
    // Cursor functionality (previously in components/cursor.js)
    // Add a slight delay to ensure all content is rendered
    setTimeout(function() {
        const aboutContent = document.querySelector('.about-content');
        if (aboutContent) {
            const lastParagraph = aboutContent.querySelector('p:last-child');
            if (lastParagraph) {
                const cursor = document.createElement('span');
                cursor.className = 'terminal-cursor';
                lastParagraph.appendChild(cursor);
            }
        }
    }, 100); // Small delay to ensure DOM is ready

    // Mobile sidebar functionality
    const menuIcon = document.querySelector('.menu-icon');
    const sidebar = document.getElementById('sidebar');
    const sidebarClose = document.querySelector('.sidebar-close');
    const body = document.body;
  
    // Create overlay element
    const overlay = document.createElement('div');
    overlay.className = 'sidebar-overlay';
    body.appendChild(overlay);
  
    // Open sidebar
    menuIcon.addEventListener('click', function() {
        sidebar.classList.add('open');
        overlay.classList.add('active');
        body.style.overflow = 'hidden'; // Prevent scrolling when sidebar is open
    });
  
    // Close sidebar when clicking the close button
    sidebarClose.addEventListener('click', function() {
        closeSidebar();
    });
  
    // Close sidebar when clicking the overlay
    overlay.addEventListener('click', function() {
        closeSidebar();
    });
  
    // Function to close sidebar
    function closeSidebar() {
        sidebar.classList.remove('open');
        overlay.classList.remove('active');
        body.style.overflow = '';
    }
  
    // Close sidebar on resize if window becomes larger than mobile size
    window.addEventListener('resize', function() {
        if (window.innerWidth > 768 && sidebar.classList.contains('open')) {
            closeSidebar();
        }
    });
    
    // Code block copy functionality
    setupCodeBlocks();
});

// Function to set up code blocks with language labels and copy buttons
function setupCodeBlocks() {
    document.querySelectorAll('pre').forEach(pre => {
        // Extract language from class (if exists)
        const codeElement = pre.querySelector('code');
        let language = 'code';
        
        if (codeElement && codeElement.className) {
            const languageMatch = codeElement.className.match(/language-(\w+)/);
            if (languageMatch) {
                language = languageMatch[1];
            }
        }
        
        // Set data-language attribute for CSS content
        pre.setAttribute('data-language', language);
        
        // Create copy button
        const copyButton = document.createElement('button');
        copyButton.className = 'code-copy-button';
        copyButton.innerHTML = `
            <svg class="copy-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <rect x="9" y="9" width="13" height="13" rx="2" ry="2"></rect>
                <path d="M5 15H4a2 2 0 0 1-2-2V4a2 2 0 0 1 2-2h9a2 2 0 0 1 2 2v1"></path>
            </svg>
            <svg class="copied-icon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <polyline points="20 6 9 17 4 12"></polyline>
            </svg>
            <span class="button-text">copy</span>
        `;
        
        // Add click event to copy code
        copyButton.addEventListener('click', function() {
            const code = codeElement ? codeElement.textContent : pre.textContent;
            navigator.clipboard.writeText(code).then(() => {
                // Update button state
                copyButton.classList.add('copied');
                const buttonText = copyButton.querySelector('.button-text');
                if (buttonText) {
                    buttonText.textContent = 'copied';
                }
                
                // Reset after 2 seconds
                setTimeout(() => {
                    copyButton.classList.remove('copied');
                    if (buttonText) {
                        buttonText.textContent = 'copy';
                    }
                }, 2000);
            }).catch(err => {
                console.error('Failed to copy: ', err);
            });
        });
        
        // Add button to pre element
        pre.appendChild(copyButton);
    });
} 