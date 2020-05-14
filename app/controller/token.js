'use strict';

const Controller = require('egg').Controller;

class TokenController extends Controller {
  async show() {
    const { ctx } = this;
    const symbol = ctx.params.symbol;
    const data = await ctx.service.token.find(symbol);
    ctx.body = {
      ...ctx.msg.success,
      data,
    };
  }
  async index() {
    const { ctx } = this;
    const pageSize = parseInt(ctx.query.pageSize || 10);
    const pageIndex = parseInt(ctx.query.pageIndex || 1);
    const offset = (pageIndex - 1) * pageSize;
    const list = await ctx.service.token.list(offset, pageSize);
    ctx.body = {
      ...ctx.msg.success,
      data: list,
    };
  }
}

module.exports = TokenController;
