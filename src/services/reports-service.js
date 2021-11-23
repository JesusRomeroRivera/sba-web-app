import http from "./http";

class ReportService {
  get(id) {
    return http.get(`/report/${id}`);
  }
  getAll() {
    return http.get("/report");
  }
  create(customerId, technicianId, data) {
    return http.post(
      `report?customerId=${customerId}&technicianId=${technicianId}`,
      data
    );
  }
}

export default new ReportService();
