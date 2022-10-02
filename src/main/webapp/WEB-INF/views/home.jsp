<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp"%>


<DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>mainpage</title>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
   crossorigin="anonymous"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
   AOS.init();
</script>
<style>
.exhibition {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.exhibition li {
  margin-bottom: 25px;
}
</style>
<body>
<!-- 슬라이드 -->
   <section id="carouselExampleControls" class="carousel slide"
      data-bs-ride="carousel">
      <div class="carousel-inner">
         <div class="carousel-item active">
            <img
               src="https://www.samyangfoods.com/upload/banner/20190618/20190618144917232036.jpg"
               class="d-block w-100" alt="image" />
         </div>
         <div class="carousel-item">
            <img
               src="https://www.samyangfoods.com/upload/banner/20211007/20211007151048228047.jpg"
               class="d-block w-100" alt="image" />
         </div>
      </div>
      <button class="carousel-control-prev" type="button"
         data-bs-target="#carouselExampleControls" data-bs-slide="prev">
         <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button"
         data-bs-target="#carouselExampleControls" data-bs-slide="next">
         <span class="carousel-control-next-icon" aria-hidden="true"></span> <span
            class="visually-hidden">Next</span>
      </button>
   </section>
   
   <!-- exhibition -->
   <ul class="exhibition" data-aos="fade-up">
      <li><a href="/"> <img
            src="https://tohomeimage.thehyundai.com/DP/DP034/2022/08/22/115648/dkxea.png?RS=1204x160"
            alt="image" />
      </a></li>
      <li><a href="/"> <img
            src="https://tohomeimage.thehyundai.com/DP/DP034/2021/11/01/104726/lqgpp.jpg?RS=1204x160"
            alt="image" />
      </a></li>
      <li><a href="/"> <img
            src="https://tohomeimage.thehyundai.com/DP/DP034/2022/08/22/115648/elqth.jpg?RS=1204x160"
            alt="image" />
      </a></li>
   </ul>
   
</body>
</head>
</html>


<%@ include file="/WEB-INF/views/common/footer.jsp"%>