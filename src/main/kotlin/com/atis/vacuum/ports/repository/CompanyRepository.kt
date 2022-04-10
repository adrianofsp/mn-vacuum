package com.atis.vacuum.ports.repository

import com.atis.vacuum.application.domain.enterprise.Company

interface CompanyRepository {

    fun manage(company: Company)

}