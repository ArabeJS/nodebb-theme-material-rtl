<div class="unread">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<a href="{config.relative_path}/unread">
		<div class="alert alert-warning hide" id="new-topics-alert"></div>
	</a>


	<div class="card">
		<div class="listview lv-bordered lv-lg">
			<div class="lv-header-alt <!-- IF !topics.length -->hidden<!-- ENDIF !topics.length -->">
				<div class="title">
					<!-- IF loggedIn -->
					<button component="category/post" id="new_topic" class="btn btn-primary">[[category:new_topic_button]]</button>
					<!-- ELSE -->
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF loggedIn -->

					<div class="markread btn-group <!-- IF !topics.length -->hidden<!-- ENDIF !topics.length -->">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							[[unread:mark_as_read]] <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation">
								<a id="markSelectedRead" role="menuitem" tabindex="-1" href="#">[[unread:selected]]</a>
							</li>

							<li role="presentation">
								<a id="markAllRead" role="menuitem" tabindex="-1" href="#">[[unread:all]]</a>
							</li>
							<li class="divider"></li>
							<!-- BEGIN categories -->
							<li role="presentation" class="category" data-cid="{categories.cid}">
								<a role="menu-item" href="#">{categories.level}<!-- IF categories.icon --><span class="fa-stack"><i style="color: {categories.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
							</li>
							<!-- END categories -->
						</ul>
					</div>

					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							<!-- IF selectedCategory --><!-- IF selectedCategory.icon --><span class="fa-stack"><i style="color: {selectedCategory.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {selectedCategory.icon}" style="color: {selectedCategory.color};"></i></span><!-- ENDIF selectedCategory.icon --> {selectedCategory.name}<!-- ELSE -->[[unread:all_categories]]<!-- ENDIF selectedCategory --> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li role="presentation" class="category">
								<a role="menu-item" href="{config.relative_path}/unread"><i class="fa fa-fw <!-- IF !selectedCategory -->fa-check<!-- ENDIF !selectedCategory -->"></i> [[unread:all_categories]]</a>
							</li>
							<!-- BEGIN categories -->
							<li role="presentation" class="category" data-cid="{categories.cid}">
								<a role="menu-item" href="{config.relative_path}/unread?cid={categories.cid}"><i class="fa fa-fw <!-- IF categories.selected -->fa-check<!-- ENDIF categories.selected -->"></i>{categories.level}<!-- IF categories.icon --><span class="fa-stack"><i style="color: {categories.bgColor};" class="fa fa-circle fa-stack-2x"></i><i class="fa fa-fw fa-stack-1x {categories.icon}" style="color: {categories.color};"></i></span><!-- ENDIF categories.icon --> {categories.name}</a>
							</li>
  				<!-- END categories -->
  			</ul>

							</li>
							<!-- END categories -->
						</ul>
					</div>
				</div>
			</div>

			<!-- IMPORT partials/topics_list.tpl -->
			<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->

			<div id="category-no-topics" class="alert alert-warning <!-- IF topics.length -->hidden<!-- ENDIF topics.length -->">
				[[unread:no_unread_topics]]
			</div>
		</div>
	</div>
</div>