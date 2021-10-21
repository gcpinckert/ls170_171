# Security

- [What are the security risks to HTTP, and how do we deal with them?](#security-in-http)
  - [Session Hijacking](#session-hijacking)
  - [Same Origin Policy](#same-origin-policy)
  - [Cross Site Scripting](#cross-site-scripting)
- [What are the services that TLS provides?](#tls)

## Security in HTTP

- HTTP is a text based protocol, and all it's requests and responses consist of plain text.
- As such, it is _inherently insecure_.
- Attackers can employ techniques like _packet sniffing_ and _session hijacking_ to obtain information and perform malignant acts.
- Requests/responses often contain information about the `session id` which uniquely identifies a user to the server, and anyone who gets access to this can pose as the user to get logged in without needing to authenticate with a username and password.
- Using HTTPS, which utilizes TLS to ensure a secure connection helps with this.

### Session Hijacking

What is session hijacking? What measures can be taken to prevent this?

- **Session hijacking** refers to a malignant action in which a hacker utilizes a stolen `session id` to authenticate themselves and share sessions
- Because a `session id` is used to identify a user to the server, it can also be used by hackers to pose as the user and get logged in without needing to authenticate with a username and password.
- This can be mitigated by frequently resetting sessions, i.e. making sure users re-authenticate when doing anything sensitive.
- Putting an expiration time on sessions gives attackers a narrower window for access to the `session id`.

### Same Origin Policy

- Designing for the **same-origin policy** can help to mitigate the lack of security in HTTP by restricting interactions between resources.
- This policy only permits interaction between resources of the _same origin_, but restricts interactions between resources of a different origin.
- Resources of the "same-origin" means they share the same _scheme_, _host_, and _port_.
- Only those resources that share all three aspects are allows to issue requests unrestrictedly.
- This prevents attackers from using this mechanism to access session ids or other session information.

### Cross Site Scripting

- Websites that allow some kind of input, such as allowing users to enter a comment that will be displayed, must protect against **cross site scripting** or **XSS**.
- This is when a malicious party uses site input fields to inject HTML or JavaScipt into the site directly.
- This can be prevented by performing _input sanitation_, such as getting rid of anything that might be problematic such as `<script>` tags.
- It's also possible to escape certain characters that indicate JavaScript or HTML code.
- Site's can also choose to only accept a safer form of input, such as Markdown.

## TLS

What is the TLS protocol, and what is its purpose?

- TLS stands for **Transport Layer Security**, and it is a protocol that utilizes cryptography to provide more secure communications between networked applications.
- It is what provides the security aspect of HTTPS, enabling measures of _encryption_, _authentication_, and _integrity_ over the inherently insecure protocol of HTTP.
- It consists of both the TLS _record_ and TLS _handshake_.
- TLS operates between HTTP and TCP. 

Why do we need TLS?

- Beach HTTP is a text based protocol, it is inherently insecure.
- Any intercepted requests/responses are easy to read.
- Furthermore, HTTP is a fairly simple protocol, concerned only with basic message structure.
- It provides no check for whether or not the source of an HTTP response is trustworthy, nor does it provide a means of determining if the messages are being tampered with in transit.

Purpose of TLS:

- TLS enables us to provide encryption to the inherently insecure plain text of the HTTP protocol.
- It provides authentication services, checking to see if the source of an HTTP response is trustworthy.
- It also provides a means of ensuring data integrity, that is, determining whether or not HTTP messages have been tampered with.

### What are the services that TLS provides?

- **TLS Encryption** allows HTTP messages to be encoded in such a way that only the authorized parties are able to decode and read the plain text version of the messages.
  - This secure channel is established with the TLS handshake, which uses both symmetric and asymmetric key encryption
  - It encrypts, which increases security, but adds several round-trips of latency which impacts performance
- **TLS Authentication** provides a means of verifying the identity of participants in a message exchange.
  - This ensures that the source of an HTTP response is trustworthy, and so the provided resource can be safely processed.
  - It is implemented with digital _certificates_, which are signed by a chain of _Certificate Authorities_.
  - These certificates are exchanged during the TLS handshake process.
- **TLS Integrity** ensures that a message hasn't been altered or interfered with during transit.
  - Data that is being exchanged via HTTP is encapsulated into a TLS record which contains a Message Authentication Code (MAC), which is used by the protocol to determine whether the message has been tampered with or faked.
  - This is slightly different than a regular checksum, which is only concerned with error detection.