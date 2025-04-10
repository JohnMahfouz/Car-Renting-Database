# 🚗 Car Renting System Database

This repository contains the full database design for a **Car Renting System**, including both a **relational schema** and an **Entity-Relationship Diagram (ERD)**. It is built to manage a car rental service's complete data operations, such as customer reservations, vehicle inventory, employee assignments, agency branches, and rental deals.

---

## 📌 Features

- Track vehicles with attributes like fuel type, features, transmission, and rental status
- Handle multi-car reservations linked to customer profiles and deals
- Assign employees to agencies and allow them to manage vehicles or deals
- Include support for branch-specific agency information and phone numbers
- Designed with full normalization and relational integrity

---

## 🧱 Database Design

### ✅ Core Tables

| Table         | Description |
|---------------|-------------|
| `Vehicle`     | Information about each car in the fleet |
| `Customer`    | Personal info and contact details of renters |
| `Employee`    | Staff members managing operations |
| `CarAgency`   | Rental branches with location and contact |
| `Reservation` | Links between customers and vehicles |
| `Deal`        | Financial/contractual aspects of a rental |

### ✅ Supporting Tables

- `VehicleColor`, `VehicleFeatures`, `VehicleFuelType`
- `EmployeePhone`, `CustomerPhone`, `AgencyPhone`
- `AgencyManager` (tracks branch managers)
- `ReservationVehicle`, `ReservationDeal` (many-to-many mappings)




