<ul id="$ID" class="optionset">
	<% control Options %>
		<li class="$Class">
			<input id="$ID" class="radio" name="$Name" type="radio" value="$key"<% if isChecked %> checked<% end_if %><% if isDisabled %> disabled<% end_if %>>
			<label for="$ID">$Title</label>
		</li>
	<% end_control %>
</ul>