// *****PLEASE ENTER YOUR DETAILS BELOW*****
// T3-mns-mongo.mongodb.js

//Student ID: 34165479
//Student Name: Akshit Mehdiratta
//Unit Code: FIT9132
//Applied Class No: 04_OnCampus

//Comments for your marker:

// ===================================================================================
// Do not modify or remove any of the comments in this document (items marked with //)
// ===================================================================================

//Use (connect to) your database - you MUST update xyz001
//with your authcate username

use("ameh0025");

// 3(b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection 
db.appt_info.drop();

// Create collection and insert documents
db.createCollection('appt_info');
db.appt_info.insertMany([
    { "_id": 1, "datetime": "08/09/2023 10:00", "provider_code": "ORS001", "provider_name": "Dr. Jessica Jones", "item_totalcost": 75, "no_of_items": 1, "items": [{ "id": 20, "desc": "Phospor imaging plate", "standardcost": 75, "quantity": 97 }] },
    { "_id": 2, "datetime": "08/09/2023 10:00", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 21, "desc": "Clinasept Film", "standardcost": 5, "quantity": 98 }] },
    { "_id": 3, "datetime": "08/09/2023 12:00", "provider_code": "ORS001", "provider_name": "Dr. Jessica Jones", "item_totalcost": 9, "no_of_items": 1, "items": [{ "id": 4, "desc": "Irrigation Solution 2% Chlorhexidine", "standardcost": 9, "quantity": 98 }] },
    { "_id": 4, "datetime": "08/09/2023 15:00", "provider_code": "GEN001", "provider_name": "Dr. Bruce Striplin", "item_totalcost": 2, "no_of_items": 1, "items": [{ "id": 8, "desc": "Irrigation Needle and Syringe", "standardcost": 2, "quantity": 145 }] },
    { "_id": 5, "datetime": "08/09/2023 16:00", "provider_code": "GEN001", "provider_name": "Dr. Bruce Striplin", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 7, "desc": "Portalimas sponges 1 cm", "standardcost": 0.5, "quantity": 480 }] },
    { "_id": 6, "datetime": "08/09/2023 11:00", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 6, "no_of_items": 1, "items": [{ "id": 15, "desc": "Absorbable suture", "standardcost": 3, "quantity": 498 }] },
    { "_id": 7, "datetime": "08/09/2023 12:00", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 1, "desc": "Paper tips", "standardcost": 1, "quantity": 990 }] },
    { "_id": 8, "datetime": "08/09/2023 12:00", "provider_code": "END001", "provider_name": "Dr. Mark Stanton", "item_totalcost": 75, "no_of_items": 1, "items": [{ "id": 20, "desc": "Phospor imaging plate", "standardcost": 75, "quantity": 97 }] },
    { "_id": 9, "datetime": "11/09/2023 15:00", "provider_code": "ORS001", "provider_name": "Dr. Jessica Jones", "item_totalcost": 78, "no_of_items": 1, "items": [{ "id": 18, "desc": "Fluid composite", "standardcost": 78, "quantity": 49 }] },
    { "_id": 10, "datetime": "11/09/2023 09:15", "provider_code": "PER002", "provider_name": "Dr. Joseph Hazelton", "item_totalcost": 9, "no_of_items": 1, "items": [{ "id": 4, "desc": "Irrigation Solution 2% Chlorhexidine", "standardcost": 9, "quantity": 98 }] },
    { "_id": 11, "datetime": "11/09/2023 15:00", "provider_code": "PED002", "provider_name": "Dr.  Lee", "item_totalcost": 2, "no_of_items": 1, "items": [{ "id": 8, "desc": "Irrigation Needle and Syringe", "standardcost": 2, "quantity": 145 }] },
    { "_id": 12, "datetime": "11/09/2023 15:30", "provider_code": "AST001", "provider_name": ". Katie ", "item_totalcost": 15, "no_of_items": 1, "items": [{ "id": 6, "desc": "Universal Clamp", "standardcost": 15, "quantity": 149 }] },
    { "_id": 13, "datetime": "11/09/2023 16:30", "provider_code": "AST001", "provider_name": ". Katie ", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 7, "desc": "Portalimas sponges 1 cm", "standardcost": 0.5, "quantity": 480 }] },
    { "_id": 14, "datetime": "12/09/2023 10:00", "provider_code": "ORT001", "provider_name": "Dr. Gerry Elliott", "item_totalcost": 6, "no_of_items": 1, "items": [{ "id": 2, "desc": "Sodium hypochlorite 5.25%", "standardcost": 6, "quantity": 98 }] },
    { "_id": 15, "datetime": "12/09/2023 10:00", "provider_code": "PRO001", "provider_name": "Dr. Jane Fransen", "item_totalcost": 2, "no_of_items": 1, "items": [{ "id": 8, "desc": "Irrigation Needle and Syringe", "standardcost": 2, "quantity": 145 }] },
    { "_id": 16, "datetime": "12/09/2023 09:00", "provider_code": "ORS001", "provider_name": "Dr. Jessica Jones", "item_totalcost": 75, "no_of_items": 1, "items": [{ "id": 20, "desc": "Phospor imaging plate", "standardcost": 75, "quantity": 97 }] },
    { "_id": 17, "datetime": "14/09/2023 10:00", "provider_code": "ORS001", "provider_name": "Dr. Jessica Jones", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 21, "desc": "Clinasept Film", "standardcost": 5, "quantity": 98 }] },
    { "_id": 18, "datetime": "14/09/2023 10:00", "provider_code": "PER001", "provider_name": "Dr. April Manahan", "item_totalcost": 6, "no_of_items": 1, "items": [{ "id": 2, "desc": "Sodium hypochlorite 5.25%", "standardcost": 6, "quantity": 98 }] },
    { "_id": 19, "datetime": "14/09/2023 14:00", "provider_code": "END001", "provider_name": "Dr. Mark Stanton", "item_totalcost": 4, "no_of_items": 1, "items": [{ "id": 8, "desc": "Irrigation Needle and Syringe", "standardcost": 2, "quantity": 145 }] },
    { "_id": 20, "datetime": "14/09/2023 09:00", "provider_code": "PED001", "provider_name": "Dr. Kevin Barr", "item_totalcost": 5, "no_of_items": 1, "items": [{ "id": 1, "desc": "Paper tips", "standardcost": 1, "quantity": 990 }] },
    { "_id": 21, "datetime": "14/09/2023 10:30", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 48, "no_of_items": 1, "items": [{ "id": 16, "desc": "Universal composite", "standardcost": 48, "quantity": 99 }] },
    { "_id": 22, "datetime": "14/09/2023 10:00", "provider_code": "ORT001", "provider_name": "Dr. Gerry Elliott", "item_totalcost": 7, "no_of_items": 1, "items": [{ "id": 5, "desc": "Sterile K NiTi files", "standardcost": 7, "quantity": 149 }] },
    { "_id": 23, "datetime": "14/09/2023 10:00", "provider_code": "PRO001", "provider_name": "Dr. Jane Fransen", "item_totalcost": 35, "no_of_items": 1, "items": [{ "id": 22, "desc": "Porcelain Etch", "standardcost": 35, "quantity": 49 }] },
    { "_id": 24, "datetime": "14/09/2023 11:00", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 25, "no_of_items": 1, "items": [{ "id": 23, "desc": "Silane", "standardcost": 25, "quantity": 49 }] },
    { "_id": 25, "datetime": "14/09/2023 12:00", "provider_code": "GEN002", "provider_name": "Dr. Amalia Morris", "item_totalcost": 30, "no_of_items": 1, "items": [{ "id": 9, "desc": "Metal Bracket", "standardcost": 1.5, "quantity": 980 }] },
]
);


// List all documents you added

db.appt_info.find();

// 3(c)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer



// 3(d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer


// Illustrate/confirm changes made


// 3(e)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer


// Illustrate/confirm changes made
