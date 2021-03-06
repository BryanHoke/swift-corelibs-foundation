// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2015 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//


// Input options
//  NSXMLNodeOptionsNone
//  NSXMLNodePreserveAll
//  NSXMLNodePreserveNamespaceOrder
//  NSXMLNodePreserveAttributeOrder
//  NSXMLNodePreserveEntities
//  NSXMLNodePreservePrefixes
//  NSXMLNodePreserveCDATA
//  NSXMLNodePreserveEmptyElements
//  NSXMLNodePreserveQuotes
//  NSXMLNodePreserveWhitespace
//  NSXMLNodeLoadExternalEntities
//  NSXMLNodeLoadExternalEntitiesSameOriginOnly

//  NSXMLDocumentTidyHTML
//  NSXMLDocumentTidyXML

//  NSXMLDocumentValidate

// Output options
//  NSXMLNodePrettyPrint
//  NSXMLDocumentIncludeContentTypeDeclaration

/*!
    @typedef NSXMLDocumentContentKind
	@abstract Define what type of document this is.
	@constant NSXMLDocumentXMLKind The default document type
	@constant NSXMLDocumentXHTMLKind Set if NSXMLDocumentTidyHTML is set and HTML is detected
	@constant NSXMLDocumentHTMLKind Outputs empty tags without a close tag, eg <br>
	@constant NSXMLDocumentTextKind Output the string value of the document
*/
public enum NSXMLDocumentContentKind : UInt {
    
    case XMLKind
    case XHTMLKind
    case HTMLKind
    case TextKind
}

/*!
    @class NSXMLDocument
    @abstract An XML Document
	@discussion Note: if the application of a method would result in more than one element in the children array, an exception is thrown. Trying to add a document, namespace, attribute, or node with a parent also throws an exception. To add a node with a parent first detach or create a copy of it.
*/
public class NSXMLDocument : NSXMLNode {
    
    /*!
        @method initWithXMLString:options:error:
        @abstract Returns a document created from either XML or HTML, if the HTMLTidy option is set. Parse errors are returned in <tt>error</tt>.
    */
    public convenience init(XMLString string: String, options mask: Int) throws { NSUnimplemented() }
    
    /*!
        @method initWithContentsOfURL:options:error:
        @abstract Returns a document created from the contents of an XML or HTML URL. Connection problems such as 404, parse errors are returned in <tt>error</tt>.
    */
    public convenience init(contentsOfURL url: NSURL, options mask: Int) throws { NSUnimplemented() }
    
    /*!
        @method initWithData:options:error:
        @abstract Returns a document created from data. Parse errors are returned in <tt>error</tt>.
    */
    public init(data: NSData, options mask: Int) throws { NSUnimplemented() } //primitive
    
    /*!
        @method initWithRootElement:
        @abstract Returns a document with a single child, the root element.
    */
    public init(rootElement element: NSXMLElement?) { NSUnimplemented() }
    
    public class func replacementClassForClass(cls: AnyClass) -> AnyClass { NSUnimplemented() }
    
    /*!
        @method characterEncoding
        @abstract Sets the character encoding to an IANA type.
    */
    public var characterEncoding: String? { NSUnimplemented() } //primitive
    
    /*!
        @method version
        @abstract Sets the XML version. Should be 1.0 or 1.1.
    */
    public var version: String? { NSUnimplemented() } //primitive
    
    /*!
        @method standalone
        @abstract Set whether this document depends on an external DTD. If this option is set the standalone declaration will appear on output.
    */
    public var standalone: Bool //primitive
    
    /*!
        @method documentContentKind
        @abstract The kind of document.
    */
    public var documentContentKind: NSXMLDocumentContentKind //primitive
    
    /*!
        @method MIMEType
        @abstract Set the MIME type, eg text/xml.
    */
    public var MIMEType: String? //primitive
    
    /*!
        @method DTD
        @abstract Set the associated DTD. This DTD will be output with the document.
    */
    /*@NSCopying*/ public var DTD: NSXMLDTD? //primitive
    
    /*!
        @method setRootElement:
        @abstract Set the root element. Removes all other children including comments and processing-instructions.
    */
    public func setRootElement(root: NSXMLElement) { NSUnimplemented() }
    
    /*!
        @method rootElement
        @abstract The root element.
    */
    public func rootElement() -> NSXMLElement? { NSUnimplemented() } //primitive
    
    /*!
        @method insertChild:atIndex:
        @abstract Inserts a child at a particular index.
    */
    public func insertChild(child: NSXMLNode, atIndex index: Int) { NSUnimplemented() } //primitive
    
    /*!
        @method insertChildren:atIndex:
        @abstract Insert several children at a particular index.
    */
    public func insertChildren(children: [NSXMLNode], atIndex index: Int) { NSUnimplemented() }
    
    /*!
        @method removeChildAtIndex:atIndex:
        @abstract Removes a child at a particular index.
    */
    public func removeChildAtIndex(index: Int) { NSUnimplemented() } //primitive
    
    /*!
        @method setChildren:
        @abstract Removes all existing children and replaces them with the new children. Set children to nil to simply remove all children.
    */
    public func setChildren(children: [NSXMLNode]?) { NSUnimplemented() } //primitive
    
    /*!
        @method addChild:
        @abstract Adds a child to the end of the existing children.
    */
    public func addChild(child: NSXMLNode) { NSUnimplemented() }
    
    /*!
        @method replaceChildAtIndex:withNode:
        @abstract Replaces a child at a particular index with another child.
    */
    public func replaceChildAtIndex(index: Int, withNode node: NSXMLNode) { NSUnimplemented() }
    
    /*!
        @method XMLData
        @abstract Invokes XMLDataWithOptions with NSXMLNodeOptionsNone.
    */
    /*@NSCopying*/ public var XMLData: NSData { NSUnimplemented() }
    
    /*!
        @method XMLDataWithOptions:
        @abstract The representation of this node as it would appear in an XML document, encoded based on characterEncoding.
    */
    public func XMLDataWithOptions(options: Int) -> NSData { NSUnimplemented() }
    
    /*!
        @method objectByApplyingXSLT:arguments:error:
        @abstract Applies XSLT with arguments (NSString key/value pairs) to this document, returning a new document.
    */
    public func objectByApplyingXSLT(xslt: NSData, arguments: [String : String]?) throws -> AnyObject { NSUnimplemented() }
    
    /*!
        @method objectByApplyingXSLTString:arguments:error:
        @abstract Applies XSLT as expressed by a string with arguments (NSString key/value pairs) to this document, returning a new document.
    */
    public func objectByApplyingXSLTString(xslt: String, arguments: [String : String]?) throws -> AnyObject { NSUnimplemented() }
    
    /*!
        @method objectByApplyingXSLTAtURL:arguments:error:
        @abstract Applies the XSLT at a URL with arguments (NSString key/value pairs) to this document, returning a new document. Error may contain a connection error from the URL.
    */
    public func objectByApplyingXSLTAtURL(xsltURL: NSURL, arguments argument: [String : String]?) throws -> AnyObject { NSUnimplemented() }
    
    public func validate() throws { NSUnimplemented() }
}

