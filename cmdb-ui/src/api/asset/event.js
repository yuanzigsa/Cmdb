import request from '@/utils/request'

// 查询事件管理列表
export function listEvent(query) {
  return request({
    url: '/asset/event/list',
    method: 'get',
    params: query
  })
}

// 查询事件管理详细
export function getEvent(number) {
  return request({
    url: '/asset/event/' + number,
    method: 'get'
  })
}

// 新增事件管理
export function addEvent(data) {
  return request({
    url: '/asset/event',
    method: 'post',
    data: data
  })
}

// 修改事件管理
export function updateEvent(data) {
  return request({
    url: '/asset/event',
    method: 'put',
    data: data
  })
}

// 删除事件管理
export function delEvent(number) {
  return request({
    url: '/asset/event/' + number,
    method: 'delete'
  })
}
