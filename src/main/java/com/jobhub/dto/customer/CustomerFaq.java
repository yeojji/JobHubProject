package com.jobhub.dto.customer;

import lombok.Data;

@Data
public class CustomerFaq {
	String customerFaqId;
	String faqTitle;
	String faqContent;
	String userId;
	String faqStatus;
}
