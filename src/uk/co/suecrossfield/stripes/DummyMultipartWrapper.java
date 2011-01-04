package uk.co.suecrossfield.stripes;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import net.sourceforge.stripes.config.Configuration;
import net.sourceforge.stripes.controller.FileUploadLimitExceededException;
import net.sourceforge.stripes.controller.multipart.MultipartWrapper;
import net.sourceforge.stripes.controller.multipart.MultipartWrapperFactory;

public class DummyMultipartWrapper implements MultipartWrapperFactory{

	public MultipartWrapper wrap(HttpServletRequest arg0) throws IOException,
			FileUploadLimitExceededException {
		return new DefaultMultipartWrapper();
	}

	public void init(Configuration arg0) throws Exception {
		
	}

}
