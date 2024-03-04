import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:ictc_admin/pages/programs/program_forms.dart';
import 'package:ictc_admin/pages/programs/programs_viewMore.dart';

class ProgramsPage extends StatefulWidget {
  const ProgramsPage({super.key});

  @override
  State<ProgramsPage> createState() => _ProgramsPageState();
}

class _ProgramsPageState extends State<ProgramsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Card(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 72,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(26, 19, 26, 19),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              programsCounter(), 
                              addButton(),
                            ],
                          ),
                        )),
                    Expanded(
                        child: DataTable2(
                      horizontalMargin: 12,
                      columns: const [
                        DataColumn2(label: Text('Title')),
                        DataColumn2(label: Text('Courses')),
                        DataColumn2(label: Text('')),
                        DataColumn2(label: Text('Option')),
                      ],
                      rows: [
                        DataRow2(cells: [
                          const DataCell(Text('Skill-Up Program')),
                          const DataCell(Text('Advance Figma')),
                          const DataCell(Text('')),
                          DataCell(Row(
                            children: [
                              editButton(), 
                              const Padding(padding: EdgeInsets.all(5)),
                              viewMore()
                            ],
                          )),
                        ]),
                      ],
                    ))
                  ],
                )),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget addButton() {
    return FilledButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: SizedBox(
                  width: 406,
                  height: 498,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(27, 25, 27, 25),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80,
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: ProgramForm(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Text(
          "Add Program",
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }

  Widget editButton() {
    return FilledButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: SizedBox(
                width: 406,
                height: 498,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(27, 25, 27, 25),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        // TODO: Pass Program object to form
                        child: ProgramForm(
                          program: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
  }

  Widget viewMore(){
    return FilledButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: SizedBox(
                width: 406,
                height: 498,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(27, 25, 27, 25),
                  child: ProgramViewMore()
                ),
              ),
            );
          }
        );
      }, 
      child: const Icon(
        Icons.remove_red_eye,
        color: Colors.white,
      )
    );
  }
  
  Widget programsCounter(){
    return const Row(
      children: [
        Text('Total Programs: '),
        
        //TODO: sa baba neto is yung code sa counter ng total course
        Text('1')
      ],
    );
  }

}
