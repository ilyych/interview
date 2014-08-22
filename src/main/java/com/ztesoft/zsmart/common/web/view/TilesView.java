package com.ztesoft.zsmart.common.web.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tiles.TilesContainer;
import org.apache.tiles.access.TilesAccess;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.Request;
import org.apache.tiles.request.servlet.ServletApplicationContext;
import org.apache.tiles.request.servlet.ServletRequest;
import org.nutz.mvc.View;

public class TilesView implements View {
	private String value;

	public TilesView(String value) {
		this.value = value;
	}

	@Override
	public void render(HttpServletRequest req, HttpServletResponse resp,
			Object obj) throws Throwable {
		req.setAttribute("obj", obj);
		ApplicationContext ctx = new ServletApplicationContext(req.getSession().getServletContext());
		TilesContainer container = TilesAccess.getContainer(ctx);
		Request request = new ServletRequest(ctx, req, resp);
		container.render(value, request);
	}

}
