#! /usr/bin/env false

unit module App::Minigrep;

sub minigrep($string, $file) is export {
    unless $file.IO.e { put "Unable to find file $file"; exit; }
    for $file.IO.lines() -> $line {
        put $line if $line.contains($string);
    }
}