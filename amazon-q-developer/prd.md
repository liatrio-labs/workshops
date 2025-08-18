# **PRD: Parking Garage Management API**

## Objective

Develop a **Parking Garage Management Web API** that allows managing parking spots and tracking cars as they enter and exit.  
The API will be implemented in either **Node.js (Express)** or **Python (FastAPI or Flask)**, with **Q-Developer** assisting the development.  
All data will be stored in-memory (no database).

The implementation must be production-quality in structure but minimal in scope, optimized for completion within 15 minutes.

---

## Functional Requirements

### 1. List Available Spots

- **Endpoint:** `GET /spots`  
- **Description:** Returns all parking spots with their status (`available` or `occupied`).

---

### 2. Car Check-In

- **Endpoint:** `POST /checkin`  
- **Description:** Assigns a car to an available spot.  
- **Behavior:**  
  - Find the first available spot.  
  - Assign the car to that spot.  
  - Record the check-in timestamp.  
  - Change the spot status to `occupied`.

---

### 3. Car Check-Out

- **Endpoint:** `POST /checkout`  
- **Description:** Frees the spot assigned to a given license plate.  
- **Behavior:**  
  - Find the car by license plate.  
  - Free the assigned spot.  
  - Record the check-out timestamp.

---

## Technical Requirements

- Language: **Node.js (Express)** or **Python (FastAPI/Flask)**  
- All data stored in memory (arrays or dictionaries)  
- RESTful API with JSON input/output  
- No authentication  
- Minimal dependencies  
- Clear, modular code with separation of concerns  
- Error handling for edge cases  
- Return appropriate HTTP status codes:  
  - `200 OK` for successful operations  
  - `400 Bad Request` for invalid input  
  - `404 Not Found` when applicable

---

## Acceptance Criteria

1. API starts without errors and listens on a defined port.  
2. `GET /spots` returns correct spot data with optional filtering.  
3. `POST /checkin` assigns cars to available spots and updates status.  
4. `POST /checkout` frees spots and records check-out times.  
5. Error responses are returned in JSON format with correct status codes.  
6. Code is clean, readable, and logically organized.

