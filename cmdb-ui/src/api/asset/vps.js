import request from '@/utils/request'

// 查询云主机管理列表
export function listVps(query) {
  return request({
    url: '/asset/vps/list',
    method: 'get',
    params: query
  })
}

// 查询云主机管理详细
export function getVps(number) {
  return request({
    url: '/asset/vps/' + number,
    method: 'get'
  })
}

// 新增云主机管理
export function addVps(data) {
  return request({
    url: '/asset/vps',
    method: 'post',
    data: data
  })
}

// 修改云主机管理
export function updateVps(data) {
  return request({
    url: '/asset/vps',
    method: 'put',
    data: data
  })
}

// 删除云主机管理
export function delVps(number) {
  return request({
    url: '/asset/vps/' + number,
    method: 'delete'
  })
}
