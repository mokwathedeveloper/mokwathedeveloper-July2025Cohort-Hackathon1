document.addEventListener('DOMContentLoaded', () => {
  const scrollToTopBtn = document.createElement('button');
  scrollToTopBtn.innerHTML = '<i class="fa-solid fa-arrow-up"></i>';
  scrollToTopBtn.classList.add('scroll-to-top');
  document.body.appendChild(scrollToTopBtn);

  window.addEventListener('scroll', () => {
    if (window.scrollY > 300) {
      scrollToTopBtn.classList.add('show');
    } else {
      scrollToTopBtn.classList.remove('show');
    }
  });

  scrollToTopBtn.addEventListener('click', () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    });
  });
});
