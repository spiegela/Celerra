module Atmos
  class Version < Atmos::Virtual
    # List versions of an object on the Atmos Service
    # 
    # === Arguments
    # [id]
    # The ID of the object for which to list versions  
    get(:list) do |id|
      
    end

    # Create a new version of an object on the Atmos Service
    # 
    # === Arguments
    # [id]
    # The ID of the object for which to create a new version  
    post(:create) do |id|
    
    end  
  
    # Create a new version of an object on the Atmos Service.
    # Versions are immutable options meant to capture the status
    # at a particular point in time.
    #
    # === Arguments
    # [vid]
    # The ID of the object-version to delete  
    delete(:delete) do |vid|
    
    end
  
    # Replace an object's content with the content of a version.
    # 
    # === Arguments
    # [id]
    # The ID of the object to be replaced
    #
    # [vid]
    # The ID of the object-version with which to replace the content 
    put(:promote) do |id, vid|
    
    end
    
  end
end