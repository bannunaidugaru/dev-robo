[Unit]
Description = User Service
[Service]
User=roboshop
Environment=MONGO=true
Environment=REDIS_HOST=redis.ghostrider.cloud
Environment=MONGO_URL="mongodb://mongodb.ghostrider.cloud:27017/users"
ExecStart=/bin/node /app/server.js
SyslogIdentifier=user

[Install]
WantedBy=multi-user.target