// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: cosmos.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Cosmosapi_Coin {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: String = String()

  public var denom: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Cosmosapi_StdFee {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: [Cosmosapi_Coin] = []

  public var gas: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Cosmosapi_CosmosTxInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var accountNumber: String {
    get {return _storage._accountNumber}
    set {_uniqueStorage()._accountNumber = newValue}
  }

  public var chainID: String {
    get {return _storage._chainID}
    set {_uniqueStorage()._chainID = newValue}
  }

  public var fee: Cosmosapi_StdFee {
    get {return _storage._fee ?? Cosmosapi_StdFee()}
    set {_uniqueStorage()._fee = newValue}
  }
  /// Returns true if `fee` has been explicitly set.
  public var hasFee: Bool {return _storage._fee != nil}
  /// Clears the value of `fee`. Subsequent reads from it will return its default value.
  public mutating func clearFee() {_uniqueStorage()._fee = nil}

  public var memo: String {
    get {return _storage._memo}
    set {_uniqueStorage()._memo = newValue}
  }

  public var msgs: String {
    get {return _storage._msgs}
    set {_uniqueStorage()._msgs = newValue}
  }

  public var sequence: String {
    get {return _storage._sequence}
    set {_uniqueStorage()._sequence = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Cosmosapi_CosmosTxOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var signature: String = String()

  public var txHash: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "cosmosapi"

extension Cosmosapi_Coin: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Coin"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "denom"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.denom)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 1)
    }
    if !self.denom.isEmpty {
      try visitor.visitSingularStringField(value: self.denom, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmosapi_Coin, rhs: Cosmosapi_Coin) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.denom != rhs.denom {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmosapi_StdFee: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StdFee"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "gas"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.gas)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.amount.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.amount, fieldNumber: 1)
    }
    if !self.gas.isEmpty {
      try visitor.visitSingularStringField(value: self.gas, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmosapi_StdFee, rhs: Cosmosapi_StdFee) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.gas != rhs.gas {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmosapi_CosmosTxInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CosmosTxInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "account_number"),
    2: .standard(proto: "chain_id"),
    3: .same(proto: "fee"),
    4: .same(proto: "memo"),
    5: .same(proto: "msgs"),
    6: .same(proto: "sequence"),
  ]

  fileprivate class _StorageClass {
    var _accountNumber: String = String()
    var _chainID: String = String()
    var _fee: Cosmosapi_StdFee? = nil
    var _memo: String = String()
    var _msgs: String = String()
    var _sequence: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _accountNumber = source._accountNumber
      _chainID = source._chainID
      _fee = source._fee
      _memo = source._memo
      _msgs = source._msgs
      _sequence = source._sequence
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._accountNumber)
        case 2: try decoder.decodeSingularStringField(value: &_storage._chainID)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._fee)
        case 4: try decoder.decodeSingularStringField(value: &_storage._memo)
        case 5: try decoder.decodeSingularStringField(value: &_storage._msgs)
        case 6: try decoder.decodeSingularStringField(value: &_storage._sequence)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._accountNumber.isEmpty {
        try visitor.visitSingularStringField(value: _storage._accountNumber, fieldNumber: 1)
      }
      if !_storage._chainID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._chainID, fieldNumber: 2)
      }
      if let v = _storage._fee {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if !_storage._memo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._memo, fieldNumber: 4)
      }
      if !_storage._msgs.isEmpty {
        try visitor.visitSingularStringField(value: _storage._msgs, fieldNumber: 5)
      }
      if !_storage._sequence.isEmpty {
        try visitor.visitSingularStringField(value: _storage._sequence, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmosapi_CosmosTxInput, rhs: Cosmosapi_CosmosTxInput) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._accountNumber != rhs_storage._accountNumber {return false}
        if _storage._chainID != rhs_storage._chainID {return false}
        if _storage._fee != rhs_storage._fee {return false}
        if _storage._memo != rhs_storage._memo {return false}
        if _storage._msgs != rhs_storage._msgs {return false}
        if _storage._sequence != rhs_storage._sequence {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Cosmosapi_CosmosTxOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CosmosTxOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    2: .same(proto: "txHash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.signature)
      case 2: try decoder.decodeSingularStringField(value: &self.txHash)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularStringField(value: self.signature, fieldNumber: 1)
    }
    if !self.txHash.isEmpty {
      try visitor.visitSingularStringField(value: self.txHash, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Cosmosapi_CosmosTxOutput, rhs: Cosmosapi_CosmosTxOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.txHash != rhs.txHash {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
