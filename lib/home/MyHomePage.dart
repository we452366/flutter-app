import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child:Scaffold(
        appBar: AppBar(
          title:Text('豆瓣影院'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon:Icon(Icons.search),
              onPressed:(){}
            )
          ],
        ),

        drawer:Drawer(
          child:ListView( 
            padding:EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName:Text('we452366') ,
                accountEmail: Text('996925662@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569645887897&di=0dad967554cf1f9d6fbb59d3faab1aa6&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201709%2F22%2F20170922162149_snyk3.jpeg'),
                ),
                decoration: BoxDecoration(
                  image:DecorationImage(
                    fit:BoxFit.cover,
                    image:NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1569645761285&di=5ab1ad8d9d1d30b19a1596258557edfd&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fpic%2Fb%2F03%2F21691230681.jpg')
                  )
                ),
              ),

              ListTile(
                title:Text('我的发布'),
                trailing:Icon(Icons.send)
              ),
              ListTile(
                title:Text('我的收藏'),
                trailing:Icon(Icons.feedback)
              ),
              ListTile(
                title:Text('系统设置'),
                trailing:Icon(Icons.settings)
              ),
              Divider(color:Colors.black45),
              ListTile(
                title:Text('注销'),
                trailing:Icon(Icons.exit_to_app)
              ),
            ],
          )
        ),

        body:TabBarView(
          children: <Widget>[
            Text('page1',style: TextStyle(fontSize: 30),),
            Text('page2',style: TextStyle(fontSize: 30),),
            Text('page3',style: TextStyle(fontSize: 30),)
          ],
        ),

        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            color:Colors.black
          ),
          child:TabBar(
            labelStyle: TextStyle(
              height: 0,
              fontSize: 12
          ),
          tabs: <Widget>[
            Tab(
              text:'首页',
              icon:Icon(Icons.home)
            ),
            Tab(
              text:'正在热映',
              icon:Icon(Icons.movie_creation)
            ),
            Tab(
              text:'影院信息',
              icon:Icon(Icons.local_movies)
            ),
          ],
        ),
        )
    )
    );
  }
}
