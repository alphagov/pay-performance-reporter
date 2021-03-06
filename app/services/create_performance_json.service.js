'use strict'

const moment = require('moment')
const lodash = require('lodash')

const filteredServices = require('./get_filtered_services.service')
const performanceDataService = require('./get_performance_report.service')

const DATE_FORMAT = 'yyyy-MM-DD'

function convertToUnits(value) {
  let stringOfAmount

  if (value >= 1000000 && value < 1000000000) {
    stringOfAmount = (value / 1.0e6).toFixed(1) + " million";
  } else if (value >= 10000000) {
    stringOfAmount = (value / 1.0e9).toFixed(1) + " billion";
  } else
    stringOfAmount = value.toString()

  return stringOfAmount;
}

async function createPerformanceJson() {
  const fromDate = moment('20160901', 'YYYYMMDD').format(DATE_FORMAT)
  const toDate = moment().utc().subtract(1, 'days').format(DATE_FORMAT)

  const services = await filteredServices.fetchAndFilterServices()
  const performanceReport = await performanceDataService.getPerformanceReport(fromDate, toDate)

  const countBySector = {}
  const countByOrganisation = {}

  services.forEach(service => {
    if (service.sector) {
      const sector = service.sector
      lodash.set(countBySector, sector, countBySector[sector] + 1 || 1)
    }
    const name = service.merchantDetails.name
    lodash.set(countByOrganisation, name, countByOrganisation[name] + 1 || 1)
  })

  return  {
    dateUpdated: moment().format('D MMMM YYYY'),
    numberOfPayments: convertToUnits(performanceReport.total_volume),
    totalPaymentAmount: convertToUnits(performanceReport.total_amount / 100),
    numberOfServices: services.length,
    numberOfOrganisations: Object.keys(countByOrganisation).length,
    serviceCountBySector: countBySector,
    serviceCountByOrganisation: countByOrganisation
  }
}

module.exports = {
  createPerformanceJson
}
