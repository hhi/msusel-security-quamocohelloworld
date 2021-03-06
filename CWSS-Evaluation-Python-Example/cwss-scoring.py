class Node(object):
    def __init__(self, is_root, name, base_score,
                 attack_score, env_score):
        self.is_root = is_root
        self.name = name
        self.base_score = base_score
        self.attack_score = attack_score
        self.env_score = env_score

        self.children = list()
        self.value = 0.0

    def add_children(self, children_list):
        for child in children_list:
            self.children.append(child)

    def calculate_value(self):
        if self.base_score is not None:
            self.value = self.base_score * self.attack_score * self.env_score
        else:
            for child in self.children:
                self.value += child.value
            self.value = self.value / len(self.children)

    def print_information(self):
        fh = open("output.txt", "a")
        fh.writelines("Factor Name: %s\n" % self.name)
        fh.writelines("Node value: %f\n"% self.value)
        if self.base_score:
            fh.writelines("CWSS Base Score: %f\n" % self.base_score)
            fh.writelines("CWSS Attack Score: %f\n" % self.attack_score)
            fh.writelines("CWSS Environment Score: %f\n" % self.env_score)
        fh.writelines("-----------------------\n")
        fh.close()


def generate_graph():
    fh = open("output.txt", "w")
    fh.writelines("Generating graph...\n\n")
    fh.close()

    cwe114 = Node(False, "CWE-114", 0.46, 1.0, 1.0)
    cwe391 = Node(False, "CWE-391", 0.17, 1.0, 1.0)
    cwe1011 = Node(False, "CWE-1011", None, None, None)
    cwe1020 = Node(False, "CWE-1020", None, None, None)
    confidentiality = Node(False, "Confidentiatliy", None, None, None)
    integrity = Node(False, "Integrity", None, None, None)
    security = Node(True, "Security", None, None, None)

    security.add_children([confidentiality, integrity])
    confidentiality.add_children([cwe1011])
    integrity.add_children([cwe1011, cwe1020])
    cwe1011.add_children([cwe114])
    cwe1020.add_children([cwe391])

    graph_list = [security, confidentiality, integrity,
                  cwe1011, cwe1020, cwe114, cwe391]

    for item in reversed(graph_list):
        item.calculate_value()
    for item in graph_list:
        item.print_information()


def main():
    generate_graph()


if __name__ == '__main__':
    main()
