<!-- BEGIN: main -->
<!-- BEGIN: select_year -->
<strong>{LANG.select_year}</strong>
{YEAR_SLB}

<!-- BEGIN: term -->
<div class="vnp-title">{LANG.select_term}</div>
<ul class="vnp-termlist">
    <!-- BEGIN: loop -->
    <li><a class="add_icon" href="{TERM.link}" title="{TERM.term_name}">{TERM.term_name}</a></li>
    <!-- END: loop -->
</ul>
<!-- END: term -->

<!-- END: select_year -->

<!-- BEGIN: add -->
<form action="{FORM_ACTION}" method="post">
	<input name="save" type="hidden" value="1" />
	<table class="tab1">
    	<tbody class="second">
			<tr>
				<td style="width:150px"><strong>{LANG.subject}</strong></td>
				<td><input class="txt-half" type="text" value="{CLASS.subject_id}" name="class[subject_id]" id="class_subject_id" maxlength="255" /></td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td style="width:150px"><strong>{LANG.class_name}</strong></td>
				<td><input class="txt-half" type="text" value="{CLASS.class_name}" name="class[class_name]" id="class_name" maxlength="255" /></td>
			</tr>
		</tbody>
		<tbody class="second">
			<tr>
				<td style="width:150px"><strong>{LANG.faculty}</strong></td>
				<td>{FACULTY_SLB}</td>
			</tr>
		</tbody>
        <tbody>
			<tr>
				<td style="width:150px"><strong>{LANG.teacher}</strong></td>
				<td>
                	<input type="text" value="{CLASS.teacher_id}" name="class[teacher_id]" id="class_teacher_id" maxlength="255" />
                    <input type="button" onclick="getIDs('teacher', 'class_teacher_id', '{CLASS.teacher_id}'); return false" value="{LANG.choose_teacher}" />
			</tr>
		</tbody>
        <tbody>
			<tr>
				<td style="width:150px"><strong>{LANG.class_code}</strong></td>
				<td><input class="txt-half" type="text" value="{CLASS.class_code}" name="class[class_code]" id="class_code" maxlength="255" /></td>
			</tr>
		</tbody>
        <tbody class="second">
			<tr>
				<td style="width:150px"><strong>{LANG.class_week}</strong></td>
				<td class="vnp-week">{WEEK_CB}</td>
			</tr>
		</tbody>
        <tbody>
			<tr>
				<td style="width:150px"><strong>{LANG.class_time}</strong></td>
				<td>
                	{WEEK_DATA}
                </td>
			</tr>
		</tbody>
        <tbody class="second">
			<tr>
				<td style="width:150px"><strong>{LANG.class_room}</strong></td>
				<td><input class="txt-half" type="text" value="{CLASS.class_room}" name="class[class_room]" id="class_room" maxlength="255" /></td>
			</tr>
		</tbody>
        <tbody>
			<tr>
				<td style="width:150px"><strong>{LANG.class_type}</strong></td>
				<td>
                	{CLASS_TYPE_SLB}
                </td>
			</tr>
		</tbody>
        <tbody class="second">
			<tr>
				<td style="width:150px"><strong>{LANG.test_type}</strong></td>
				<td>
                	{TEST_TYPE_SLB}
                </td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="{LANG.save}"/></td>
			</tr>
		</tfoot>
	</table>
</form>
<script type="text/javascript">
$(document).ready(function(e) {
    $('.class-time input:checked').parent().addClass('class-time-active');
	$('.class-time input').click(function(e) {
        $('input:checked' ).parent().addClass('class-time-active');
		if( $( this ).is(':not(:checked)') )
		{
			$(this).parent().removeClass('class-time-active');
		}
    });
});
</script>
<!-- END: add -->
<!-- END: main -->