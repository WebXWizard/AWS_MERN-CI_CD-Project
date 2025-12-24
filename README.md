# Automated MERN Deployment

This project is a fully containerized MERN (MongoDB, Express, React, Node.js) application designated for automated deployment using Jenkins and Docker on AWS.

## 📂 Project Structure & Where to Write Code

You have two main areas to develop your application:

### 1. Frontend (React)
- **Location**: `./client`
- **Key Files**:
    - `src/App.jsx`: Main component. Start building your UI here.
    - `src/main.jsx`: Entry point.
    - `vite.config.js`: Configuration for the build tool.
- **What to do**:
    - Add your React components in `src/`.
    - Style your app using CSS or add a library like Tailwind/Bootstrap.

### 2. Backend (Node/Express)
- **Location**: `./server`
- **Key Files**:
    - `index.js`: Main server entry point. Your API routes go here.
    - `package.json`: Manage backend dependencies.
- **What to do**:
    - Create API routes (e.g., `app.get('/api/users', ...)`).
    - Create Mongoose models for your MongoDB database.
    - **Important**: Uncomment the MongoDB connection string in `index.js` once you are ready.

---

## 🚀 How to Run Locally

You don't need to install Node or Mongo on your machine. Docker handles it all.

1. **Build and Start**:
   ```bash
   docker-compose up --build
   ```
2. **Access the App**:
   - Frontend: [http://localhost](http://localhost)
   - Backend API: [http://localhost/api](http://localhost/api)

---

## 🌐 Deployment (AWS & CI/CD)

### AWS EC2 Setup
1. Launch an EC2 instance (Amazon Linux 2 or 2023).
2. SSH into your instance.
3. Upload and run the setup script:
   ```bash
   # Copy contents of setup.sh to the server or upload it
   chmod +x setup.sh
   ./setup.sh
   ```

### CI/CD Pipeline (Jenkins)
The `Jenkinsfile` in the root directory defines your pipeline.
1. Install Jenkins on your server (or use a separate Jenkins server).
2. Create a "Pipeline" job in Jenkins.
3. Point it to your GitHub repository.
4. Jenkins will automatically:
   - Checkout code.
   - Build Docker images.
   - Run tests (you need to add them!).
   - Deploy (you need to configure the final deploy step in `Jenkinsfile`).
