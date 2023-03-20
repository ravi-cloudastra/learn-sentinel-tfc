log "app" {
  syslog {
    facility = "LOCAL0"
  }

  sink {
    file {
      filename = "/var/log/tfcloud.log"
      rotation {
        max_age  = "30d"
        compress = true
      }
    }
  }
}
