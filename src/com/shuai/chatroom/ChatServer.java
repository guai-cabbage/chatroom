package com.shuai.chatroom;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;

/**
 *  @Description：websocket服务端点
 *  @Author: guai
 *  @Date：2020/6/9 23:45
**/
//定义发布此端点的URL
@ServerEndpoint("/chat/{userName}")
public class ChatServer {
    private Session session;


    /**
     * 打开链接时调用的方法
     * @param session
     * @param userName
     */
    @OnOpen
    public void onOPen(Session session,@PathParam("userName") String userName){
        System.out.println("链接打开，用户名："+userName);
        this.session=session;
    }

    /**
     * 连接错误时调用的方法
     * @param session
     * @param throwable
     */
    @OnError
    public void onError(Session session,Throwable throwable){
        System.out.println("连接出错了："+throwable.getMessage());
    }

    /**
     * 接收消息时调用方法
     * @param message
     */
    @OnMessage
    public void onMessage(String message){
        System.out.println("接收消息："+message);
        this.send("服务器推送消息：helloworld！");
    }

    /**
     * 关闭连接的方法
     */
    @OnClose
    public void onClose(){
        System.out.println("连接关闭");
    }

    /**
     * 发送数据
     * @param message
     * @throws IOException
     */
    private void send(String message){
        try {
            this.session.getBasicRemote().sendText(message);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
