# Stage 1: Build Stage - Install dependencies
FROM python:3.10-alpine as build-stage

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Stage 2: Production Stage - Distroless image
FROM gcr.io/distroless/python3-debian11

# Set the working directory
WORKDIR /app

# Copy the dependencies and application files from the build stage
COPY --from=build-stage /app /app

# Expose the port Django will run on
EXPOSE 8000

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
