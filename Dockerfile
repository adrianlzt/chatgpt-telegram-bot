FROM python:3.9-alpine

# Install ffmpeg
RUN apk add --no-cache --update ffmpeg

# Install dependencies
WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

# Copy the rest of the code
COPY src .

ENTRYPOINT ["python3", "telegram_message_parser.py"]
CMD []
