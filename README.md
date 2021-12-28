# Logger Dart

A simple logger class for Dart applications.

# Available Options

- Logging levels:
    - debug
    - info [default]
    - warn
    - error

- Timezone Options:
    - utc
    - local [default]

> **NOTE:** The logged time is in 24h format.

# How to Use

## Create the logger

- With default options:
``` dart
var logger = Logger();
```

- With custom options:
``` dart
var logger = Logger(
  level: LogLevel.warn,
  utc: false,
);
```

## Call the desired logger level method

``` dart
logger.debug('debug message');
logger.info('info message');
logger.warn('warn message');
logger.error('error message');
```

The output will be like this:

```
2021/12/28 22:53:23 [DBG] debug message
2021/12/28 22:53:23 [INF] info message
2021/12/28 22:53:23 [WRN] warn message
2021/12/28 22:53:23 [ERR] error message
```

> **IMPORTANT**: The logger will print only the messages from the selected level or superior.

For example, if the selected level is *_warn_*, the _debug_ and _info_ messages will not be printed, but _warn_ and _error_ will.

# Future Improvements

- [ ] Add an option to set a default name in the messages. _Ex: a task name_.
- [ ] Add option to use colored messages according to the levels.
- [ ] Add option to use icons to represent the levels.

