<!-- IF !notifications.length -->
<a href="#" class="no-notifs lv-item">[[notifications:no_notifs]]</a>
<!-- ENDIF !notifications.length -->

<!-- BEGIN notifications -->
<a class="lv-item media {notifications.readClass}" href="{config.relative_path}{notifications.path}" data-nid="{notifications.nid}">
    <div class="pull-right">
        <!-- IF notifications.image -->
		<!-- IF notifications.from -->
        <img class="user-picture" src="{notifications.image}" />
		<!-- ENDIF notifications.from -->
		<!-- ELSE -->
		<div class="user-icon" style="background-color: {notifications.user.icon:bgColor};">{notifications.user.icon:text}</div>
		<!-- ENDIF notifications.image -->
    </div>
    <div class="pull-left mark-read" aria-label="Mark Read"></div>
    <span class="pull-left relTime">{notifications.timeago}</span>
    <div class="media-body">
        <small class="lv-small">{notifications.bodyShort}</small>
    </div>
</a>
<!-- END notifications -->