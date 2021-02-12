
if __name__ == "__main__":
    print("looping")
    x = 0

    while True:
        print(f"{x}")
        x += 1

        if x == 5:
            break

for i in range(10):
    from pdb import set_trace

    set_trace()
    print("var")
