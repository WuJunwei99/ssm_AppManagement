package utils;

import com.spire.pdf.FileFormat;
import com.spire.pdf.PdfDocument;
import net.lingala.zip4j.ZipFile;
import org.apache.commons.lang3.StringUtils;
import org.apache.pdfbox.multipdf.Splitter;
import org.apache.pdfbox.pdmodel.PDDocument;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;


public class ConvertUtils {

    public static boolean operate(String zipPath, String zipPwd, String pdfPath, String htmlPath) {
        try {
            System.out.println("zip处理，路径" + zipPath + "密码："+ zipPwd);
            new ZipFile(zipPath, zipPwd.toCharArray()).extractAll(pdfPath);
            File pdfFile = new File(pdfPath);
            String fileName = null;
            if (pdfFile.exists()) {
                File[] files = pdfFile.listFiles();
                if (files.length != 0) {
                    for (File f : files) {
                        fileName = f.getName();
                    }
                }
            }
            if (StringUtils.isNotBlank(fileName)) {
                String filePath = pdfPath + fileName;
                String splitPath = pdfPath + "split/";

                System.out.println("分割pdf 开始");
                split(filePath, splitPath);
                System.out.println("分割pdf 结束");

                System.out.println("pdf转html 开始");
                pdf2Html(splitPath, htmlPath);
                System.out.println("pdf转html 结束");

                return true;
            }
        } catch (IOException e) {
            System.out.println("zip处理失败！！！请检查或尝试下一个解压密码");
        }
        return false;
    }

    /**
     * 分割pdf
     */
    private static void split(String filePath, String splitPath) throws IOException {
        //Loading an existing PDF document
        File file = new File(filePath);
        PDDocument document = PDDocument.load(file);
        //Instantiating Splitter class
        Splitter splitter = new Splitter();
        //splitting the pages of a PDF document
        List<PDDocument> Pages = splitter.split(document);
        //Creating an iterator
        Iterator<PDDocument> iterator = Pages.listIterator();
        //Saving each page as an individual document
        File splitFile=new File(splitPath);
        splitFile.mkdir();
        int i = 0;
        int counter = 0;
        PDDocument each10Pds = new PDDocument();
        while (iterator.hasNext()) {
            PDDocument pd = iterator.next();
            i++;
            counter++;
            each10Pds.addPage(pd.getPage(0));
            if (counter == 10) {
                each10Pds.save(splitPath + i + ".pdf");
                counter = 0;
                each10Pds = new PDDocument();
            }
        }
        if (counter != 0) {
            each10Pds.save(splitPath + i + ".pdf");
        }

        document.close();
    }

    private static void pdf2Html(String splitPath, String htmlPath) {
        File file = new File(splitPath);
        if (!file.exists()) {
            throw new RuntimeException("文件夹不存在");
        }
        File[] files = file.listFiles();
        if (files.length == 0) {
            throw new RuntimeException("文件夹为空");
        }

        for (File f : files) {
            //创建PdfDocument实例
            PdfDocument doc = new PdfDocument();
            //加载PDF文件
            doc.loadFromFile(f.getAbsolutePath());
            //保存为HTML格式
            doc.saveToFile(htmlPath + f.getName() + ".html", FileFormat.HTML);
            doc.close();
        }
    }
}
