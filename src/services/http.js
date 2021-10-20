import axios from "axios";

export default axios.create({
  baseURL: "https://immense-garden-67436.herokuapp.com/api/",
  headers: {
    "Content-type": "application/json",
    Authorization: `Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6IjEwNyIsIm5iZiI6MTYzNDY5NTg1MywiZXhwIjoxNjM1OTA1NDUzLCJpYXQiOjE2MzQ2OTU4NTN9.1mYbvQsN8UYh1ubKnVTMBfxkEG4ixa97MCt7sIYrLRo`,
  },
});