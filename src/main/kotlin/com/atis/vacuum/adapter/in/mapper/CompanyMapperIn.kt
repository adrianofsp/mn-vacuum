package com.atis.vacuum.adapter.`in`.mapper

import com.atis.vacuum.adapter.rest.dto.CompanyRequest
import com.atis.vacuum.application.domain.enterprise.Company

fun CompanyRequest.toDomain() = runCatching {
    with(this) {
        var company = Company(name)
        company
    }
}