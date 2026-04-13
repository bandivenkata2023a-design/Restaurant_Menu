# Restaurant Menu

## Setup Instructions

### Local Development
1. **Clone the repository**:
   ```bash
   git clone https://github.com/{owner}/Restaurant_Menu.git
   cd Restaurant_Menu
   ```

2. **Install dependencies**:
   ```bash
   npm install
   ```

3. **Run the application**:
   ```bash
   npm start
   ```

### Docker Deployment
1. **Build the Docker image**:
   ```bash
   docker build -t restaurant_menu .
   ```

2. **Run the Docker container**:
   ```bash
   docker run -p 3000:3000 restaurant_menu
   ```

### Kubernetes Setup
1. **Create a deployment.yaml file**:
   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: restaurant-menu
   spec:
     replicas: 2
     selector:
       matchLabels:
         app: restaurant-menu
     template:
       metadata:
         labels:
           app: restaurant-menu
       spec:
         containers:
         - name: restaurant-menu
           image: restaurant_menu:latest
           ports:
           - containerPort: 3000
   ```

2. **Apply the deployment**:
   ```bash
   kubectl apply -f deployment.yaml
   ```

3. **Expose the service**:
   ```bash
   kubectl expose deployment restaurant-menu --type=LoadBalancer --name=restaurant-menu-service
   ```

## Author
Created by bandivenkata2023a-design on 2026-04-13.