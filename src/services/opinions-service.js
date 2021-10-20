import http from "./http";

class OpinionService {
  get(id) {
    return http.get(`/opinion/${id}`);
  }
  getAll() {
    return http.get("/opinion");
  }
  create(customerId, technicianId, data) {
    return http.post(
      `opinion?customerId=${customerId}&technicianId=${technicianId}`,
      data
    );
  }
}

export default new OpinionService();
