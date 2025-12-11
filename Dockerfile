FROM node:20-alpine AS builder
WORKDIR /app

# Install deps
COPY package.json package-lock.json* ./
RUN npm ci || npm install

# Copy source and build
COPY . .
RUN npm run build

# --- Runtime stage ---
FROM node:20-alpine AS runner
WORKDIR /app

# Copy built assets
COPY --from=builder /app/dist ./dist

# Use a lightweight static server via npx (no extra deps)
ENV PORT=8000
EXPOSE 8000

CMD ["sh", "-c", "npx serve -s dist -l 0.0.0.0:${PORT}"]

