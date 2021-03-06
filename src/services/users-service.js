import http from "./http";

class UserService {
  getById(id) {
    return http.get(`/user/${id}`);
  }
  getAll() {
    return http.get("/user");
  }
  create(data) {
    return http.post("/user", data);
  }
  edit(id, data){
    return http.put(`/user/${id}`, data);
  }
  auth(data) {
    return http.post("/user/authenticate", data);
  }
}

export default new UserService();
