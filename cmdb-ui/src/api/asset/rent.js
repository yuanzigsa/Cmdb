import request from '@/utils/request'

// 查询租用资产列表
export function listRent(query) {
  return request({
    url: '/asset/rent/list',
    method: 'get',
    params: query
  })
}

// 查询租用资产详细
export function getRent(number) {
  return request({
    url: '/asset/rent/' + number,
    method: 'get'
  })
}

// 新增租用资产
export function addRent(data) {
  return request({
    url: '/asset/rent',
    method: 'post',
    data: data
  })
}

// 修改租用资产
export function updateRent(data) {
  return request({
    url: '/asset/rent',
    method: 'put',
    data: data
  })
}

// 删除租用资产
export function delRent(number) {
  return request({
    url: '/asset/rent/' + number,
    method: 'delete'
  })
}
