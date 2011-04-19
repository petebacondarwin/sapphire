<div class="cms-content center" data-layout="{type: 'border'}">

	<div class="cms-content-header north">
		<h2><% _t('ModelAdmin.Title', 'My Model') %></h2>
	</div>


	<div class="cms-content-tools west">

		<div id="SearchForm_holder" class="leftbottom ss-tabset">		
			<% if SearchClassSelector = tabs %>
				<ul>
					<% control ModelForms %>
						 <li class="$FirstLast"><a id="tab-ModelAdmin_$Title.HTMLATT" href="#{$Form.Name}_$ClassName">$Title</a></li>
					<% end_control %>
				</ul>
			<% end_if %>

			<% if SearchClassSelector = dropdown %>
				<div id="ModelClassSelector" class="ui-widget-container">
					Search for:
					<select>
						<% control ModelForms %>
							<option value="{$Form.Name}_$ClassName">$Title</option>
						<% end_control %>
					</select>
				</div>
			<% end_if %>

			<% control ModelForms %>
				<div class="tab" id="{$Form.Name}_$ClassName">
					$Content
				</div>
			<% end_control %>
		</div>
		
	</div>

	<div class="cms-content-form center ui-widget-content">
		$EditForm
	</div>
	
</div>