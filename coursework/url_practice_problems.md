# Practice Problems: URL Components

From Lesson 3, Intro to HTTP

1. Given the following URL:

    ```
    https://amazon.com/Double-Stainless-Commercial-Refrigerator/B60HON32?ie=UTF8&qid=142952676&sr=93&keywords=commercial+fridge
    ```

    a. The **host** is `amazon.com`
    b. The **names** of the **query parameters** are `ie`, `qid`, `sr`, and `keywords`.
    c. The **values** of the **query parameters** are `UTF8`, `142952676`, `93`, and `commercial+fridge`
    d. The **scheme** is `https`
    e. The **path** is `/Double-Stainless-Commercial-Refrigerator/B60HON32`
    f. There is no **port** in the URL. Therefore, we can assume it will default to port `443` which is the default port used with `https`.

2.  ```
    http://amazon.com:3000/products/B60HON32?qid=142952676&sr=93
    ```

3.  ```
    http://localhost:4567/todos/15
    ```

    a. The are no **query parameters** in the URL
    b. The **scheme** is `http`
    c. The **path** is `/todos/15`
    d. The **host** is `localhost`
    e. The **port** is `4567`

4. There are two different ways to __encode__ a space within query parameters. You can either use `+` or `%20`.

5. The `?` character is a special character reserved to indicate the beginning of a URL's query parameters.

6. The `=` is a special character reserved for use to link a query parameter name with a query parameter value within a URL.

7. The `&` is a special character reserved for use to indicate multiple query parameters within a URL. It comes before each additional query parameter after the first one, which is prepended by `?`.