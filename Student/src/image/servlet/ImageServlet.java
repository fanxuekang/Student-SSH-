package image.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
/*import javax.servlet.annotation.WebServlet;*/
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/*@WebServlet("/image")*/
public class ImageServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("image/jpeg");
		//����ͼƬ������
		BufferedImage bi=new BufferedImage(100,50,BufferedImage.TYPE_INT_RGB);
		//���ͼƬGraphics
		Graphics image=bi.getGraphics();
		//���һ����������
		Random r=new Random();
		//Ϳ����ɫ
		image.setColor(new Color(r.nextInt(256),r.nextInt(256),r.nextInt(256)));
		image.fillRect(0, 0, 100, 50);
		//�����֤��
		String num=String.valueOf(r.nextInt(9999));
		image.setColor(new Color(0,0,0));//��ɫ
		image.setFont(new Font("Comic Sans MS",Font.BOLD,30));//����
		Graphics2D image2=(Graphics2D)image;
		image2.rotate(0.08);//��֤����б
		image2.drawString(num, 30, 40);
		//��10�������
		for(int i=1;i<=10;i++){
			image.drawOval(r.nextInt(100), r.nextInt(50), 0,0);//����
			image.drawLine(r.nextInt(100), r.nextInt(50), r.nextInt(100), r.nextInt(50));//����
		}
		//�����浽session��
//		HttpSession session=req.getSession();
//		session.setAttribute("num", num);
//		System.out.print("numss="+session.getAttribute("num"));
//		System.out.print("-------");
	Cookie number=new Cookie("number",num);
//  		name.setMaxAge(120);
  		resp.addCookie(number);
	
		
		//�����֤��
		OutputStream out=resp.getOutputStream();//��������ֽ���
		image.dispose();//�ͷ�imageռ�õ���Դ
        ImageIO.write(bi, "jpeg", out);		
		out.close();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
    
}
