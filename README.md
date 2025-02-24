# iOS Interview Task

## Overview

The goal of this task is to assess your ability to apply **abstraction** and **dependency injection** in an iOS application. Specifically, you will use a single `ListViewController` that can display two different sets of data and use different table view cells based on the source of the data.

## Task Requirements

- There are two screens: **Screen A** and **Screen B**.
- Each screen should display a list of items using a `UITableView`.
- The list items on **Screen A** and **Screen B** have different data models and use different custom table view cells.
- There are two buttons in the app's main screen:
  - **"Screen A"** button: Opens `ListViewController` populated with **Screen A's** data and custom table view cell A.
  - **"Screen B"** button: Opens `ListViewController` populated with **Screen B's** data and custom table view cell B.

## Key Objectives

1. **Reuse `ListViewController` for both screens:**  
   - Use abstraction to ensure `ListViewController` is generic and can be configured with different data sources and cell types.
   
2. **Implement Dependency Injection:**  
   - Use dependency injection to pass the data source and cell configuration into `ListViewController` when it's initialized.
   
3. **Maintain Clean Architecture:**  
   - Follow principles of clean code and design patterns to ensure the code is modular, maintainable, and scalable.

## Deliverables

- A working Xcode project demonstrating the above requirements.
- Well-structured code.
- Clear separation of concerns between the view, data source, and model.

## Evaluation Criteria

- **Abstraction:** How well you abstract the `ListViewController` to make it reusable.  
- **Dependency Injection:** How effectively you inject the data and cell configuration into `ListViewController`.  
- **Code Quality:** Readability, organization, and maintainability of your code.  
- **Use of Swift Best Practices:** Proper use of Swift features and design patterns.  
- **Error Handling:** Proper handling of potential errors or edge cases.  

## Bonus Points

- Use of protocols and generics to enhance the flexibility of `ListViewController`.
