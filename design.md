#Lord of the Rings SDK Design

The Lord of the Rings SDK is designed to provide a convenient and extensible interface for accessing movie and quote data from the Lord of the Rings API. The SDK follows a modular structure, adhering to good coding practices such as encapsulation, separation of concerns, and modularity.

##Structure

The SDK is organized into several files and directories:

- `sdk.rb`: Contains the main `LordOfTheRingsSDK` class, which serves as the entry point for interacting with the API. It also instantiates other endpoint classes.
- `endpoints/`: A directory that holds individual endpoint classes, each representing a specific API endpoint. Currently, the SDK includes the `Movie` and `Quote` endpoint classes, but it can be extended to include more endpoints.
- `lib/`: A directory that contains the SDK code files.

##LordOfTheRingsSDK Class

The `LordOfTheRingsSDK` class is the central class of the SDK and is responsible for managing API requests and providing access to different endpoints. It has the following responsibilities:

- Initialization: The class is initialized with an API key, which is used for authentication in API requests.
- API Requests: It includes a `get` method that handles making HTTP requests to the API and parsing the response.
- Endpoint Access: The class instantiates instances of endpoint classes, such as `Movie` and `Quote`, allowing developers to access the methods and functionality provided by those classes.

##Endpoint Classes

The endpoint classes are responsible for encapsulating functionality related to specific API endpoints. Currently, the SDK includes the following endpoint classes:

- `Movie`: Provides methods for retrieving movie details and quotes related to a specific movie.
- `Quote`: Provides methods for retrieving quotes, including individual quotes and quotes based on search queries.

These classes encapsulate the logic and functionality related to their respective endpoints, making it easy to extend the SDK by adding more endpoint classes as needed.

## Extensibility

The SDK is designed to be easily extensible. To add support for additional endpoints, you can create new endpoint classes within the `endpoints/` directory. Each endpoint class should define methods that handle the specific functionality of that endpoint.

By following this modular approach, you can maintain clean and readable code, promote code reusability, and accommodate future changes and additions to the Lord of the Rings API.


