'use strict';
const SocialMoneyFactoryJSON = require('./SocialMoneyFactory.json');
const SocialMoneyJSON = require('./SocialMoney.json');
const UniswapFactoryABI = require('./uniswap_factory.json');

module.exports = {
  SocialMoneyFactoryABI: SocialMoneyFactoryJSON.abi,
  UniswapFactoryABI,
  SocialMoneyABI: SocialMoneyJSON.abi,
  SocialMoneyFactoryAddress: '0x9d21FDB292e69F3EF3d5De96D92248d314003fca',
  UniswapFactoryAddress: '0xc4d477bcf1578ebf4dee2318e19ab7649a83f5bb',
  infuraKey: '2e935bd97a964208a7009f6c47b27757',
};
