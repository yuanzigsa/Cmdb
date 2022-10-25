import request from '@/utils/request'

// 查询自有资产列表
export function listOwn(query) {
  return request({
    url: '/asset/own/list',
    method: 'get',
    params: query
  })
}

// 查询自有资产详细
export function getOwn(number) {
  return request({
    url: '/asset/own/' + number,
    method: 'get'
  })
}

// 新增自有资产
export function addOwn(data) {
  return request({
    url: '/asset/own',
    method: 'post',
    data: data
  })
}

// 修改自有资产
export function updateOwn(data) {
  return request({
    url: '/asset/own',
    method: 'put',
    data: data
  })
}

// 删除自有资产
export function delOwn(number) {
  return request({
    url: '/asset/own/' + number,
    method: 'delete'
  })
}
