import http from "./http";

class TechnicianService {
  get(id) {
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
