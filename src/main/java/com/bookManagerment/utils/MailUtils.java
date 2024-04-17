package com.bookManagerment.utils;

import com.bookManagerment.config.BMSystemProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.mail.*;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

@Component
public class MailUtils {

	@Autowired
	private  BMSystemProperties systemProperties;

	public void sendRemind(String email,String emailMsg) throws MessagingException {
		sendMail(email,emailMsg,systemProperties.getMailReaderRemindTitle());
	}

	public void sendRegisterVerifyCode(String email, String emailMsg) throws MessagingException {
		sendMail(email,emailMsg,systemProperties.getEmailReaderRegisterTitle());
	}

	private void sendMail(String email, String emailMsg,String title)
			throws AddressException, MessagingException {
		// 1.鍒涘缓涓€涓▼搴忎笌閭欢鏈嶅姟鍣ㄤ細璇濆璞?Session

		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "SMTP");
		props.setProperty("mail.smtp.auth", "true");//寮€鍚璇?
		props.setProperty("mail.smtp.ssl.enable", "true");
		props.setProperty("mail.debug", "true");//鍚敤璋冭瘯
		props.setProperty("mail.smtp.timeout", "10000");//璁剧疆閾炬帴瓒呮椂
		props.setProperty("mail.smtp.port", "465");//璁剧疆绔彛
		props.setProperty("mail.smtp.socketFactory.port", "465");//璁剧疆ssl绔彛
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.host", systemProperties.getMailHost());

		// 鍒涘缓楠岃瘉鍣?
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(systemProperties.getMailAccount(), systemProperties.getMailPassword());
			}
		};

		Session session = Session.getInstance(props, auth);

		// 2.鍒涘缓涓€涓狹essage锛屽畠鐩稿綋浜庢槸閭欢鍐呭
		Message message = new MimeMessage(session);

		message.setFrom(new InternetAddress(systemProperties.getMailAccount())); // 璁剧疆鍙戦€佽€?

		message.setRecipient(Message.RecipientType.TO, new InternetAddress(email)); // 璁剧疆鍙戦€佹柟寮忎笌鎺ユ敹鑰?

		message.setSubject(title);	//閭鏍囬

		message.setContent(emailMsg, systemProperties.getMailContent());	//鏍煎紡

		// 3.鍒涘缓 Transport鐢ㄤ簬灏嗛偖浠跺彂閫?

		Transport.send(message);

		System.out.println("邮箱发送成功");
	}



}
