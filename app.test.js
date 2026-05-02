const request = require("supertest");
const app = require("./app");

test("GET /user/:id returns userId", async () => {
  const res = await request(app).get("/user/42");
  expect(res.body.userId).toBe("42");
});

test("POST /greet returns greeting", async () => {
  const res = await request(app).post("/greet").send({ name: "Nick" });
  expect(res.body.message).toBe("Hello, Nick!");
});

test("GET /health returns ok", async () => {
  const res = await request(app).get("/health");
  expect(res.body.status).toBe("ok");
});
