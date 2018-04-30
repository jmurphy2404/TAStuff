<% if 1 == 1 %>

	<%= @admin.id %>
<% end %>

<% loop statement %>
<a href='/<%= @user.id %>/posts'><%= @user.name %>'s posts</a>
<% end %>