package pro4.util;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component("chatHandler")
public class ChattingHandler extends TextWebSocketHandler{ 
	
	private Map<String, WebSocketSession> users = new ConcurrentHashMap<String, WebSocketSession>();

	// 접속 연결 성공시
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception{
		
		users.put(session.getId(), session);	
		log("#####afterConnectionEstablished###### : " + session + session.getId());		
		log("#####afterConnectionEstablished###### : " + session.getId() + "님 입장하셨습니다.");		
			
	}
	
	// 메세지 전송시
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		log("#####handleTextMessage##### : " + session.getId() + " : " + message.getPayload());

		for( WebSocketSession ws : users.values()) {
			ws.sendMessage(message);
			log(ws.getId()+"에게 전달한 메시지 : "+message.getPayload());			
		}

	}
	
	// 접속 종료시
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		users.remove(session.getId());
		System.out.println("#####afterConnectionClosed##### : " + session + " : " + status);
	}
	
	// 에러 발생시
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log(session.getId() + " #####에러 발생##### : " + exception.getMessage());
	}
	
	private void log(String msg) {
		System.out.println("#####Socket Chatting##### : " + new Date() + " : " + msg);
	}
}
