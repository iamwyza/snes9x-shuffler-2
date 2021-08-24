local wrapper = {}

local ADDR_OFFSET = 0x7E0000

function wrapper.read_u8(addr, domain) 
    if (domain == "CARTROM") then
        return memory.romreadbyte(addr)
    else
        return memory.readbyte(addr + ADDR_OFFSET)
    end
end

function wrapper.readbyterange(addr, length) 
    return memory.readbyterange(addr + ADDR_OFFSET, length)
end

function wrapper.getmemorydomainlist() 
    return { "CARTROM", "MAIN" }
end

function wrapper.getmemorydomainsize(domain) 
    return 0x210000 -- SNES9x doesn't support this, returning a hardcoded value 
end

function wrapper.read_u16_le(addr)
    return memory.readword(addr + ADDR_OFFSET)
end

function wrapper.write_u8(addr, value)
    memory.writebyte(addr + ADDR_OFFSET, value)
end

function wrapper.write_u16_le(addr, value)
    memory.writeword(addr + ADDR_OFFSET, value)
end

return wrapper
