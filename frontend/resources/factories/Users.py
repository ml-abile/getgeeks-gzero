from faker import Faker
fake = Faker()

import bcrypt

def get_hashed_pass(password):
    hashed = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt(8))
    return hashed



def factory_user(target):

    data = {
        'faker': {
            'name': fake.first_name(),
            'lastname': fake.last_name(),
            'email': fake.free_email(),
            'password': 'pwd123'
        },
        'wrong_email': {
            'name': 'Pedro',
            'lastname': 'De Lara',
            'email': 'pedro_dl*hotmail.com',
            'password': 'pwd123'
        },
        'login': {
            'name': 'Moira',
            'lastname': 'Abile',
            'email': 'moira-abile@hotmail.com',
            'password': 'pwd123'
        },
        'be_geek': {
            'name': 'Kim',
            'lastname': "Dotcom",
            'email': 'kim@dot.com',
            'password': 'pwd123',
            'geek_profile':{
                'whats': '14997999999',
                'desc': 'Mussum Ipsum, cacilds vidis litro abertis. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.Leite de capivaris, leite de mula manquis sem cabeça.Casamentiss faiz malandris se pirulitá.Manduma pindureta quium dia nois paga.',
                'printer_repair': 'Sim',
                'work':'Remoto',
                'cost':'100'      
            }
        },
        'attempt_be_geek': {
            'name': 'Dio',
            'lastname': "Linux",
            'email': 'dio@linux.com',
            'password': 'pwd123',
            'geek_profile':{
                'whats': '14997999999',
                'desc': 'Cevadis im ampola pa arma uma pindureta, monti palavris qui num. Pra lá , depois divoltis porris, paradis.Suco de cevadiss deixa as pessoas mais interessantis.Interagi no mé, cursus quis, vehicula ac nisi.Não sou faixa preta cumpadi, sou preto inteirissss',
                'printer_repair': 'Não',
                'work':'Ambos',
                'cost':'150'      
            }
        }        
    }

    return data[target]

# Usando faker library
# def factory_wrong_email():

#     first_name = fake.first_name()

#     return {
#         'name': first_name,
#         'lastname': fake.last_name(),
#         'email': first_name.lower() + '&gmail.com',
#         'password': 'pwd123'
#     }
    
