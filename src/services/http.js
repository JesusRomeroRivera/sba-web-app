import axios from "axios";

export default axios.create({
  baseURL: "https://immense-garden-67436.herokuapp.com/api/",
  headers: {
    "Content-type": "application/json",
    Authorization: `Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEwOCIsIm5iZiI6MTYzNzYwNTE0NiwiZXhwIjoxNjM4ODE0NzQ2LCJpYXQiOjE2Mzc2MDUxNDZ9.yAIFwVuPYVzy1_U_Tq234WvTH33djaG3nY38uKQroxk`,
  },
});
