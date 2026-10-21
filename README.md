# hexview

A simple hex viewer written in C, built to learn file I/O and byte formatting.

Work in progress: the program currently builds and exits without output.
The usage and output below describe the planned behavior.

## Build

Requires Make and a C compiler (GCC or Clang).

```sh
make build
```

## Usage

```sh
./hexview file.bin
```

Reads one file in 16-byte chunks and prints the byte offset, hexadecimal values,
and ASCII text. Non-printable bytes appear as `.`. Errors go to `stderr` and
return a nonzero exit code.

## Example

```sh
printf 'Hi\n' > example.bin
./hexview example.bin
```

Expected output:

```text
00000000  48 69 0a                                         |Hi.|
```
