abstract class CarServiceCenter {
  abstract connect(): void;
  abstract repair(part: string): void;

  logAction(action: string): void {
    console.log(`[Log]: ${action}`);
  }
}

class ToyotaService extends CarServiceCenter {
  connect(): void {
    console.log('Connected to Toyota system...');
  }

  repair(part: string): void {
    this.logAction(`Repairing ${part} in Toyota system.`);
  }
}

const toyotaService = new ToyotaService();
toyotaService.connect();
toyotaService.repair("Engine");

