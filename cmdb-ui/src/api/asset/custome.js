import request from '@/utils/request'

// 查询客户资产列表
export function listCustome(query) {
  return request({
    url: '/asset/custome/list',
    method: 'get',
    params: query
  })
}

// 查询客户资产详细
export function getCustome(number) {
  return request({
    url: '/asset/custome/' + number,
    method: 'get'
  })
}

// 新增客户资产
export function addCustome(data) {
  return request({
    url: '/asset/custome',
    method: 'post',
    data: data
  })
}

// 修改客户资产
export function updateCustome(data) {
  return request({
    url: '/asset/custome',
    method: 'put',
    data: data
  })
}

// 删除客户资产
export function delCustome(number) {
  return request({
    url: '/asset/custome/' + number,
    method: 'delete'
  })
}
