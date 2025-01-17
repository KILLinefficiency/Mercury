def make(data):

    design = data[-1]
    data = data[0:-1]

    template_file = open(f"{design}.typ", "r")
    template = template_file.read()
    template_file.close()

    template = template.format(data[0], *data[2:]).strip()

    f = open("Certificate.typ", "w")
    f.write(template)
    f.close()

