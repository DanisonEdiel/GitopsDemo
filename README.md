# **gitOps**

This template helps you get started developing with **Vue 3** in **Vite** and includes instructions for Docker Compose deployment.

## **Recommended IDE Setup**

[VSCode](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur).

---

## **Type Support for `.vue` Imports in TypeScript**

TypeScript cannot handle type information for `.vue` imports by default, so we replace the `tsc` CLI with `vue-tsc` for type checking. In editors, we need [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) to make the TypeScript language service aware of `.vue` types.

---

## **Customize Configuration**

See [Vite Configuration Reference](https://vite.dev/config/).

---

## **Project Setup**

### **1. Install Dependencies**

Run the following command to install all required dependencies:

```sh
npm install
```

### **2. Compile and Hot-Reload for Development**

To start the development server with hot reload:

```sh
npm run dev
```

The application will be available at:

- **http://localhost:5173**

---

## **Docker Setup**

To run the application using Docker and Docker Compose, follow these steps:

### **1. Build and Run with Docker Compose**

From the root directory of the project, execute the following command:

```sh
docker-compose up --build
```

- **`--build`** forces Docker to rebuild the image if there are changes.
- Docker will use the `docker-compose.yml` file to configure and run the container.

### **2. Access the Application**

Once the container is running, access the application in your browser at:

- **URL**: [http://localhost:8080](http://localhost:8080)

---

## **Verify the Running Container**

To check if the container is running, use the following command:

```sh
docker ps
```

You should see a container named **`vue-app`** running.

---

## **Type-Check, Compile and Minify for Production**

To build the application for production:

```sh
npm run build
```

This will generate optimized files in the `dist` folder.

---

## **Stopping the Application**

To stop the application and remove the container:

```sh
docker-compose down
```

---

## **Notes**

- Ensure **Docker** and **Docker Compose** are installed on your machine.
- For any code changes, stop the container and restart it using `docker-compose up --build`.
