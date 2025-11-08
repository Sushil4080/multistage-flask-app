# ============================
# Stage 1: Builder
# ============================
FROM python:3.10-slim AS builder

WORKDIR /app

COPY app/requirements.txt .
RUN pip install --prefix=/install -r requirements.txt

# ============================
# Stage 2: Runtime
# ============================
FROM python:3.10-slim

WORKDIR /app

# Copy installed packages from builder layer
COPY --from=builder /install /usr/local

# Copy application code
COPY app/ .

# Expose Gunicorn port
EXPOSE 5000

# Gunicorn startup command
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "wsgi:app"]

