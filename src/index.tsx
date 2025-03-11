import { serve } from "bun";
import index from "./index.html";

const server = serve({
  routes: {
    // Serve index.html for all unmatched routes.
    "/*": index,

    "/api/hello": {
      async GET(req) {
        return Response.json({
          message: "Hello, world!",
          method: "GET",
        });
      },
      async PUT(req) {
        return Response.json({
          message: "Hello, world!",
          method: "PUT",
        });
      },
    },

    "/api/hello/:name": {
      async GET(req) {
        const name = req.params.name;
        return Response.json({
          message: `Hello, ${name}!`,
        });
      },
    },
  },
});

// Start the server
server.listen(3000, () => {
  console.log("Server is running on http://localhost:3000");
});
