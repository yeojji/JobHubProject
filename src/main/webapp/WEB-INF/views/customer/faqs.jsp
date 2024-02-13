<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>faqs</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
    integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="  
    crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="/css/notice_by_career.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
        .accordion-item-content {
            display: none; /* 기본적으로 아코디언 아이템 숨김 */
            padding : 20px;
        }

        .accordion-item-content.active {
            display: block; /* 활성화된 아코디언 아이템은 보여짐 */
        }
        
        .accordion{
        	padding: 30px;
        	border: solid black 1px;
        }
        
        .accordion:hover {
   			 cursor: pointer;
		}

        .accordion-item-title{
        	font-size :17px;
        	font-weight: bold;
        }
        
        .accordion-item{
       		 padding: 20px;
        	border: solid #ddd 1px;
        	
        	display: flex;
    flex-direction: column;
        	
        }
        
        .container{
    padding-top: 130px;
    padding-bottom: 0px;
}

   .accordion-item-title {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .accordion-item-title .fa-chevron-down {
        margin-left: 10px; 
    }
        
        
        
    </style>
</head>
<body>
    <!-- 헤더 -->
    <%@ include file="../header_footer/header.jsp" %>

    <!-- 부서별 공고페이지 메인 -->
    <div class="container">
        <div class="notice_box_container">
            <div class="notice_info_header">
                <span class="notice_title">FAQs</span>
              
            </div>
        </div>
    </div>
    
    

    <!-- 아코디언 -->
    <div class="accordion">
    
    
      <c:forEach var="faqsListItem" items="${faqsList}">  
      <%-- 	<c:if test="${faqsListItem.category eq '채용 일반'}">  --%>
       	
        <div class="accordion-item">
            <div class="accordion-item-title">
            <span>${faqsListItem.category}</span>
    <span>${faqsListItem.title}</span>
    <i class="fa-solid fa-chevron-down"></i>
</div>
            <div class="accordion-item-content">
                <p>${faqsListItem.content}</p>
            </div>
        </div>
      <%--   </c:if>  --%>
    </c:forEach>    

        
        
  
	<br>



    </div>


    <script>
        // JavaScript를 사용하여 아코디언을 제어합니다.
        const accordionItems = document.querySelectorAll('.accordion-item');

        accordionItems.forEach(item => {
            const title = item.querySelector('.accordion-item-title');
            const content = item.querySelector('.accordion-item-content');

            title.addEventListener('click', () => {
                // 클릭 시 다른 모든 섹션의 내용을 닫습니다.
                accordionItems.forEach(otherItem => {
                    if (otherItem !== item) {
                        otherItem.querySelector('.accordion-item-content').classList.remove('active');
                    }
                });

                // 현재 클릭한 섹션의 내용을 열거나 닫습니다.
                content.classList.toggle('active');
            });
        });
    </script>

    <!-- 푸터 -->
    
    <%@ include file="../header_footer/footer.jsp" %>
    	
    
</body>
</html>
