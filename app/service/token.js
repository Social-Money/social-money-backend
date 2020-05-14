'use strict';

const Service = require('egg').Service;

class TokenService extends Service {
  async create() {}
  async find(symbol) {
    const { ctx } = this;
    return ctx.model.Token.find({
      where: {
        word_jianti: symbol,
      },
    });
  }
  async list(offset, limit) {
    const { ctx } = this;
    const result = {};
    result.count = await ctx.model.Token.count();
    result.rows = await ctx.model.Token.findAll({
      offset, limit,
    });
    return result;
  }
}

module.exports = TokenService;
