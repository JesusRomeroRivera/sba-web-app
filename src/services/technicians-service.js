import http from "./http";

class TechnicianService {
  getById(id) {
    return http.get(`/technician/${id}`);
  }
  getAll() {
    return http.get("/technician");
  }
  create(id, data) {
    return http.post(`/technician?userId=${id}`, data);
  }
}

export default new TechnicianService();
