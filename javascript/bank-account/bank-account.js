export class BankAccount {
  constructor() {
    // this.balance = 0
  }

  open() {
    this._balance = 0
  }

  close() {
    throw new Error('Remove this statement and implement this function');
  }

  deposit(number) {
    this._balance = this._balance + number
  }

  withdraw(number) {
    this._balance = this._balance - number
  }

  get balance() {
    return(this._balance)
  }
}

export class ValueError extends Error {
  constructor() {
    super('Bank account error');
  }
}
