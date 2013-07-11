package net.itattractor;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.lang.*;
import java.util.Date;

public class ScreenShot extends Thread{
    final int timeInMilisec=1000*5;
    public void screenShot(){
        Robot robot = null;
        try {
             robot = new Robot();
        }
        catch (AWTException e) {
            e.printStackTrace();
        }
        BufferedImage screenShot = robot.createScreenCapture(new Rectangle(Toolkit.getDefaultToolkit().getScreenSize()));
        try {
            ImageIO.write(screenShot, "JPG", new File("screen/" + new Date().toString()));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void run(){
        File dir = new File("screen/");
        dir.mkdirs();
        while(true)
        {
            try {
                Thread.sleep(timeInMilisec);
                this.screenShot();
            }
            catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}