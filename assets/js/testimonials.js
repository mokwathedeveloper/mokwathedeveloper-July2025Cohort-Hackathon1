document.addEventListener('DOMContentLoaded', () => {
  const carousel = document.querySelector('.testimonial-carousel');
  const slides = carousel.querySelector('.carousel-slides');
  const dots = carousel.querySelector('.carousel-dots');
  let currentIndex = 0;

  // Create dots
  for (let i = 0; i < slides.children.length; i++) {
    const dot = document.createElement('button');
    dot.setAttribute('aria-label', `View Testimonial ${i + 1}`);
    dots.appendChild(dot);
  }

  const updateCarousel = () => {
    slides.style.transform = `translateX(-${currentIndex * 100}%)`;
    const allDots = dots.querySelectorAll('button');
    allDots.forEach((dot, index) => {
      if (index === currentIndex) {
        dot.classList.add('active');
      } else {
        dot.classList.remove('active');
      }
    });
  };

  dots.addEventListener('click', (e) => {
    if (e.target.tagName === 'BUTTON') {
      const allDots = Array.from(dots.querySelectorAll('button'));
      currentIndex = allDots.indexOf(e.target);
      updateCarousel();
    }
  });

  updateCarousel();
});
