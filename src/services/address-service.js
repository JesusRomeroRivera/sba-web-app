import http from "./http";

class AddressService {
  getById(id) {
    return http.get(`/address/${id}`);
  }
  getAll() {
    return http.get("/address");
  }
  create(id, data) {
    return http.post(`/address?userId=${id}`, data);
  }
}

export default new AddressService();
