import '../model/ServiceOrder.dart';

class Database {
  static final Database _instance = Database._internal();

  Database._internal();

  factory Database() => _instance;

  final List<ServiceOrder> serviceOrdersMock = [
    ServiceOrder(
      id: 'OS-2026-001',
      cliente: 'Lab de Informática 3',
      status: 'Em Andamento',
      desc: 'Manutenção preventiva dos computadores.',
    ),
    ServiceOrder(
      id: 'OS-2026-002',
      cliente: 'Secretaria Executiva',
      status: 'Aberta',
      desc: 'Configuração de nova sub-rede local.',
    ),
    ServiceOrder(
      id: 'OS-2026-003',
      cliente: 'Bloco Técnico B',
      status: 'Concluída',
      desc: 'Troca de switch e testes de patch panel.',
    ),
  ];

  List<ServiceOrder> getOrders() {
    return serviceOrdersMock;
  }

  void addOrder(ServiceOrder order) {
    serviceOrdersMock.add(order);
  }
}