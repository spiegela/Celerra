module Atmos
  class Object < Atmos::Virtual    
    # Create a new object on Atmos Service, and return the Atmos generated ID
    #
    # === Supported options
    # [:acl]
    #
    # [:metadata]
    #
    # [:data]
    #
    # [:mimetype]
    # 
    # [:hash]
    #
    # [:path]
    #
    post(:create) do |args|
      args[:data] ||= ""
  
      params
      headers = { 'content-length' => data.length.to_s
                }
      body
    
      handler{ |r| parsing goes here }
    end

    # Rename the object to a new path
    # 
    # === Arguments
    # [source]
    # The path of the object to rename
    #
    # [dest]
    # The path to which to rename the object
    #
    # === Supported Options
    #
    # [:overwrite]
    # Overwrite the destination path if it exists
    #   
    post(:rename) do |source, dest|
    
    end
    
    # Delete an object from the Atmos Service
    # 
    # === Arguments
    # [id]
    # The ID of the object to delete
    #
    # === Supported Options
    #
    # [:field]
    # Delete field content data rather than object data.  Valid values include
    # <tt>:user_metadata</tt>
    #
    # [:fields]
    # Delete mutliple fields content data rather than object data.  Valid values include
    # <tt>:user_metadata</tt> and <tt>:tags</tt>
    #
    # [:tags]
    # Used with the <tt>:field</tt> option to specify an Array of tags to
    # acton on metadata fields
    #
    delete(:delete) do |id|
    
    end
    
    # Read an object from the Atmos Service
    # 
    # === Arguments
    # [id]
    # The ID of the object to delete
    #
    # === Supported Options
    # [:checksum]
    #
    # [:field]
    # Request specific field rather than object data.  Valid values include
    # <tt>:acl</tt>, <tt>:user_metadata</tt>, <tt>system_metadata</tt>,
    # <tt>:versions</tt> or <tt>:all_metadata</tt>
    #
    # [:fields]
    # Request specific fields rather than object data.  Valid values include
    # <tt>:acl</tt>, <tt>:user_metadata</tt>, <tt>system_metadata</tt>,
    # <tt>:versions</tt> or <tt>:all_metadata</tt>
    #
    # [:tags]
    # Used with the <tt>:field</tt> option to specify an Array of tags to
    # act on metadata fields
    #
    get(:read) do |id, args|
    
    end
  
    # Update an object stored on the Atmos Service
    # 
    # === Arguments
    # [id]
    # The ID of the object to delete
    #
    # === Supported Options
    # [:acl]
    #
    # [:metadata]
    #
    # [:data]
    #
    # [:mimetype]
    #
    # [:hash]
    #
    put(:update) do |id, args|
    
    end
    
    # List objects from the Atmos Service
    #
    # === Supported Options
    #
    # [:dir] String
    # The directory to list.  If none is specified, it will list all objects
    #
    # [:tag] String
    # List objects with a specific tag
    #
    # [:metadata] Boolean
    # Set to "true" to include metadata in the response
    get(:list) do
    
    end
    
  end
end