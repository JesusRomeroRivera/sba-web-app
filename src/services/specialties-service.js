import http from "./http";

class CustomerService {
  get(id) {
    return http.get(`/specialty/${id}`);
  }
  getAll() {
    return http.get("/specialty");
  }
}

export default new CustomerService();
