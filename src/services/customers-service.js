import http from "./http";

class CustomerService {
  getById(id) {
    return http.get(`/customer/${id}`);
  }
  getAll() {
    return http.get("/customer");
  }
  edit(id, data){
    return http.put(`/customer/${id}`, data);
  }
  create(id, data) {
    return http.post(`/customer?userId=${id}`, data);
  }
}

export default new CustomerService();
