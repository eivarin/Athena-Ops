#!/usr/bin/env bash

cd /app
uv run alembic upgrade head
uv run fastapi run /app/media_manager/main.py --port "${port}" --proxy-headers