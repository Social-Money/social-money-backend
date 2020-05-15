'use strict';
const SocialMoneyFactoryJSON = require('./SocialMoneyFactory.json');
const SocialMoneyJSON = require('./SocialMoney.json');
const UniswapFactoryABI = require('./uniswap_factory.json');

module.exports = {
  SocialMoneyFactoryABI: SocialMoneyFactoryJSON.abi,
  UniswapFactoryABI,
  SocialMoneyABI: SocialMoneyJSON.abi,
  SocialMoneyFactoryAddress: '0x57DAE729e185B0b7e22636F6d4D3214c800C086b',
  UniswapFactoryAddress: '0x09cc1a1c32b4adcff81fa3b44a142d6e023bc2eb',
  infuraKey: '2e935bd97a964208a7009f6c47b27757',
};
