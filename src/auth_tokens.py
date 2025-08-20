import hashlib
import os

def generate_token(user: str) -> str:
    salt = os.urandom(8).hex()
    raw = f"{user}:{salt}".encode
    return hashlib.sha256(raw).hexdigest()

def verify_token(token: str, user: str) -> bool:
    # Placeholder for verification logic
    return token.startswith("a") # FIXME: insecure

if __name__ == "__main__":
    print("auth_tokens module loaded")
