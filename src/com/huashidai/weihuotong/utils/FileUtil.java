package com.huashidai.weihuotong.utils;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	/**
	 * 
	 * @param file
	 *            要保存的文件
	 * @param fileType
	 *            保存的文件夹名字
	 * @return 文件保存路径
	 * @throws IOException
	 */
	public static String saveFile(MultipartFile file, String fileType)
			throws IOException {

		// 获取上传文件的名字
		String imgName = file.getOriginalFilename();
		// 获取上传文件的后缀名
		String extension = FilenameUtils.getExtension(imgName);
		// 以UUID的方式作为保存的文件名
		String date = UUID.randomUUID().toString();
		// 保存的文件名
		String saveNmae = date + "." + extension;

		// 当前工程绝对路径
		String realPath = UserContext.getRealPath();
		// 保存的路径
		String uploadPath = realPath + "/images/" + fileType + "/";
		// 保存的文件
		File saveFile = new File(uploadPath + saveNmae);
		if (!saveFile.getParentFile().exists()) {
			saveFile.getParentFile().mkdir();
		}
		if (!saveFile.exists()) {
			saveFile.createNewFile();
		}
		file.transferTo(saveFile);
		return "/images/" + fileType + "/" + saveFile.getName();
	}

	/**
	 * 删除文件
	 * 
	 * @param fileName
	 *            文件保存路径
	 */
	public static void deleteFile(String fileName) {
		if (StringUtils.isBlank(fileName)) {
			return;
		}
		String realPath = UserContext.getRealPath();
		File file = new File(realPath, fileName);
		if (file.exists()) {
			file.delete();// 删除图
		}
	}
}
