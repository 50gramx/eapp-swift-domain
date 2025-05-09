//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: ethos/elint/services/product/identity/account/onboard_account.proto
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


/// Usage: instantiate `Elint_Services_Product_Identity_OnboardAccountServiceClient`, then call methods of this protocol to make API calls.
internal protocol Elint_Services_Product_Identity_OnboardAccountServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Elint_Services_Product_Identity_OnboardAccountServiceClientInterceptorFactoryProtocol? { get }

  func onboardAccount(
    _ request: Elint_Services_Product_Identity_OnboardAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_OnboardAccountRequest, Elint_Services_Product_Identity_OnboardAccountResponse>

  func reRequestCodeOnboardingAccount(
    _ request: Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountRequest, Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountResponse>

  func verifyOnboardingAccount(
    _ request: Elint_Services_Product_Identity_VerifyOnboardingAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_VerifyOnboardingAccountRequest, Elint_Services_Product_Identity_VerifyOnboardingAccountResponse>

  func authenticateOnboardedAccount(
    _ request: Elint_Services_Product_Identity_AuthenticateOnboardedAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Elint_Services_Product_Identity_AuthenticateOnboardedAccountRequest, Elint_Services_Product_Identity_AuthenticateOnboardedAccountResponse>
}

extension Elint_Services_Product_Identity_OnboardAccountServiceClientProtocol {
  internal var serviceName: String {
    return "elint.services.product.identity.OnboardAccountService"
  }

  /// Unary call to OnboardAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to OnboardAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func onboardAccount(
    _ request: Elint_Services_Product_Identity_OnboardAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_OnboardAccountRequest, Elint_Services_Product_Identity_OnboardAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.OnboardAccountService/OnboardAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeOnboardAccountInterceptors() ?? []
    )
  }

  /// Unary call to ReRequestCodeOnboardingAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to ReRequestCodeOnboardingAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func reRequestCodeOnboardingAccount(
    _ request: Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountRequest, Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.OnboardAccountService/ReRequestCodeOnboardingAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeReRequestCodeOnboardingAccountInterceptors() ?? []
    )
  }

  /// Unary call to VerifyOnboardingAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to VerifyOnboardingAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func verifyOnboardingAccount(
    _ request: Elint_Services_Product_Identity_VerifyOnboardingAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_VerifyOnboardingAccountRequest, Elint_Services_Product_Identity_VerifyOnboardingAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.OnboardAccountService/VerifyOnboardingAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeVerifyOnboardingAccountInterceptors() ?? []
    )
  }

  /// Unary call to AuthenticateOnboardedAccount
  ///
  /// - Parameters:
  ///   - request: Request to send to AuthenticateOnboardedAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func authenticateOnboardedAccount(
    _ request: Elint_Services_Product_Identity_AuthenticateOnboardedAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Elint_Services_Product_Identity_AuthenticateOnboardedAccountRequest, Elint_Services_Product_Identity_AuthenticateOnboardedAccountResponse> {
    return self.makeUnaryCall(
      path: "/elint.services.product.identity.OnboardAccountService/AuthenticateOnboardedAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeAuthenticateOnboardedAccountInterceptors() ?? []
    )
  }
}

internal protocol Elint_Services_Product_Identity_OnboardAccountServiceClientInterceptorFactoryProtocol {

  /// - Returns: Interceptors to use when invoking 'onboardAccount'.
  func makeOnboardAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_OnboardAccountRequest, Elint_Services_Product_Identity_OnboardAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'reRequestCodeOnboardingAccount'.
  func makeReRequestCodeOnboardingAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountRequest, Elint_Services_Product_Identity_ReRequestCodeOnboardingAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'verifyOnboardingAccount'.
  func makeVerifyOnboardingAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_VerifyOnboardingAccountRequest, Elint_Services_Product_Identity_VerifyOnboardingAccountResponse>]

  /// - Returns: Interceptors to use when invoking 'authenticateOnboardedAccount'.
  func makeAuthenticateOnboardedAccountInterceptors() -> [ClientInterceptor<Elint_Services_Product_Identity_AuthenticateOnboardedAccountRequest, Elint_Services_Product_Identity_AuthenticateOnboardedAccountResponse>]
}

internal final class Elint_Services_Product_Identity_OnboardAccountServiceClient: Elint_Services_Product_Identity_OnboardAccountServiceClientProtocol {
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Elint_Services_Product_Identity_OnboardAccountServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the elint.services.product.identity.OnboardAccountService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Elint_Services_Product_Identity_OnboardAccountServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

