# Cody MCP (Fixed Version)

A PowerShell implementation of the Model Context Protocol (MCP) for Claude AI integration.

## Getting Started

1. Clone this repository
2. Copy `.env.example` to `.env` and add your API keys
3. Run `./debug-run.ps1` to test the application

## Changes from Original

- Fixed the `Export-ModuleMember` error in foundation script

## Structure

This application follows a sequential layered architecture:

1. Foundation - Environment, Configuration, Paths
2. Infrastructure - Logging, Error Handling, Diagnostics
3. Orchestration - Process Management, State Management
4. Communication - MCP Server/Client Implementation
5. Integration - External API Communication
6. Presentation - CLI Interface

## Development Status

Currently implemented: Foundation Layer