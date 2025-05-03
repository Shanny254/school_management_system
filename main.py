import os
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
import mysql.connector
from dotenv import load_dotenv

# Load DB credentials from .env
load_dotenv()
DB_CONFIG = {
    "host": os.getenv("DB_HOST", "localhost"),
    "user": os.getenv("DB_USER", "root"),
    "password": os.getenv("DB_PASS", "123456789"),
    "database": os.getenv("DB_NAME", "contact_book"),
}

# Initialize FastAPI
app = FastAPI(title="Contact Book API")

# Database connection
def get_db():
    conn = mysql.connector.connect(**DB_CONFIG)
    return conn, conn.cursor(dictionary=True)

# Pydantic model for a contact
class Contact(BaseModel):
    user_id: int
    contact_name: str
    contact_phone: str | None = None
    contact_email: str | None = None

# --- CRUD Endpoints ---

# Create a Contact
@app.post("/contacts/", status_code=201)
def create_contact(contact: Contact):
    conn, cursor = get_db()
    cursor.execute(
        "INSERT INTO Contacts (user_id, contact_name, contact_phone, contact_email) VALUES (%s,%s,%s,%s)",
        (contact.user_id, contact.contact_name, contact.contact_phone, contact.contact_email)
    )
    conn.commit()
    cursor.close()
    conn.close()
    return {"message": "Contact created successfully."}

# Read all Contacts for a user
@app.get("/contacts/{user_id}")
def read_contacts(user_id: int):
    conn, cursor = get_db()
    cursor.execute("SELECT * FROM Contacts WHERE user_id = %s", (user_id,))
    records = cursor.fetchall()
    cursor.close()
    conn.close()
    if not records:
        raise HTTPException(status_code=404, detail="No contacts found for this user.")
    return {"contacts": records}

# Update a Contact
@app.put("/contacts/{contact_id}")
def update_contact(contact_id: int, contact: Contact):
    conn, cursor = get_db()
    cursor.execute(
        "UPDATE Contacts SET user_id=%s, contact_name=%s, contact_phone=%s, contact_email=%s WHERE contact_id=%s",
        (contact.user_id, contact.contact_name, contact.contact_phone, contact.contact_email, contact_id)
    )
    conn.commit()
    cursor.close()
    conn.close()
    return {"message": "Contact updated successfully."}

# Delete a Contact
@app.delete("/contacts/{contact_id}")
def delete_contact(contact_id: int):
    conn, cursor = get_db()
    cursor.execute("DELETE FROM Contacts WHERE contact_id = %s", (contact_id,))
    conn.commit()
    cursor.close()
    conn.close()
    return {"message": "Contact deleted successfully."}
