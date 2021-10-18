# TCP & UCP

- [The Transport Layer](#the-transport-layer)
  - [What is the Transport Layer?](#what-is-the-transport-layer)
  - [What is multiplexing and how is it enabled?](#what-is-multiplexing-and-how-is-it-enabled?)
  - [What is a socket?](#what-is-a-socket?)
  - [Connection Oriented Systems vs Connectionless Systems](#connection-oriented-system-vs-connectionless-system)
  - [What is Network Reliability?](#what-is-network-reliabilty?)

## The Transport Layer

### What is the Transport Layer?

- The Transport layer is the level of the networking model that is concerned with providing end-to-end communications between specific processes.
- The two most common protocols that govern this communication are TCP and UDP.
- These protocols are able to direct data transfer to a specific process or application on a host because the facilitate **multiplexing**.
- This gives us the ability to transmit multiple signals, each pertaining to a potentially different process or networked application, over the single host-to-host connection provided by IP (The Internet / Network Layer).

### What is multiplexing and how is it enabled?

- Multiplexing is the transmission of multiple data inputs over a single channel of communication, such as a single device communicating with the browser, the e-mail client, and streaming Spotify all through the same Network connection.
- This is important because often there are multiple applications running on a single device, and yet IP addresses only provide a single channel.
- Multiplexing is implemented through the use of **port** numbers alongside IP addresses.
- Each specific process is assigned a single port, which can be used to identify that same process running on a different device.
- An IP address and port number combined define a communication end-point known as a **network socket**.
- These sockets allow both IP and the protocol operating at the Transport Layer to transmit data between devices and processes.

### What is a socket?

- A **socket** refers to the communication end-point that consists of the port number and IP address together.
- The IP address gets us the correct device on the network and the port number gets us to the correct application on that device.
- This is how we can achieve end-to-end communication between devices.

PORTS:

- A **port** is a way to identify a specific process or application running on a host. It is represented by a single integer in the range 0-65535. There are three kinds of ports, and some are reserved:
  - 0-1023 = _well-known ports_ are assigned to processes that provide commonly used network services, such as port 80 for HTTP or port 443 for HTTPS
  - 1024-49151 = _registered ports_ can be assigned to private entities as requested (such as Microsoft or IBM) or can be assigned as ephemeral ports
  - 49152-65535 = _dynamic_ or _private ports_ cannot be registered for specific use and are only used for allocation on the client side as ephemeral ports.

OTHER THINGS TO CONSIDER:

- The ability to programmatically instantiate socket objects specifically defined to listen for particular communications (i.e. for a certain application from a certain host) allows for us to implement both connection oriented and connectionless communication systems.
- Conceptually, a socket facilitates multiplexing. On a practical level, instantiation of a socket object in code can implement a TCP or UDP connection specifically.

### Connection oriented system vs connectionless system

- A connection-oriented system instantiates new socket object to establish a dedicated virtual connection channel between two processes running on separate devices.
  - When new communication comes into the first listening socket, a new socket is created that listens specifically for messages that match its **four-tuple**, i.e. the IP and port of sender along with the IP and port of the receiver.
  - This is useful for establishing specific rules of communication (i.e. message acknowledgement and in order delivery of TCP)
- A connectionless system relies on a single socket for all communication, does not establish dedicated communication channels, and responds to all communications individually as they arrive.
  - It does not matter from what process transmissions come, a single socket listens to all messages regardless and responds to each as it arrives.
  - This is useful because it is a) a simpler and more flexible process than a connection-oriented system and b) it reduces latency overhead because a connection does not have to be established.

### What is Network Reliability?

- Network Reliability ensures that a reliable communication channel is established between processes.
- That is, that all transmitted data is received at communication end-point in the correct order.
- Consists of 4 key elements:
  - In-order delivery
  - Error detection
  - Handling data loss (ensures missing data is retransmitted)
  - Handing duplication (ensures duplicate data is eliminated)
- Network reliability is implemented by TCP in the Transport Layer.
- Lower level protocols are inherently unreliable, because they drop corrupted data with no protocols for replacement or retrieval.
