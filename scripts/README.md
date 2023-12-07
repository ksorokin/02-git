# Kubernetes "Usage" Plugin for kubectl

The "Usage" plugin enhances the capabilities of `kubectl` by providing alternative to the native `kubectl top` command. 

### Output format
```
Resource  Namespace Name  CPU Memory
```

## Usage Examples:

1. **Display CPU and Memory usage for pods in the "default" namespace:**
   ```bash
   kubectl usage pod

2. Retrieve resource statistics for nodes in a specific namespace:
    ```bash
    kubectl usage node my-namespace
    ```
