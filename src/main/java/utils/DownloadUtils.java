package utils;

import org.apache.http.*;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class DownloadUtils {
    public static final int CACHE = 10 * 1024;

    /**
     * 根据url下载文件，保存到filepath中
     *
     * @param url
     * @param filepath
     * @return
     */
    public static String download(String url, String filepath) {
        try {
            HttpClient client = HttpClients.createDefault();
            HttpGet httpget = new HttpGet(url);
            HttpResponse response = client.execute(httpget);

            HttpEntity entity = response.getEntity();
            InputStream is = entity.getContent();

            File file = new File(filepath);
            file.getParentFile().mkdirs();
            FileOutputStream fileout = new FileOutputStream(file);
            /**
             * 根据实际运行效果 设置缓冲区大小
             */
            byte[] buffer = new byte[CACHE];
            int ch = 0;
            while ((ch = is.read(buffer)) != -1) {
                fileout.write(buffer, 0, ch);
            }
            is.close();
            fileout.flush();
            fileout.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        String url = "https://download.bill.weixin.qq.com/cgi-bin/signature/download_bill.cgi?i=19w7oOKvgXNBseMuEQ7QOeeIWAoepnNxlY8mXlXIbeett3I/EhtzhMZFo4GfpxD5vx9GXoHc23YcSvPLAPrXZXBJt3BWuyxIk56Tuab36RMhxdtC/8oBlqf5J0w=";
        String filepath = "file\\test.zip";
        DownloadUtils.download(url, filepath);
    }
}
