import request from '@/utils/request'

// 查询机柜管理列表
export function listCabinet(query) {
  return request({
    url: '/asset/cabinet/list',
    method: 'get',
    params: query
  })
}

// 查询机柜管理详细
export function getCabinet(number) {
  return request({
    url: '/asset/cabinet/' + number,
    method: 'get'
  })
}

// 新增机柜管理
export function addCabinet(data) {
  return request({
    url: '/asset/cabinet',
    method: 'post',
    data: data
  })
}

// 修改机柜管理
export function updateCabinet(data) {
  return request({
    url: '/asset/cabinet',
    method: 'put',
    data: data
  })
}

// 删除机柜管理
export function delCabinet(number) {
  return request({
    url: '/asset/cabinet/' + number,
    method: 'delete'
  })
}
