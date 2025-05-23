// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/access_space_knowledge_domain_file.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Meta Message Definitions
struct Elint_Services_Product_Knowledge_File_SpaceKnowledgeDomainFileServicesAccessAuthDetails {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Auth Properties
  var account: Elint_Entity_Account {
    get {return _storage._account ?? Elint_Entity_Account()}
    set {_uniqueStorage()._account = newValue}
  }
  /// Returns true if `account` has been explicitly set.
  var hasAccount: Bool {return _storage._account != nil}
  /// Clears the value of `account`. Subsequent reads from it will return its default value.
  mutating func clearAccount() {_uniqueStorage()._account = nil}

  /// What is the session token wrt this request?
  var spaceKnowledgeDomainFileAccessSessionTokenDetails: Elint_Entity_PersistentSessionTokenDetails {
    get {return _storage._spaceKnowledgeDomainFileAccessSessionTokenDetails ?? Elint_Entity_PersistentSessionTokenDetails()}
    set {_uniqueStorage()._spaceKnowledgeDomainFileAccessSessionTokenDetails = newValue}
  }
  /// Returns true if `spaceKnowledgeDomainFileAccessSessionTokenDetails` has been explicitly set.
  var hasSpaceKnowledgeDomainFileAccessSessionTokenDetails: Bool {return _storage._spaceKnowledgeDomainFileAccessSessionTokenDetails != nil}
  /// Clears the value of `spaceKnowledgeDomainFileAccessSessionTokenDetails`. Subsequent reads from it will return its default value.
  mutating func clearSpaceKnowledgeDomainFileAccessSessionTokenDetails() {_uniqueStorage()._spaceKnowledgeDomainFileAccessSessionTokenDetails = nil}

  /// Meta Properties
  var requestedAt: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._requestedAt ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._requestedAt = newValue}
  }
  /// Returns true if `requestedAt` has been explicitly set.
  var hasRequestedAt: Bool {return _storage._requestedAt != nil}
  /// Clears the value of `requestedAt`. Subsequent reads from it will return its default value.
  mutating func clearRequestedAt() {_uniqueStorage()._requestedAt = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "elint.services.product.knowledge.file"

extension Elint_Services_Product_Knowledge_File_SpaceKnowledgeDomainFileServicesAccessAuthDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SpaceKnowledgeDomainFileServicesAccessAuthDetails"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "account"),
    2: .standard(proto: "space_knowledge_domain_file_access_session_token_details"),
    3: .standard(proto: "requested_at"),
  ]

  fileprivate class _StorageClass {
    var _account: Elint_Entity_Account? = nil
    var _spaceKnowledgeDomainFileAccessSessionTokenDetails: Elint_Entity_PersistentSessionTokenDetails? = nil
    var _requestedAt: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _account = source._account
      _spaceKnowledgeDomainFileAccessSessionTokenDetails = source._spaceKnowledgeDomainFileAccessSessionTokenDetails
      _requestedAt = source._requestedAt
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._account) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._spaceKnowledgeDomainFileAccessSessionTokenDetails) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._requestedAt) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._account {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._spaceKnowledgeDomainFileAccessSessionTokenDetails {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._requestedAt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Elint_Services_Product_Knowledge_File_SpaceKnowledgeDomainFileServicesAccessAuthDetails, rhs: Elint_Services_Product_Knowledge_File_SpaceKnowledgeDomainFileServicesAccessAuthDetails) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._account != rhs_storage._account {return false}
        if _storage._spaceKnowledgeDomainFileAccessSessionTokenDetails != rhs_storage._spaceKnowledgeDomainFileAccessSessionTokenDetails {return false}
        if _storage._requestedAt != rhs_storage._requestedAt {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
