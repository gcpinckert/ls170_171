# Request and Response Cycle Practice Problems

1. The required components of an HTTP request include the **method** (such as `GET`, `POST`, etc) the **host** and the **path**. Optional information includes things like _parameters_, _header_, and _body_.

2. The only required component of an HTTP response is the status code, which tells the client whether or not the response was successful. Headers are optional, and include meta-data about the response. The body is also optional, and will include the actual data requested by the request if the response is successful (i.e. the HTML of a webpage).

3. A request should use a `GET` method when it is requesting some resource or data (content) that the server has access to. A request should use a `POST` method when it is sending some kind of resource or data to the server (such as log in information, or the results of a form). We can also thing of this as "requesting changing values that are stored on the server". Note that search forms are an exception to this rule, and they typically use `GET` requests since the merely view data on the server rather than change it.
