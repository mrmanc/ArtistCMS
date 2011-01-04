package uk.co.suecrossfield.stripes;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;

import net.sourceforge.stripes.action.FileBean;
import net.sourceforge.stripes.controller.FileUploadLimitExceededException;
import net.sourceforge.stripes.controller.multipart.MultipartWrapper;

public class DefaultMultipartWrapper implements MultipartWrapper {

	public DefaultMultipartWrapper() {
		// TODO Auto-generated constructor stub
	}
	public void build(HttpServletRequest arg0, File arg1, long arg2)
			throws IOException, FileUploadLimitExceededException {
		// TODO Auto-generated method stub

	}

	public Enumeration<String> getFileParameterNames() {
		// TODO Auto-generated method stub
		return null;
	}

	public FileBean getFileParameterValue(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	public Enumeration<String> getParameterNames() {
		// TODO Auto-generated method stub
		return null;
	}

	public String[] getParameterValues(String arg0) {
		// TODO Auto-generated method stub
		return null;
	}

}
