import os 

print("Running dummy python process within a Dockerfile")
print(f"Process started with environment variable: {os.getenv('MY_VARIABLE')}")
