//
//  NetworkingManager.swift
//  CryptoSwift
//
//  Created by Zachary on 19/11/22.
//

import Foundation
import Combine


class NetworkingManager {
    
    enum NetworkingError: LocalizedError {
        case badURlResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURlResponse(url: let url): return "[🔥] Bad response from URL \(url)"
            case .unknown: return "[⚠️]Unknown error occured"
            }
        }
    }
    
    static func download(url: URL) -> AnyPublisher<Data,Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
        // subscribe happens automatically on background
//            .subscribe(on: DispatchQueue.global(qos: .default))
            .tryMap({ try handleURLResponse(output: $0, url: url)})
        // shifted receive on to specific services after they decode on background thread
//            .receive(on: DispatchQueue.main)
            .retry(3)
            .eraseToAnyPublisher()
    }
    
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300 else {
            throw NetworkingError.badURlResponse(url: url)
        }
        return output.data
    }
    
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case .finished:
            break
        case.failure(let error):
            print(error.localizedDescription)
        }
    }
    
}
