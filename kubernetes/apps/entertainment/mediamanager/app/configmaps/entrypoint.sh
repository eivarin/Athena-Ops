#!/usr/bin/env bash

cd /app
uv run alembic upgrade head
uv run fastapi run /app/media_manager/main.py --port "${PORT}" --proxy-headers