What are some common HTTP status codes?
https://www.smartlabsoftware.com/ref/http-status-codes.htm
200 OK - request has succeeded
300 Multiple Choices - request has different choices and cannot be resolved into one.
301 Moved Permanently - requested resource has been assigned a new permanent URI
302 Found - requested resource temporarily resides under a different URI
304 Not Modified -
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

What is the difference between a GET request and a POST request? When might each be used?
GET requests data from a specified resource. They can be cached, they remain in the browser history, they can be bookmarked, they have length restrictions, they can only be used to retrieve data. Since GET is ued to retrive remote data, it would be used to display an article or some other piece of content as is. It should not be used for sensitive data (like password submissions).

POST submits data to be processed to a specified resource. POST requests are never cached, they do not remain in the browser history, they cannot be bookmarked, and they have no restrictions on data length. POST would be good to use for something like an HTML form, where you're wanting to insert/update remote data. POST is also able to transfer a larger amount of data then GET.

Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Per the MDN: An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser. The browser may store it and send it back with the next request to the same server. Typically, it's used to tell if two requests came from the same browser — keeping a user logged-in, for example.