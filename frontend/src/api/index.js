import HttpRequest from '@/axios/api.request'

const api = {
  readerPre: '/api/reader',
  exporterPre: '/api/exporter',
  operatorPre: '/api/operator',
  statisticsPre: '/api/statistics',
}

export const uploadFileAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.readerPre}/uploadFile`,
    method: 'post',
    params: parameter
  })
}

export const getAllFilesAPI = () => {
  return HttpRequest.request({
    url: `${api.readerPre}/getAllFiles`,
    method: 'get',
  })
}

export const deleteFileByIdAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.readerPre}/deleteFileById`,
    method: 'delete',
    params: {
      fileId: parameter
    }
  })
}

export const getEntitiesAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getEntities`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const getRelationsAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getRelations`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const addEntityAPI = (parameter) => {
  console.log(parameter)
  return HttpRequest.request({
    url: `${api.operatorPre}/addEntity`,
    method: 'post',
    params: {
      fileId: parameter.fileId,
      name: parameter.name,
      color: parameter.color,
      entityType: parameter.entityType
    }
  })
}

export const addRelationAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/addRelation`,
    method: 'post',
    params: {
      fileId: parameter.fileId,
      label: parameter.label,
      source: parameter.source,
      target: parameter.target,
      type: parameter.lineType,
      color: parameter.color,
      relationType: parameter.relationType,
    }
  })
}

export const deleteEntityAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/deleteEntity`,
    method: 'delete',
    params: {
      id: parameter
    }
  })
}

export const deleteRelationAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/deleteRelation`,
    method: 'delete',
    params: {
      id: parameter
    }
  })
}

export const updateEntityParadeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/updateEntityParade`,
    method: 'put',
    params: {
      entityId: parameter.backId,
      x2: parameter.x,
      y2: parameter.y,
    }
  })
}

export const updateCanvasParadeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/updateCanvasParade`,
    method: 'put',
    params: {
      fileId: parameter.fileId,
      zoom2: parameter.zoom,
      pointX2: parameter.x,
      pointY2: parameter.y,
    }
  })
}

export const getCanvasParadeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getCanvasParade`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const updateEntityPositionAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/updateEntityPosition`,
    method: 'put',
    params: {
      entityId: parameter.backId,
      x: parameter.x,
      y: parameter.y,
    }
  })
}

export const updateCanvasPositionAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/updateCanvasPosition`,
    method: 'put',
    params: {
      fileId: parameter.fileId,
      pointX: parameter.x,
      pointY: parameter.y,
      zoom: parameter.zoom,
    }
  })
}

export const getCanvasPointXAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getCanvasPointX`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const getCanvasPointYAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getCanvasPointY`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const getCanvasZoomAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/getCanvasZoom`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const updateEntityAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/updateEntity`,
    method: 'put',
    params: {
      id: parameter.backId,
      name: parameter.name,
      color: parameter.color,
      shape: parameter.shape,
      entityType: parameter.entityType,
      entitySize: parameter.entitySize,
      fontSize: parameter.fontSize
    }
  })
}

export const updateRelationAPI = (parameter) => {
  console.log(parameter)
  return HttpRequest.request({
    url: `${api.operatorPre}/updateRelation`,
    method: 'put',
    params: {
      id: parameter.backId,
      relationName: parameter.label,
      source: parameter.source,
      target: parameter.target,
      lineType: parameter.lineType,
      relationType: parameter.relationType
    }
  })
}

export const exportXMLFileAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.exporterPre}/exportXMLFile`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

//mxl
export const getAllEntityTypesAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getAllEntityTypes`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const getAllRelationTypesAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getAllRelationTypes`,
    method: 'get',
    params: {
      fileId: parameter
    }
  })
}

export const getEntitiesByTypeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getEntitiesByType`,
    method: 'get',
    params: {
      fileId: parameter.fileId,
      entityType: parameter.entityType
    }
  })
}

export const getEntityNumByTypeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getEntityNumByType`,
    method: 'get',
    params: {
      fileId: parameter.fileId,
      entityType: parameter.entityType
    }
  })
}

export const getRelationNumByEntityAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getRelationNumByEntity`,
    method: 'get',
    params: {
      fileId: parameter.fileId,
      entityName: parameter.entityName
    }
  })
}

export const getRelationsByTypeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getRelationsByType`,
    method: 'get',
    params: {
      fileId: parameter.fileId,
      relationType: parameter.relationType
    }
  })
}

export const getRelationNumByTypeAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.statisticsPre}/getRelationNumByType`,
    method: 'get',
    params: {
      fileId: parameter.fileId,
      relationType: parameter.relationType
    }
  })
}

export const setRelationLabelVisibleOrNotAPI = (parameter) => {
  return HttpRequest.request({
    url: `${api.operatorPre}/setRelationLabelVisibleOrNot`,
    method: 'put',
    params: {
      relationId: parameter.relationId,
      labelVisible: parameter.labelVisible
    }
  })
}
