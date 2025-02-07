library datagrid_controller;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ColumnConfig {
  final String columnName;
  final String labelText;
  final bool allowSorting;
  final bool allowFiltering;
  final bool visible;
  final bool allowEditing;
  final ColumnWidthMode columnWidthMode;
  ColumnConfig({
    required this.columnName,
    required this.labelText,
    this.allowSorting=false,
    this.allowFiltering =false,
    this.visible = false,
    this.allowEditing=false,
    this.columnWidthMode = ColumnWidthMode.fitByColumnName,
  });
}

List<GridColumn> buildDataGridColumns(List<ColumnConfig> columnsConfig) {
  List<GridColumn> columns = [];

  for (var config in columnsConfig) {
    columns.add(
      GridColumn(
        columnName: config.columnName,
        allowSorting: config.allowSorting,
        allowFiltering: config.allowFiltering,
        columnWidthMode: config.columnWidthMode,
        allowEditing: config.allowEditing,
        visible: config.visible,
        label: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(config.labelText),
        ),
      ),
    );
  }


  return columns;
}
