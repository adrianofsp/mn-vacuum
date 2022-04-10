package com.atis.vacuum.adapter.rest.controller

import com.atis.vacuum.application.service.CompanyService
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get
import org.slf4j.LoggerFactory

@Controller
class CompanyController(
    private val companyService: CompanyService
) {

    private val logger = LoggerFactory.getLogger(CompanyController::class.java)

    @Get("/company")
    fun hello() = "Hello World!"

//    @PostMapping("/company")
//    fun register(@RequestBody companyRequest: CompanyRequest) = companyRequest.toDomain()
//        .onSuccess {
//            companyService.createOrUpdate(it)
//            logger.info("Empresa ${it.name} registrada")
//        }
//        .onFailure {
//            logger.error("Erro ao registrar empresa", it)
//        }

}