package net.itattractor;

import javax.swing.*;

public class Main {


    public static void main(String args[])
    {
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                new RecordDialog();
            }
        });
    	new Thread(new ScreenShot()).start();
    }
}