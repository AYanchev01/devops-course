# Use a build stage to install dependencies
FROM python:3.11-alpine as builder

# Set a working directory for the build stage
WORKDIR /build

# Copy the requirements file and install dependencies
COPY src/requirements.txt .
RUN pip install --no-cache-dir --prefix="/install" -r requirements.txt

# Copy the application source code
COPY src/ .

# Final stage
FROM python:3.11-alpine
# Set the working directory for the final image
WORKDIR /app
# Copy installed dependencies from the builder stage
COPY --from=builder /install /usr/local
# Copy the application source code from the builder stage
COPY --from=builder /build /app

RUN adduser -D appuser && \
    chown -R appuser:appuser /app
USER appuser

EXPOSE 5000

CMD ["python3", "app.py"]