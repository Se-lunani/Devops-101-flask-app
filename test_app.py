# test_app.py
import pytest
from app import app

@pytest.fixture
def client():
    # This fixture creates a test client for our Flask app.
    with app.test_client() as client:
        yield client

def test_home(client):
    # Test that the home route returns the correct string.
    response = client.get('/')
    assert response.data.decode('utf-8') == "Hello, DevOps!"

def test_message(client):
    # Test that the /api/message route returns the correct JSON response.
    response = client.get('/api/message')
    json_data = response.get_json()
    assert json_data == {"message": "Hello, DevOps!"}

