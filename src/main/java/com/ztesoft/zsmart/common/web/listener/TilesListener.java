package com.ztesoft.zsmart.common.web.listener;

import java.util.ArrayList;
import java.util.List;

import org.apache.tiles.factory.AbstractTilesContainerFactory;
import org.apache.tiles.factory.BasicTilesContainerFactory;
import org.apache.tiles.request.ApplicationContext;
import org.apache.tiles.request.ApplicationResource;
import org.apache.tiles.startup.AbstractTilesInitializer;
import org.apache.tiles.startup.TilesInitializer;
import org.apache.tiles.web.startup.AbstractTilesListener;

public class TilesListener extends AbstractTilesListener {
	@Override
	protected TilesInitializer createTilesInitializer() {
		return new TilesListenerInitializer();
	}
	
	private static class TilesListenerInitializer extends AbstractTilesInitializer {
		@Override
		protected AbstractTilesContainerFactory createContainerFactory(ApplicationContext context) {
			return new BasicTilesContainerFactory() {
				@Override
				protected List<ApplicationResource> getSources(ApplicationContext ctx) {
					List<ApplicationResource> list = new ArrayList<ApplicationResource>();
					list.add(ctx.getResource("WEB-INF/classes/tiles-defs.xml"));
					return list;
				}
			};
		}
	}
}
