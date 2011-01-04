package uk.co.suecrossfield.stripes;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;

public abstract class BaseActionBean implements ActionBean {


	private ActionBeanContext context;
	public ActionBeanContext getContext() {
		return context;
	}

	public void setContext(ActionBeanContext arg0) {
		this.context = arg0;
	}
}
