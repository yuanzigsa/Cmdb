import request from '@/utils/request'

// 查询上联IP资源列表
export function listIp(query) {
  return request({
    url: '/asset/ip/list',
    method: 'get',
    params: query
  })
}

// 查询上联IP资源详细
export function getIp(number) {
  return request({
    url: '/asset/ip/' + number,
    method: 'get'
  })
}

// 新增上联IP资源
export function addIp(data) {
  return request({
    url: '/asset/ip',
    method: 'post',
    data: data
  })
}

// 修改上联IP资源
export function updateIp(data) {
  return request({
    url: '/asset/ip',
    method: 'put',
    data: data
  })
}

// 删除上联IP资源
export function delIp(number) {
  return request({
    url: '/asset/ip/' + number,
    method: 'delete'
  })
}
