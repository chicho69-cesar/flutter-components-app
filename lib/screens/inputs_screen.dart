import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Creamos una key para mantener la referencia del formulario y de esta manera,
    poder acceder a sus valores */
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Cesar',
      'last_name': 'Villalobos Olmos',
      'email': 'cesar-09a@hotmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Inputs y Forms',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey, // Guardamos la key del formulario
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'first_name',
                  formValues: formValues,
                  hinText: 'Nombre...',
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                  suffixIcon: Icons.supervised_user_circle_outlined,
                  icon: Icons.supervised_user_circle,
                ),

                const SizedBox(height: 30),

                CustomInputField(
                  formProperty: 'last_name',
                  formValues: formValues,
                  hinText: 'Apellido...',
                  labelText: 'Apellido',
                  helperText: 'Apellido del usuario',
                ),

                const SizedBox(height: 30),

                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  hinText: 'Email...',
                  labelText: 'Email',
                  helperText: 'Email del usuario',
                  textInputType: TextInputType.emailAddress,
                  suffixIcon: Icons.email,
                  icon: Icons.alternate_email_sharp
                ),

                const SizedBox(height: 30),
                
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues,
                  hinText: 'Password...',
                  labelText: 'Password',
                  helperText: 'Password del usuario',
                  obscureText: true,
                ),

                const SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem( value: 'Admin', child: Text('Admin', style: TextStyle(fontSize: 18))),
                    DropdownMenuItem( value: 'Superuser', child: Text('Superuser', style: TextStyle(fontSize: 18))),
                    DropdownMenuItem( value: 'Developer', child: Text('Developer', style: TextStyle(fontSize: 18))),
                    DropdownMenuItem( value: 'Jr. Developer', child: Text('Jr. Developer', style: TextStyle(fontSize: 18))),
                  ], 
                  onChanged: ((value) {
                    formValues['role'] = value ?? 'Jr. Developer';
                  })
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {
                    // Ocultamos el teclado
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  }, 
                  child: const SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: Center(
                      child: Text(
                        'Guardar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
