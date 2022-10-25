import request from '@/utils/request'

// 查询机房管理列表
export function listRoom(query) {
  return request({
    url: '/asset/room/list',
    method: 'get',
    params: query
  })
}

// 查询机房管理详细
export function getRoom(number) {
  return request({
    url: '/asset/room/' + number,
    method: 'get'
  })
}

// 新增机房管理
export function addRoom(data) {
  return request({
    url: '/asset/room',
    method: 'post',
    data: data
  })
}

// 修改机房管理
export function updateRoom(data) {
  return request({
    url: '/asset/room',
    method: 'put',
    data: data
  })
}

// 删除机房管理
export function delRoom(number) {
  return request({
    url: '/asset/room/' + number,
    method: 'delete'
  })
}
