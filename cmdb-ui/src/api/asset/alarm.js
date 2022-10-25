import request from '@/utils/request'

// 查询监控告警列表
export function listAlarm(query) {
  return request({
    url: '/asset/alarm/list',
    method: 'get',
    params: query
  })
}

// 查询监控告警详细
export function getAlarm(number) {
  return request({
    url: '/asset/alarm/' + number,
    method: 'get'
  })
}

// 新增监控告警
export function addAlarm(data) {
  return request({
    url: '/asset/alarm',
    method: 'post',
    data: data
  })
}

// 修改监控告警
export function updateAlarm(data) {
  return request({
    url: '/asset/alarm',
    method: 'put',
    data: data
  })
}

// 删除监控告警
export function delAlarm(number) {
  return request({
    url: '/asset/alarm/' + number,
    method: 'delete'
  })
}
