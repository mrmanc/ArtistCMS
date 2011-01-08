package uk.co.suecrossfield.stripes.extension;

import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.controller.ExecutionContext;
import net.sourceforge.stripes.controller.Interceptor;
import net.sourceforge.stripes.controller.Intercepts;
import net.sourceforge.stripes.controller.LifecycleStage;
import uk.co.suecrossfield.stripes.AdminActionBean;
import uk.co.suecrossfield.stripes.MyActionBeanContext;

import com.google.appengine.api.users.User;
import com.google.appengine.api.users.UserService;
import com.google.appengine.api.users.UserServiceFactory;


@Intercepts({LifecycleStage.HandlerResolution})
public class LoginInterceptor implements Interceptor {

	public Resolution intercept(ExecutionContext ctx) throws Exception {
		Resolution resolution = ctx.proceed();
		UserService userService = UserServiceFactory.getUserService();
		MyActionBeanContext actionBeanContext = (MyActionBeanContext)ctx.getActionBeanContext();
		actionBeanContext.setUser(userService.getCurrentUser());
        if (isLoggedIn(ctx) || isPublic(ctx)) {
        	return resolution;
        }
        else {
            return new RedirectResolution(userService.createLoginURL(actionBeanContext.getRequest().getRequestURI()));
        }
	}

	private boolean isPublic(ExecutionContext ctx) {
		return ctx.getActionBean().getClass().equals(AdminActionBean.class) == false;
	}

	private boolean isLoggedIn(ExecutionContext ctx) {
		User user = ((MyActionBeanContext) ctx.getActionBeanContext()).getUser();
		return user != null && user.getAuthDomain().equals("suecrossfield.co.uk");
	}

}
