'use strict';

const Web3 = require('web3');
const SocialMoneyFactoryJSON = require('./app/public/SocialMoneyFactory.json');
const contractAddress = '0x926C352cA0F70742227dDc3613Ba7CBB787CC589';

class Bootstrapper {

  constructor(app) {
    this.app = app;
  }

  async didReady() {
    console.log('didReady....');
    const ctx = await this.app.createAnonymousContext();
    await this.loadWeb3(ctx);
  }
  async loadWeb3(ctx) {
    const ApiEndpoint = 'https://rinkeby.infura.io/v3/2e935bd97a964208a7009f6c47b27757';
    const WssEndpoint = 'wss://rinkeby.infura.io/ws/v3/2e935bd97a964208a7009f6c47b27757';
    const HttpProvider = new Web3.providers.HttpProvider(ApiEndpoint);
    const WebsocketProvider = new Web3.providers.WebsocketProvider(WssEndpoint);
    const web3 = new Web3(HttpProvider);
    web3.setProvider(WebsocketProvider);
    const contract = new web3.eth.Contract(SocialMoneyFactoryJSON.abi, contractAddress);
    contract.events.NewToken({})
      .on('data', async event => {
        ctx.logger.info('app loadWeb3 event NewToken: %j', event);
        // const { ProposalID, name, description, creator } = event.returnValues;
        // const blockNumber = event.blockNumber;
        // const trx = event.transactionHash;
      })
      .on('error', error => {
        ctx.logger.error('app loadWeb3 event ProposalCreated: %j', error);
      });
  }

}

module.exports = Bootstrapper;
