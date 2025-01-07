# Slimstore Infrastructure

## Diagram
![slimstore drawio](https://github.com/user-attachments/assets/a5cf6318-dca1-492a-9f91-69358774ca11)

## Development Setup


### Development Backend
 
 - Clone the backend repo into a suitable folder
 - Install Eclipse IDE (or similar), along with LOMBOK support
 - Open the project in eclipse and it should run on port 8084 out of the box

### Development Frontend

 - Clone the frontend repo into a suitable folder
 - Install VS Code IDE (or similar)
 - Open the project in VS Code and it should run on port 3001 out of the box
 - `npm run dev`

### Development Customer Display

 - Clone the customerdisplay repo into a suitable folder
 - Install VS Code IDE (or similar)
 - Open the project in VS Code and it should run on port 3002 out of the box
 - `npm run dev`

### Development Infratructure

 - Install docker & docker-compose
 - Clone this repo into a suitable folder
 - Run the `deploy.sh dev` script
 
## Production Setup

### Production Infratructure

 - Install docker & docker-compose
 - Clone this repo into a suitable folder
 - Run the `deploy.sh prod` script