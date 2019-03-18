import 'package:flutter/material.dart';

class ItemDropMenuButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DropdownState();
  }
}

class _DropdownState extends State<ItemDropMenuButton>{

  //项目列表
  List<DropdownMenuItem<String>> _getItemList() {
    var list = ["全部项目", "玻尿酸", "水光针", "自体脂肪", "鼻综合"];
    return list.map((item) => DropdownMenuItem(
      value: item,
      child: Text(item),
    )).toList();
  }

  String selectValue;

  @override
  Widget build(BuildContext context){
    return Container(
      height: 35.0,
      width: 166.0,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        color: Color(0xffF0F0F0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          //要显示的条目
          items: _getItemList(),
          //默认显示的值
          hint: Text("全部项目"),
          //下拉菜单选中的值（注意：在初始化时，要么为null，这时显示默认hint的值；
          // 如果自己设定值，则值必须为列表中的一个值，如果不在列表中，会抛出异常）
          value: selectValue,
          onChanged: (itemValue) {//itemValue为选中的值
            print("itemValue=$itemValue");
            _onChanged(itemValue);
          },
        ),
      ),
    );
  }

  _onChanged(String value) {
    //更新对象的状态
    setState(() {
      selectValue = value;
    });
  }
}