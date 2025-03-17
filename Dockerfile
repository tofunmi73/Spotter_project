FROM python:3.13-slim

WORKDIR /app

# Copy requirements file
COPY spotter_trip_app_backend/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install requests

# Copy project
COPY . .

# Set working directory to the Django app
WORKDIR /app/spotter_trip_app_backend

# Run migrations and start server
CMD python manage.py migrate && \
    python manage.py collectstatic --noinput && \
    gunicorn spotter_trip_app.wsgi:application --bind 0.0.0.0:$PORT