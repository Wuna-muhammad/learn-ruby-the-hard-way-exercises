#coding -*- utf-8 -*-

# Bernard Pietraga
# Exercise No. 39 from Learn Ruby The Hard Way
# Dict module of exercise.

module Dict
  def Dict.new(num_buckets=256)
    # Initializes a Dict with the given number of buckets.
    # Declares aDict variable that has an array.
    aDict = []
    # Create buckets.
    (0...num_buckets).each do |i|
      # Pushes buckets to array.
      aDict.push([])
    end

    return aDict
  end

  # hash_key funtion. Converts strings to numbers.
  def Dict.hash_key(aDict, key)
    # Given a key this will create a number and then convert it to
    # an index or the aDict's buckets.
    puts "HASH #{key}=#{key.hash}" # Takes sting and generates number.
    # Returns a number which is a remainder or modulus operation.
    return key.hash % aDict.length
  end

  def Dict.get_bucket(aDict, key)
    # Given a key, find the bucket where it would go.
    # uses hash_key to locate the bucket with possible the right key.
    bucket_id = Dict.hash_key(aDict, key)
    # Returns bucket.
    return aDict[bucket_id]
  end

  # Gets bucket that key could be in and seachers for matching key.
  def Dict.get_slot(aDict, key, default=nil)
    # Returns the index, key, and value of a slot found in a bucket.
    bucket = Dict.get_bucket(aDict, key)

    # Each loop which returns index of key (i), key (k)
    # value for the key (k).
    bucket.each_with_index do |kv, i|
      k, v = kv
      # if the key matches k returns all information.
      if key == k
        return i, k, v
      end
    end

    # If no key matches the k in bucket
    # returns -1 for i, k and "nil" for v.
    return -1, key, default
  end

  def Dict.get(aDict, key, default=nil)
    # Gets the value in a bucket for the given key, or the default.
    i, k , v = Dict.get_slot(aDict, key, default=default)
    # Returns the value or nil.
    return v
  end

  def Dict.set(aDict, key, value)
    # Sets the key to the value, replacing any existing value.
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)

    # If the value exists for the key than it is equal or bigger then zero.
    if i >= 0
      # Replace value with the new one.
      bucket[i] = [key, value]
    # Else if value doesn't exist.
    else
      # Pushes the key and value to bucket.
      bucket.push([key, value])
    end
  end

  def Dict.delete(aDict, key)
    # Deletes the given key from the Dict.
    bucket = Dict.get_bucket(aDict, key)

    # Searches for the key.
    # Form 0 to minus one from bucket length.
    (0...bucket.length).each do |i|
      # Gets the key, value at the index.
      k, v = bucket[i]
      # If the key matches one to delete.
      if key == k
        # Deletes key, value from the index.
        bucket.delete_at(i)
        # Breaks out.
        break
      end
    end
  end


  def Dict.list(aDict)
    # Prints out what's in the Dict.

    # Each loop prints every value.
    aDict.each do |bucket|
      # If the bucket have data.
      if bucket
        # Prints every key, value.
        bucket.each {|k,v| puts k, v}
      end
    end
  end

  # Dumps all content of the bucket.
  def Dict.dump(aDict)
    # Each loop prints every bucket.
    aDict.each do |bucket|
      # If bucket exist.
      if bucket
        puts bucket
      end
    end
  end
end
