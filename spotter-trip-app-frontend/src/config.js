const API_URL = process.env.NEXT_PUBLIC_API_URL || 
  (process.env.NODE_ENV === 'production'
    ? 'https://your-django-backend-url.com/api'  // Replace with your actual backend URL
    : 'http://localhost:8000/api');

export default API_URL;