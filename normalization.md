# Database Normalization

Normalization is the process of organizing data in a database to reduce redundancy and improve data integrity.

## 1NF (First Normal Form)
A relation is in 1NF if:
- All attributes contain only atomic (indivisible) values.
- There are no repeating groups.

**Example**:  
If a `Property` table stores multiple images in one column like `images: "img1.jpg, img2.jpg"` → this violates 1NF.  
✅ Solution: Create a separate table `PropertyImage(property_id, image_url)`.

---

## 2NF (Second Normal Form)
A relation is in 2NF if:
- It is in 1NF.
- Every non-prime attribute is fully functionally dependent on the primary key.

**Example**:  
If `Booking(id, user_name, property_id)` → `user_name` depends only on `user_id`, not `booking_id`.  
✅ Solution: Remove `user_name` and get it from the `User` table.

---

## 3NF (Third Normal Form)
A relation is in 3NF if:
- It is in 2NF.
- It has no transitive dependencies.

**Example**:  
In a `Payment` table, if you store both `booking_id` and `user_email`, and `user_email` can be derived from `booking_id`,  
then it's a transitive dependency.  
✅ Solution: Remove `user_email`, and get it through joins.

---

## Final Note
This Airbnb-like database structure is normalized up to 3NF, ensuring optimal design with reduced redundancy.
