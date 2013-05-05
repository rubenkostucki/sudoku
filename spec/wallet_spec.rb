require 'spec_helper'
require './lib/wallet'

describe Wallet do

  let(:wallet) {Wallet.new(12)}


  describe '.new' do
    context 'given nothing' do

      let(:wallet) {Wallet.new}

      it 'has no balance' do
        wallet.balance.should eq 0
      end
    end

    context 'given a balance' do
      it 'has a balance' do
        wallet.balance.should_not eq nil
      end
    end
  end

  describe '#add' do
    it 'adds 100 to balance' do
      wallet.add(100)
      wallet.balance.should eq 112
    end

    it 'adds 150 to balance' do
      wallet.add(150)
      wallet.balance.should eq 162
    end
  end

  describe '#pay' do
    context 'has enough balance'do
      it 'pays 10 from balance' do
        wallet.pay(10)
        wallet.balance.should eq 2
      end

      it 'pays 8 from balance' do
        wallet.pay(8)
        wallet.balance.should eq 4
      end
    end
    context 'does not have enough balance' do
      it 'raises excetion if not enough balance' do
        expect { wallet.pay(100)}.to raise_error(RuntimeError)
      end
    end
  end

  describe '#balance' do
  end
end
