export class BankAccount {
  constructor() {
    this._open = false
  }

  open() {
    if (this._open == true) {
      throw new ValueError('the account is already open')
    }

    this._open = true
    this._balance = 0
  }

  close() {
    this.validateAccountStatus()

    this._open = false
  }

  deposit(number) {
    this.validateAccountStatus()
    this.validateDeposit(number)

    this._balance = this._balance + number
  }

  withdraw(number) {
    this.validateAccountStatus()
    this.validateWithdrawal(number)

    this._balance = this._balance - number
  }

  get balance() {
    this.validateAccountStatus()

    return(this._balance)
  }

  validateAccountStatus = () => {
    if (this._open == false) {
      throw new ValueError('the account is closed')
    }
  }

  validateWithdrawal = (number) => {
    if (number > this._balance) {
      throw new ValueError('too much!')
    }
    if (number < 0) {
      throw new ValueError('too little!')
    }
  }

  validateDeposit = (number) => {
    if (number < 0) {
      throw new ValueError('too little!')
    }
  }
}

export class ValueError extends Error {
  constructor() {
    super('Bank account error');
  }
}
