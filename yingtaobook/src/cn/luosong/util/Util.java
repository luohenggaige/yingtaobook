package cn.luosong.util;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;

public class Util {
	
	public static ByteArrayOutputStream readFile(String filename)
	{
		try{
		FileInputStream fileInStream = new FileInputStream(filename);
		ByteArrayOutputStream fileByteStream = new ByteArrayOutputStream();
		int i = 0;
		while((i = fileInStream.read()) !=-1)
		{
			fileByteStream.write(i);
		}
		fileInStream.close();
		return fileByteStream;
		}
		catch(Exception e)
		{System.out.println(e);}
		
		return null;
	}
}
