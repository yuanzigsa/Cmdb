import request from '@/utils/request'

// 查询客户IP资源列表
export function listDownip(query) {
  return request({
    url: '/asset/downip/list',
    method: 'get',
    params: query
  })
}

// 查询客户IP资源详细
export function getDownip(number) {
  return request({
    url: '/asset/downip/' + number,
    method: 'get'
  })
}

// 新增客户IP资源
export function addDownip(data) {
  return request({
    url: '/asset/downip',
    method: 'post',
    data: data
  })
}

// 修改客户IP资源
export function updateDownip(data) {
  return request({
    url: '/asset/downip',
    method: 'put',
    data: data
  })
}

// 删除客户IP资源
export function delDownip(number) {
  return request({
    url: '/asset/downip/' + number,
    method: 'delete'
  })
}
