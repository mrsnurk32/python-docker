# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Git, Python, and pip
RUN apt-get update && apt-get install -y \
    git \
    python3-full \
    python3-pip

# Set the working directory
WORKDIR /usr/src/app/

# Copy the current directory contents into the container at /app
COPY . /usr/src/app/

# Expose port 8888 for JupyterLab
EXPOSE 8888

# Set the default command to run when starting the container
CMD ["bash"]
