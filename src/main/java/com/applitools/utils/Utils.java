package com.applitools.utils;

import com.sun.glass.ui.Size;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import javax.imageio.stream.FileImageOutputStream;
import javax.imageio.stream.ImageOutputStream;
import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.List;
import java.util.TimeZone;

public class Utils {
    public static <T> T selectNotNull(T... vars) {
        T t = null;
        for (T var : vars)
            if (var != null)
                if (t != null) return null;
                else t = var;
        return t;
    }


    public static <T extends Enum<T>> T parseEnum(Class<T> c, String string) {
        if (c != null && string != null) {
            try {
                return Enum.valueOf(c, string.trim().toLowerCase());
            } catch (IllegalArgumentException ex) {
            }
        }
        throw new RuntimeException(String.format("Unable to parse value %s for enum %s", string, c));
    }

    public static <T extends Enum<T>> String getEnumValues(Class<T> type) {
        StringBuilder sb = new StringBuilder();
        for (Object val : EnumSet.allOf(type)) {
            sb.append(StringUtils.capitalize(val.toString().toLowerCase()));
            sb.append('|');
        }
        return sb.substring(0, sb.length() - 1);
    }

    public static void setClipboard(String copy) {
        Toolkit toolkit = Toolkit.getDefaultToolkit();
        Clipboard clipboard = toolkit.getSystemClipboard();
        StringSelection strSel = new StringSelection(copy);
        clipboard.setContents(strSel, null);
    }

    public static void saveImage(String imageUrl, File destinationFile) throws IOException {
        try {
            FileUtils.copyURLToFile(new URL(imageUrl), destinationFile);
        } catch (IOException e) {
            System.out.printf("Unable to process image from %s to %s \n Error text: %s",
                    imageUrl,
                    destinationFile,
                    e.getMessage());
            throw e;
        }
    }

    public static String getRFC1123Date() {
        Calendar calendar = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz");
        dateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return dateFormat.format(calendar.getTime());
    }

    public static void createAnimatedGif(List<BufferedImage> images, File target, int timeBetweenFrames) throws IOException {
        GifSequenceWriter writer = null;

        try (ImageOutputStream output = new FileImageOutputStream(target)) {
            Size max = getMaxSize(images);
            for (BufferedImage image : images) {
                BufferedImage normalized = new BufferedImage(max.width, max.height, image.getType());
                normalized.getGraphics().drawImage(image, 0, 0, null);
                if (writer == null) writer = new GifSequenceWriter(output, image.getType(), timeBetweenFrames, true);
                writer.writeToSequence(normalized);
            }
        } finally {
            if (writer != null) {
                writer.close();
            }
        }
    }

    private static Size getMaxSize(List<BufferedImage> images) {
        Size max = new Size(0, 0);
        for (BufferedImage image : images) {
            if (max.height < image.getHeight()) max.height = image.getHeight();
            if (max.width < image.getWidth()) max.width = image.getWidth();
        }
        return max;
    }

    public static String toFolderName(String name) {
        String foldername = name;
        foldername = foldername.replaceAll("https?:", "");
        foldername = foldername.replaceAll("www\\.", "");
        foldername = foldername.replaceAll("/", "");
        foldername = foldername.replaceAll("\\.", "_");
        return foldername;
    }
}
