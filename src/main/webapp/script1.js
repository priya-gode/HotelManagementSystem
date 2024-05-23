// Get chatbot elements
const chatbot = document.getElementById('chatbot');
const conversation = document.getElementById('conversation');
const inputForm = document.getElementById('input-form');
const inputField = document.getElementById('input-field');

// Add event listener to input form
inputForm.addEventListener('submit', function(event) {
  // Prevent form submission
  event.preventDefault();

  // Get user input
  const input = inputField.value;

  // Clear input field
  inputField.value = '';
  const currentTime = new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });

  // Add user input to conversation
  let message = document.createElement('div');
  message.classList.add('chatbot-message', 'user-message');
  message.innerHTML = `<p class="chatbot-text" sentTime="${currentTime}">${input}</p>`;
  conversation.appendChild(message);

  // Generate chatbot response based on user input
  const response = generateResponse(input);

  // Add chatbot response to conversation
  message = document.createElement('div');
  message.classList.add('chatbot-message', 'chatbot');
  message.innerHTML = `<p class="chatbot-text" sentTime="${currentTime}">${response}</p>`;
  conversation.appendChild(message);
  message.scrollIntoView({ behavior: 'smooth' });
});

// Generate chatbot response function
function generateResponse(input) {
  // Define specific responses based on user input
  const responses = {
    'hello': 'Hello! How can I assist you today?',
    'services': 'We offer a variety of services, including room booking, spa, food, and games. How can I help you?',
    'Food':'South Indian,North Indian,Chineese..',
    'Spa':'Facials,Nail Extensions...!!!!',
    'Different Rooms':'Standered,Delux,PentHouse,Suite',
    'How Can i contact':'grandhidhanya@gmail.com',
    'goodbye': 'For More Login To Nivasa..!!!!',
    // Add more conditions and responses as needed
  };

  // Check if there's a specific response for the input, otherwise provide a default response
  return responses[input.toLowerCase()] || "I'm sorry, I didn't understand your question. Please try asking something else.";
}
