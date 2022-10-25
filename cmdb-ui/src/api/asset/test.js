import request from '@/utils/request'

// 查询测试机管理列表
export function listTest(query) {
  return request({
    url: '/asset/test/list',
    method: 'get',
    params: query
  })
}

// 查询测试机管理详细
export function getTest(number) {
  return request({
    url: '/asset/test/' + number,
    method: 'get'
  })
}

// 新增测试机管理
export function addTest(data) {
  return request({
    url: '/asset/test',
    method: 'post',
    data: data
  })
}

// 修改测试机管理
export function updateTest(data) {
  return request({
    url: '/asset/test',
    method: 'put',
    data: data
  })
}

// 删除测试机管理
export function delTest(number) {
  return request({
    url: '/asset/test/' + number,
    method: 'delete'
  })
}
