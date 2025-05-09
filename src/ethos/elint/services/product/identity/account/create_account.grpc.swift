//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ethos/elint/services/product/identity/account/create_account.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate `Elint_Services_Product_Identity_Account_CreateAccountServiceClient`, then call methods of this protocol to make API calls.
internal protocol Elint_Services_Product_Identity_Account_CreateAccountServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Elint_Services_Product_Identity_Account_CreateAccountServiceClientInterceptorFactoryProtocol? { get }

  func validateAccountWithMobile(
    _ request: Elint_Services_Product_Identity_Account_ValidateAccountWithMobileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_ValidateAccountWithMobileRequest, Elint_Services_Product_Identity_Account_ValidateAccountWithMobileResponse>

  func verificationAccount(
    _ request: Elint_Services_Product_Identity_Account_VerificationAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_VerificationAccountRequest, Elint_Services_Product_Identity_Account_VerificationAccountResponse>

  func captureAccountMetaDetails(
    _ request: Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsRequest, Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsResponse>
}

extension Elint_Services_Product_Identity_Account_CreateAccountServiceClientProtocol {
  internal var serviceName: String {
    return "elint.services.product.identity.account.CreateAccountService"
  }

  /// Unary call to ValidateAccountWithMobile
  ///
  /// - Parameters:
  ///   - request: Request to send to ValidateAccountWithMobile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func validateAccountWithMobile(
    _ request: Elint_Services_Product_Identity_Account_ValidateAccountWithMobileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_ValidateAccountWithMobileRequest, Elint_Services_Product_Identity_Account_ValidateAccountWithMobileResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.account.CreateAccountService/ValidateAccountWithMobile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidateAccountWithMobileInterceptors() ?? []
    )
  }

  /// Unary call to VerificationAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to VerificationAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func verificationAccount(
    _ request: Elint_Services_Product_Identity_Account_VerificationAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_VerificationAccountRequest, Elint_Services_Product_Identity_Account_VerificationAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.account.CreateAccountService/VerificationAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerificationAccountInterceptors() ?? []
    )
  }

  /// Unary call to CaptureAccountMetaDetails
  ///
  /// - Parameters:
  ///   - request: Request to send to CaptureAccountMetaDetails.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func captureAccountMetaDetails(
    _ request: Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsRequest, Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.account.CreateAccountService/CaptureAccountMetaDetails",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeCaptureAccountMetaDetailsInterceptors() ?? []
    )
  }
}

internal protocol Elint_Services_Product_Identity_Account_CreateAccountServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'validateAccountWithMobile'.
  func makeValidateAccountWithMobileInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_Account_ValidateAccountWithMobileRequest, Elint_Services_Product_Identity_Account_ValidateAccountWithMobileResponse>]

  /// - Returns: Interceptors to use when invoking 'verificationAccount'.
  func makeVerificationAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_Account_VerificationAccountRequest, Elint_Services_Product_Identity_Account_VerificationAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'captureAccountMetaDetails'.
  func makeCaptureAccountMetaDetailsInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsRequest, Elint_Services_Product_Identity_Account_CaptureAccountMetaDetailsResponse>]
}

internal final class Elint_Services_Product_Identity_Account_CreateAccountServiceClient: Elint_Services_Product_Identity_Account_CreateAccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Elint_Services_Product_Identity_Account_CreateAccountServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the elint.services.product.identity.account.CreateAccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Elint_Services_Product_Identity_Account_CreateAccountServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

