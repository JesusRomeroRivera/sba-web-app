import http from "./http";

class TechnicianSpecialtyService {
  getById(id) {
    return http.get(`/technician/${id}/specialties`);
  }
  getAll() {
    return http.get("/technician");
  }
  create(id, data) {
    return http.post(`/technician?userId=${id}`, data);
  }
}

export default new TechnicianSpecialtyService();