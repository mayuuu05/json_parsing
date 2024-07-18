# json_parsing

# ch - 8 What is JSON & JSON Parsing ?


JSON (JavaScript Object Notation) is a lightweight data-interchange format that is easy to read and write for humans and easy to parse and generate for machines. It is commonly used for transmitting data between a server and web applications as text.

### Primary Data Structures:
- Objects: Unordered collections of key-value pairs.
- Arrays: Ordered lists of values.
- 
## JSON Objects
JSON objects are enclosed in curly braces {} and consist of key-value pairs separated by commas. Each key must be a string enclosed in double quotes ", followed by a colon : and then the corresponding value. Keys must be unique within an object.
Example of a JSON Object:
```json
{
  "name": "John Doe",
  "age": 30,
  "city": "New York"
}
```

## JSON Arrays

JSON arrays are enclosed in square brackets [] and contain an ordered list of values separated by commas. Values can be of any JSON data type, including objects and other arrays.
Example of a JSON array:
```json
[
  "apple",
  "banana",
  "Orange"
]
```

###  Different data types supported in JSON  

-  String

Example
```
"Hello, World!"
```
- Number
```
42
3.14
```
- Boolean
```
true 
false
```




## Structure:
### JSON:

Structure: JSON uses a lightweight, text-based format consisting of key-value pairs for objects and arrays for ordered lists of values.
Example:
```

{
  "name": "John Doe",
  "age": 30,
  "city": "New York",
  "skills": ["JavaScript", "Python", "Flutter"]
}
```
Structure is simpler and more intuitive for representing data.

###  XML
- XML stands for eXtensible Markup Language.
Structure: XML uses tags to define elements within a document, allowing for hierarchical data representation.

Example :
```
<person>
  <name>John Doe</name>
  <age>30</age>
  <city>New York</city>
  <skills>
    <skill>JavaScript</skill>
    <skill>Python</skill>
    <skill>Flutter</skill>
  </skills>
</person>
```

### Readability:
- JSON:

 JSON is generally more readable and easier for humans to parse visually due to its concise syntax and lack of verbose tags.
Example is straightforward and less cluttered.

- XML:
XML can be more difficult to read and understand, especially for larger documents, due to its verbose nature with opening and closing tags.
Example can become cluttered and harder to interpret at a glance.

### Efficiency:
- JSON:

Efficiency: JSON tends to be more efficient in terms of data transmission and parsing, especially for web applications, due to its lighter syntax.
Example uses less characters to convey the same information.
- XML:

Efficiency: XML documents are generally larger in size compared to equivalent JSON documents, which can impact efficiency in data transfer and storage.
Example tends to be larger in terms of file size.

### Use cases

- JSON:

Use Cases: Widely used in modern web development, especially in APIs and client-server communications where data needs to be transferred efficiently.
Example: Often used for transmitting data between a web server and a client application.
- XML:

Use Cases: Historically used in various domains such as data storage, document representation, and configuration files.
Example: Commonly used in industries where structured data representation with metadata and validation is critical.



<div> 
  <img src = "https://github.com/user-attachments/assets/e5c5cba3-9858-471b-bc51-935835d82339"  height=35% width=22%  />
</div>
    
