import http from "./http";

class UserService {
  get(id) {
    return http.get(`/user/${id}`);
  }
  getAll() {
    return http.get("/user");
  }
  create(data) {
    return http.post("/user", data);
  }
  auth(data) {
    return http.post("/user/authenticate", data);
  }
}

export default new UserService();