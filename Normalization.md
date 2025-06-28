# Database Normalization

## What is it?
Organizing database data to reduce redundancy and improve integrity by breaking large tables into smaller, focused ones.

## Why Normalize?
- **Reduces redundancy** - Store data once
- **Prevents anomalies** - No update/insert/delete issues  
- **Improves performance** - Faster queries
- **Ensures consistency** - Single source of truth

## Normal Forms

### 1NF
- No repeating groups
- Atomic values only

### 2NF  
- No partial dependencies
- All attributes depend on entire primary key

### 3NF
- No transitive dependencies  
- Attributes depend only on primary key

### BCNF
- Stricter 3NF
- Every dependency X→Y, X must be superkey

## Rule of Thumb
**3NF or BCNF is usually sufficient** for most applications.
