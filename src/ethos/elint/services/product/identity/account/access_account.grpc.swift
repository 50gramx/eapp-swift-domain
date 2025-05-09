//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ethos/elint/services/product/identity/account/access_account.proto
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


/// Usage: instantiate `Elint_Services_Product_Identity_Account_AccessAccountServiceClient`, then call methods of this protocol to make API calls.
internal protocol Elint_Services_Product_Identity_Account_AccessAccountServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Elint_Services_Product_Identity_Account_AccessAccountServiceClientInterceptorFactoryProtocol? { get }

  func validateAccount(
    _ request: Elint_Services_Product_Identity_Account_ValidateAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_ValidateAccountRequest, Elint_Services_Product_Identity_Account_ValidateAccountResponse>

  func verifyAccount(
    _ request: Elint_Services_Product_Identity_Account_VerifyAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_VerifyAccountRequest, Elint_Services_Product_Identity_Account_VerifyAccountResponse>
}

extension Elint_Services_Product_Identity_Account_AccessAccountServiceClientProtocol {
  internal var serviceName: String {
    return "elint.services.product.identity.account.AccessAccountService"
  }

  /// Unary call to ValidateAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to ValidateAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func validateAccount(
    _ request: Elint_Services_Product_Identity_Account_ValidateAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_ValidateAccountRequest, Elint_Services_Product_Identity_Account_ValidateAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.account.AccessAccountService/ValidateAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeValidateAccountInterceptors() ?? []
    )
  }

  /// Unary call to VerifyAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to VerifyAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func verifyAccount(
    _ request: Elint_Services_Product_Identity_Account_VerifyAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_Account_VerifyAccountRequest, Elint_Services_Product_Identity_Account_VerifyAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.account.AccessAccountService/VerifyAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyAccountInterceptors() ?? []
    )
  }
}

internal protocol Elint_Services_Product_Identity_Account_AccessAccountServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'validateAccount'.
  func makeValidateAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_Account_ValidateAccountRequest, Elint_Services_Product_Identity_Account_ValidateAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'verifyAccount'.
  func makeVerifyAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_Account_VerifyAccountRequest, Elint_Services_Product_Identity_Account_VerifyAccountResponse>]
}

internal final class Elint_Services_Product_Identity_Account_AccessAccountServiceClient: Elint_Services_Product_Identity_Account_AccessAccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Elint_Services_Product_Identity_Account_AccessAccountServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the elint.services.product.identity.account.AccessAccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Elint_Services_Product_Identity_Account_AccessAccountServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

