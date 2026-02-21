echo "Building site..."
python3 src/main.py


# Check if public directory was created
if [ -d "docs" ]; then
    echo "Public directory created successfully"
    echo "Contents of public directory:"
    ls -la docs
else
    echo "ERROR: Public directory was not created"
    exit 1
fi

# Start the server
#if [ "$1" = "serve" ]; then
 # python3 -m http.server 8888 --directory public
#fi 

cd docs && python3 -m http.server 8888