// DESCRIPTION:
// Write a class Block that creates a block (Duh..)

// Requirements
// The constructor should take an array as an argument, this will contain 3 integers of the form [width, length, height] from which the Block should be created.

// Define these methods:

// `get_width()` return the width of the `Block`

// `get_length()` return the length of the `Block`

// `get_height()` return the height of the `Block`

// `get_volume()` return the volume of the `Block`

// `get_surface_area()` return the surface area of the `Block`

class Block{

    constructor(data){
      this.width = data[0];
      this.length = data[1];
      this.height = data[2]
    }
    getWidth(){
        return this.width
      }
    getLength(){
      return this.length
    }
    getHeight(){
      return this.height
    }
    getVolume() {
      return this.width * this.length * this.height
    }
    getSurfaceArea(){
      return (2*(this.width * this.length)) + (2*(this.height * this.width)) + (2*(this.height * this.length))
    }
    
  }