package member.model;

import org.apache.commons.mail.HtmlEmail;

public class sendEMAIL {
	public static void sendMail(String email, String subject, String msg) throws Exception {

		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com"; // SMTP 서버명
		String hostSMTPid = "chanho159"; // 아이디
		String hostSMTPpwd = "qkr!cksgh125"; // 비밀번호

		// 보내는 사람
		String fromEmail = "chanho159@naver.com";
		String fromName = "Billy A Dream";

		// email 전송
		try {
			HtmlEmail mail = new HtmlEmail();
			mail.setDebug(true);
			mail.setCharset(charSet);
			mail.setSSLOnConnect(true); // SSL 사용 (TLS가 없는 경우 SSL 사용)
			mail.setHostName(hostSMTP);
			mail.setSmtpPort(587); // SMTP 포트 번호

			mail.setAuthentication(hostSMTPid, hostSMTPpwd);
			mail.setStartTLSEnabled(true); // TLS 사용
			mail.addTo(email);
			mail.setFrom(fromEmail, fromName, charSet);
			mail.setSubject(subject);
			mail.setHtmlMsg(msg);
			mail.send();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
