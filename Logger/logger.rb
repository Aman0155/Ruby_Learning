require 'logger'
logger =Logger.new("./Logger/file.log")
logger.level =Logger::WARN
logger.debug("This is the debug message")
logger.info("This is the info message")
logger.warn("This is the warn message")
logger.error("This is the error message")
