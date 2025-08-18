document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('.contact-section form');
  const nameInput = document.getElementById('name');
  const emailInput = document.getElementById('email');
  const messageInput = document.getElementById('message');

  const showError = (input, message) => {
    const formGroup = input.parentElement;
    formGroup.classList.add('error');
    const small = formGroup.querySelector('small');
    if (!small) {
      const errorText = document.createElement('small');
      errorText.innerText = message;
      formGroup.appendChild(errorText);
    } else {
      small.innerText = message;
    }
  };

  const showSuccess = (input) => {
    const formGroup = input.parentElement;
    formGroup.classList.remove('error');
    const small = formGroup.querySelector('small');
    if (small) {
      small.remove();
    }
  };

  const checkEmail = (input) => {
    const re = /^(([^<>()[\\]\\.,;:\s@\"]+(\.[^<>()[\\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (re.test(input.value.trim())) {
      showSuccess(input);
    } else {
      showError(input, 'Email is not valid');
    }
  };

  const checkRequired = (inputArr) => {
    let isValid = true;
    inputArr.forEach((input) => {
      if (input.value.trim() === '') {
        showError(input, `${getFieldName(input)} is required`);
        isValid = false;
      } else {
        showSuccess(input);
      }
    });
    return isValid;
  };

  const getFieldName = (input) => {
    return input.id.charAt(0).toUpperCase() + input.id.slice(1);
  };

  form.addEventListener('submit', (e) => {
    e.preventDefault();

    if (checkRequired([nameInput, emailInput, messageInput])) {
      checkEmail(emailInput);
      // If all validations pass, you can submit the form here
      // For now, we'll just log a success message
      if (!document.querySelector('.form-group.error')) {
        alert('Form submitted successfully!');
        form.reset();
      }
    }
  });
});
