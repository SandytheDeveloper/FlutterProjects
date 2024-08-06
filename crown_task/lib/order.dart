import 'package:crown_task/GlobalVariable.dart';
import 'package:crown_task/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("Order list"),
        backgroundColor: owncolor,
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.pending_outlined),text: "Pending",),
            Tab(icon: Icon(Icons.verified),text: "Success",),
            Tab(icon: Icon(Icons.cancel_outlined),text: "Cancel",),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          PendingOrder(),
          SuccessOrder(),
          CancelOrder()
        ],
      ),
    ));
  }
}


//---------------------------------------PENDING ORDERS-------------------------------------------------

class PendingOrder extends StatefulWidget{
  @override

  PendingOrder_ createState() => PendingOrder_();

}

class PendingOrder_ extends State<PendingOrder>{

  var watchname = ['Ferro',
                    'boAt',
                    'Fastrack',
                    'Noise',
                    'Generic',
                    'Fossil',
                    'TIMEX',
                    'Titan',
                    'Tommy Hilfiger',
                    'VILLS LAURRENS'];

  var rup = ['1200','950','1560','1800','2500','1850','1450','6000','4500','8650'];

  var img = ['assets/image/watch/ferro.jpg',
            'assets/image/watch/boat.jpg',
            'assets/image/watch/fasttrack.jpg',
            'assets/image/watch/noise.jpg',
            'assets/image/watch/generic.jpg',
            'assets/image/watch/fossil.jpg',
            'assets/image/watch/timex.jpg',
            'assets/image/watch/titan.jpg',
            'assets/image/watch/tommy.jpg',
            'assets/image/watch/vills.jpg',];

  var name,rupee,image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView.builder(
              itemCount: watchname.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(watchname[index]),
                    subtitle: Text('₹ '+rup[index]),
                    leading: CircleAvatar(backgroundImage: NetworkImage(img[index]),),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),

                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)
                      =>selected_pending(name : watchname[index],rupee : rup[index],image : img[index])));
                    },
                  ),
                );
              }
          )
    );
  }
}


class selected_pending extends StatefulWidget{

  var name,rupee,image;

  selected_pending({this.name,this.rupee,this.image});

  @override
  _selected_pendingState createState() => _selected_pendingState();
}

class _selected_pendingState extends State<selected_pending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Pending Orders'),
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.network(widget.image,height: 250,),
            SizedBox(height: 40),
            Text(widget.name,style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,shadows: [Shadow(offset: Offset(5,10),blurRadius: 10,color: Colors.grey)])),
            SizedBox(height: 20,),
            Text('₹ '+widget.rupee,style: TextStyle(fontSize: 26,color: Colors.green),)
          ],
        ),
      ),
    );
  }
}



//---------------------------------------SUCCESS ORDERS-------------------------------------------------


class SuccessOrder extends StatefulWidget{
  @override
  _SuccessOrder createState() => _SuccessOrder();
}


class _SuccessOrder extends State<SuccessOrder>{

  var watchname = ['Noise','Generic','Fossil','TIMEX'];

  var rup = ['1800','2500','1850','1450'];

  var img = ['assets/image/watch/noise.jpg',
              'assets/image/watch/generic.jpg',
              'assets/image/watch/fossil.jpg',
              'assets/image/watch/timex.jpg',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: watchname.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text(watchname[index]),
                subtitle: Text('₹ '+rup[index]),
                leading: CircleAvatar(backgroundImage: NetworkImage(img[index]),),
                trailing: Icon(Icons.arrow_forward_ios_rounded),

                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>selected_success(name : watchname[index],rupee : rup[index],image : img[index])));
                },
              ),
            );
          })
    );
  }
}

class selected_success extends StatelessWidget{
  
  var name,rupee,image;
  
  selected_success({this.name,this.rupee,this.image});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Success Orders'),
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(image),
            Text('name'),
            Text('₹ '+rupee)
            
          ],
        ),
      ),
      
    );
  }
}







//---------------------------------------CANCEL ORDERS-------------------------------------------------

class CancelOrder extends StatefulWidget{
  @override
  _CancelOrder createState() => _CancelOrder();
}

class _CancelOrder extends State<CancelOrder>{

  var watchname = ['Tommy Hilfiger','VILLS LAURRENS'];

  var rup = ['4500','8650'];

  var img = ['assets/image/watch/tommy.jpg',
            'assets/image/watch/vills.jpg',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: watchname.length,
          itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(watchname[index]),
            subtitle: Text('₹ '+rup[index]),
            leading: CircleAvatar(backgroundImage: NetworkImage(img[index]),),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
            
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)
              =>selected_cancel(name : watchname[index],rupee : rup[index],image : img[index])));
            },
          ),
        );
      }),
    );
  }
}

class selected_cancel extends StatelessWidget{
  
  var name,rupee,image;
  
  selected_cancel({this.name,this.rupee,this.image});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Canceled List'),
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(image),
            Text(name),
            Text('₹ '+rupee)
          ],
        ),
      ),
    );
  }
}
