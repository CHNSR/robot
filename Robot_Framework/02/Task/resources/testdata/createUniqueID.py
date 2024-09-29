import uuid
import yaml
import os

def generate_unique_user():
    unique_id = uuid.uuid4().hex[:6]  # Generate a short unique ID (6 characters from hex)
    unique_num = ''.join(filter(str.isdigit, uuid.uuid4().hex))[:8]  # Generate an 8-digit number from UUID
    return {
        "username": f"chanon{unique_id}@gmail.com",
        "password": "12345678Chanon!",
        "confirmpassword": "12345678Chanon!",
        "name": "Chanon",
        "surname": "Seesom",
        "address": "Nu Pitsanulok",
        "phoneNum": f"09{unique_num}",
        "email": f"chanon{unique_id}@gmail.com"
    }

# Path to the YAML file
yaml_file_path = r'C:\Users\chano\Desktop\Robot_Framework\02\Task\resources\testdata\users.yaml'

# Function to add a new user to YAML file
def add_new_user_to_yaml():
    if os.path.exists(yaml_file_path):
        with open(yaml_file_path, 'r') as yaml_file:
            data = yaml.safe_load(yaml_file) or {}
    else:
        data = {}

    existing_users = data.get('users', {})
    user_count = len(existing_users)

    # Generate a single new user
    new_user = generate_unique_user()

    # Add the new user to existing data with a unique key
    existing_users[f"user{user_count + 1:02d}"] = new_user
    data['users'] = existing_users

    # Write updated data back to the YAML file
    with open(yaml_file_path, 'w') as yaml_file:
        yaml.dump(data, yaml_file, default_flow_style=False)

    print(f"A new user has been added to {yaml_file_path}.")

def get_latest_user_from_yaml():
    if os.path.exists(yaml_file_path):
        with open(yaml_file_path, 'r') as yaml_file:
            data = yaml.safe_load(yaml_file) or {}
            users = data.get('users', {})
            if users:
                latest_user_key = max(users.keys())
                return users[latest_user_key]
            print(users)
    return None

# Create a new user
get_latest_user_from_yaml()
