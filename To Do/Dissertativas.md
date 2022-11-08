#  <#Title#>

# 01
O que é uma propriedade/método de tipo (estático) ?

Resposta: É uma propriedade/método que pode ser utilizado sem que precise ter um método da classe instanciado

#02
O que é um protocolo?

Resposta: É como se fosse um esboço/protótipo de uma classe ou struct. Usamos protocolos para fazer com que uma classe se adeque a ele. 

#03
Para utilizar table views a controller que gerenciar ela tem que estar em conformidade ao menos com um protocolo, e é comum que também esteja a um segundo. Quais são eles?

Resposta:  UITableViewDataSource e UiTableViewDelegate

#04
Quem estiver em conformidade com o protocolo UITableViewDataSource deve implementar ao menos dois métodos, quais são eles e para que cada um serve?

Resposta: São eles: cellForRowAt e numberOfRowsInSection

#05
Qual a diferença entre uma variável/constante declarada dentro de um método e variáveis/constantes que são propriedades de uma classe/struct?

Resposta:  A var/const declaradas dentro de um método só podem ser utilizadas dentro do contexto do mesmo. Enquanto as que são propriedade de uma classe/struct podem ser usadas em todo o contexto da classe.

#06
Uma classe/struct pode ter como propriedade uma closure? Como declaramos e usamos essa propriedade?

Resposta: Pode ter.

#07
O que é um ciclo de vida (life cycle)?

Resposta: É o ciclo de vida de uma ViewController. Desde o momento que ela é chamada até o momento onde ela é descartada

#08
Para que serve o método loadView? Em que momento ele é invocado? Quando usamos e quando não é recomendado utilizar esse método? Quantas vezes ele é executado?

Resposta: Este método é utilizado para carregar a view. Só é invocado quando a view é criada.

#09
Em relação ao método viewDidLoad, quando ele é executado? Que tipo de coisas podemos fazer dentro desse método? Quantas vezes ele é invocado?

#10
Qual o intuito do método viewWillAppear? Quando e quantas vezes ele é chamado?
