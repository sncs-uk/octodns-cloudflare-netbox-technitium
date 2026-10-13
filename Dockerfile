# Use an official lightweight Python image
FROM python:3.13-slim

# Set the working directory
WORKDIR /app

RUN chmod 0777 /tmp

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "octodns-sync" ]
