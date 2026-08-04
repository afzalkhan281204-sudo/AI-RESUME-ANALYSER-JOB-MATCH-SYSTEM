#!/bin/bash

echo "🚀 Starting AI Resume Analyzer & Job Match System..."

# Activate backend Python virtualenv & start FastAPI
if [ -d "backend/venv" ]; then
    echo "🐍 Starting FastAPI Backend on http://localhost:8000..."
    ./backend/venv/bin/python backend/run.py &
else
    echo "🐍 Starting FastAPI Backend with python3..."
    python3 backend/run.py &
fi

BACKEND_PID=$!

# Start Frontend Vite dev server
echo "⚡ Starting React Vite Frontend on http://localhost:5173..."
cd frontend && npm run dev &
FRONTEND_PID=$!

trap "kill $BACKEND_PID $FRONTEND_PID" EXIT

wait
