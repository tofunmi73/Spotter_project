const API_URL = process.env.NEXT_PUBLIC_API_URL || 
  (process.env.NODE_ENV === 'production'
    ? 'https://web-production-e88b3.up.railway.app'  // actual backend URL
    : 'http://localhost:8000/api');

export default API_URL;