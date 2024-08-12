# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add a custom configuration file directly in the Dockerfile
RUN echo 'server {\
    listen 80;\
    location / {\
        root /usr/share/nginx/html;\
        index index.html;\
    }\
}' > /etc/nginx/conf.d/default.conf

# Add the HTML file directly in the Dockerfile
RUN echo '<html>
              <head>
                <style>
                  body {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                    background-color: #f0f0f0;
                    font-family: Arial, sans-serif;
                    text-align: center;
                  }
                  img {
                    max-width: 100%;
                    height: auto;
                    margin-bottom: 20px;
                  }
                  h1 {
                    color: #003366; /* Use the color code from the logo */
                    font-size: 200%; /* Set font size to 90% */
                    font-weight: bold;
                    text-shadow: 2px 2px #ffff00; /* Example shadow color */
                  }
                </style>
              </head>
              <body>
                <img src="https://www.teamcomputers.com/images/logo.png" alt="TeamComputers Logo">
                <h1>Welcome to TeamComputers at delhi!!!!!</h1>
              </body>
            </html>' > /usr/share/nginx/html/index.html
