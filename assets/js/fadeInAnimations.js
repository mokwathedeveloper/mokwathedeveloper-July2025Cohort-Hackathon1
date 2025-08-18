document.addEventListener('DOMContentLoaded', () => {
  const sections = document.querySelectorAll('section');

  const fadeInOnScroll = () => {
    sections.forEach(section => {
      const sectionTop = section.getBoundingClientRect().top;
      const screenHeight = window.innerHeight;

      if (sectionTop < screenHeight * 0.8) { // Adjust 0.8 to control when animation triggers
        section.classList.add('fade-in-visible');
      } else {
        section.classList.remove('fade-in-visible');
      }
    });
  };

  window.addEventListener('scroll', fadeInOnScroll);
  fadeInOnScroll(); // Run on load in case elements are already in view
});
