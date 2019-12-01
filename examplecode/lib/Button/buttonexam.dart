import 'package:flutter/material.dart';

class ButtonSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
              child: Text('RaisedButton', style: TextStyle(fontSize: 24)),
              onPressed: () => SnackBar(
                    content: Text('RaisedButton!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  )),
          FlatButton(
            child: Text('FlatButton', style: TextStyle(fontSize: 24)),
            onPressed: () => SnackBar(
                    content: Text('FlatButton!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  ),
            color: Colors.green,
            textColor: Colors.white,
          ),
          IconButton(
            icon: Icon(Icons.print),
            onPressed: () => SnackBar(
                    content: Text('IconButton!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  )
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => SnackBar(
                    content: Text('FloatingActionButton!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  )
          ),
          InkWell(
            child: Text('InkWell', style: TextStyle(fontSize: 24)),
            onTap: () =>SnackBar(
                    content: Text('InkWell!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  )
          ),
         
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    ),
    );
  }
}
