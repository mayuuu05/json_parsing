# json_parsing


# 8.1 What is JSON & JSON Parsing ?

## JSON 
JSON (JavaScript Object Notation) is a lightweight data-interchange format that is easy for humans to read and write and easy for machines to parse and generate. It is commonly used to transmit data between a server and a web application as text.

## JSON Parsing
JSON Parsing refers to the process of converting JSON data into a usable format in a programming language, typically into objects or data structures that can be manipulated and used within the application. This involves reading JSON data, interpreting its structure, and mapping it to appropriate data types in the programming environment.

<div> 
  <img src = "https://github.com/user-attachments/assets/e5c5cba3-9858-471b-bc51-935835d82339"  height=35% width=22%  />
</div>


# 8.2 Json Data parsing Nested Map Format

When dealing with JSON data that contains nested maps, you often need to access deeply nested values. In Flutter, you can parse such JSON data using the jsonDecode function and then traverse the map to retrieve the desired values.

#### Example
```
{
  "user": {
    "id": 1,
    "name": "John Doe",
    "address": {
      "street": "123 Main St",
      "city": "Springfield",
      "zipcode": "12345"
    }
  }
}
```

<div> 
  <img src = "https://github.com/user-attachments/assets/5c381e81-9fbc-454c-80db-dcdda8e15ab5"  height=35% width=22%  />
</div>

# 8.3 Json Data Parsing Nested List Format
When dealing with JSON data that contains nested lists, you need to iterate over the lists to access the values. Flutter provides the jsonDecode function to convert the JSON string into a map or list, which you can then traverse.
```
{
  "users": [
    {
      "id": 1,
      "name": "John Doe"
    },
    {
      "id": 2,
      "name": "Jane Doe"
    }
  ]
}
```
<div> 
  <img src = "https://github.com/user-attachments/assets/e45a7f4f-cbd7-4882-8491-fac3c8706612"  height=35% width=22%  />
</div>


