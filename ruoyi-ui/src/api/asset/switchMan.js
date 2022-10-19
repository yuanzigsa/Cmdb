import request from '@/utils/request'

// 查询交换机管理列表
export function listSwitchMan(query) {
  return request({
    url: '/asset/switchMan/list',
    method: 'get',
    params: query
  })
}

// 查询交换机管理详细
export function getSwitchMan(number) {
  return request({
    url: '/asset/switchMan/' + number,
    method: 'get'
  })
}

// 新增交换机管理
export function addSwitchMan(data) {
  return request({
    url: '/asset/switchMan',
    method: 'post',
    data: data
  })
}

// 修改交换机管理
export function updateSwitchMan(data) {
  return request({
    url: '/asset/switchMan',
    method: 'put',
    data: data
  })
}

// 删除交换机管理
export function delSwitchMan(number) {
  return request({
    url: '/asset/switchMan/' + number,
    method: 'delete'
  })
}
