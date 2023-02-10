function createDataTable(referenceObj) {
	referenceObj.DataTable({
 /*dom : 'Blfrtip',*/
		lengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
		paging: true,
		searching: true,
		bLengthChange: true,
		bPaginate: true,
		bInfo: true,
		ordering: false,
		/*buttons : [ {
			extend : "copy",

			className : 'btn btn-info',

		}, {
			extend : "csv",

			className : "btn btn-success",

		}, {
			extend : "excel",

			className : "btn btn-success",

		}, {
			extend : "print",

			className : "btn btn-primary",

		}, {
			extend : "pdfHtml5",
			exportOptions : {
				modifier : {
					page : 'current'
				}
			},

		},

		]*/
	});
}

function objectConvertIntoMap(obj, classname) {
	obj = obj.replace(classname + "(", "").replace(")", "").split(",");
	var map = new Map(
		obj.map(object => {
			var dist = object.split('=');
			return [dist[0].trim(), dist[1].trim()];
		})
	);
	return map;
}

function verifyCheckBox(radioBTNName, btnId) {
	$("input[name='" + radioBTNName + "']").change(function() {
		var r_length = 0;
		$.each($("input[name='" + radioBTNName + "']:checked"), function() {
			r_length++;
		});
		if (r_length == 0) {
			$('#' + btnId).prop('disabled', true);
		} else {
			$('#' + btnId).prop('disabled', false);
		}
	});
}
