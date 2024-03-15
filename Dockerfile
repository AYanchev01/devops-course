# Use a build stage to install dependencies
FROM python:3.13.0a4-alpine as builder

# Update and upgrade libcrypto3 and libssl3 to address vulnerabilities
RUN apk update && \
    apk upgrade libcrypto3 libssl3

# Set a working directory for the build stage
WORKDIR /build

# Copy the requirements file and install dependencies
COPY src/requirements.txt .
RUN pip install --no-cache-dir --prefix="/install" -r requirements.txt

# Copy the application source code
COPY src/ .

# Final stage
FROM python:3.13.0a4-alpine

# Update and upgrade libcrypto3 and libssl3 in the final stage as well
RUN apk update && \
    apk upgrade libcrypto3 libssl3

# Set the working directory for the final image
WORKDIR /app

# Copy installed dependencies from the builder stage
COPY --from=builder /install /usr/local

# Copy the application source code from the builder stage
COPY --from=builder /build /app

# Create a non-root user and switch to it
RUN adduser -D appuser && \
    chown -R appuser:appuser /app
USER appuser

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["python3", "app.py"]
