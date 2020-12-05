import 'package:meditation_app/models/contact.dart';
import 'package:flutter/material.dart';

class EntryForm extends StatefulWidget {
  final Contact contact;
  EntryForm(this.contact);
  @override
  _EntryFormState createState() => _EntryFormState(this.contact);
}

class _EntryFormState extends State<EntryForm> {
  Contact _contact;
  _EntryFormState(this._contact);
  TextEditingController _nameController = TextEditingController();
 // TextEditingController _titleController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (_contact != null) {
      _nameController.text = _contact.name;
     // _titleController.text = _contact.title;
      _phoneController.text = _contact.phone;
    }
    return Scaffold(
      appBar: AppBar(
        title: _contact == null
            ? Text('Tambah Transaksi')
            : Text('Ubah Transaksi'),
        backgroundColor: Colors.redAccent,
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: ListView(
          children: <Widget>[
            //nama
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: TextField(
                controller: _nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Jual / Beli',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            //   child: TextField(
            //     controller: _titleController,
            //     keyboardType: TextInputType.text,
            //     decoration: InputDecoration(
            //       labelText: 'Nama',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(5.0),
            //       ),
            //     ),
            //     onChanged: (value) {},
            //   ),
            // ),

            
            Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Detail Transaksi',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.redAccent,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Simpan',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        if (_contact == null) {
                          _contact = Contact(
                              _nameController.text, _phoneController.text);
                        } else {
                          _contact.name = _nameController.text;
                          _contact.phone = _phoneController.text;
                        }
                        Navigator.pop(context, _contact);
                      },
                    ),
                  ),
                  Container(
                    width: 5.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.redAccent,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Batal',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
