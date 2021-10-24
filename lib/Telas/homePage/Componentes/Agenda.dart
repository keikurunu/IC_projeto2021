import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaCalendario extends StatefulWidget {
  @override
  _AgendaCalendarioState createState() => _AgendaCalendarioState();
}

class _AgendaCalendarioState extends State<AgendaCalendario> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Agenda'),
        elevation: 20,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/Imagens/imageHome.jpg'),
            ),
          ),
        ),
      ),
      body: TableCalendar(
        calendarController: _controller,
      ),
    );
  }
}
