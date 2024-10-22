class ProductsPublisher

    def self.publish(product)
        message = { 
            product_id: product.id, 
            name: product.name, 
            brand: product.brand, 
            price: product.price, 
            description: product.description 
            stock: product.stock
        }
        KarafkaProducer.produce(message.to_json)
    end
end