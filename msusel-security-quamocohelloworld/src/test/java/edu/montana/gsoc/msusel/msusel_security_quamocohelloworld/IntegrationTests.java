package edu.montana.gsoc.msusel.msusel_security_quamocohelloworld;

import org.junit.Test;

import edu.montana.gsoc.msusel.quamoco.graph.edge.Edge;
import edu.montana.gsoc.msusel.quamoco.graph.node.Node;
import edu.montana.gsoc.msusel.quamoco.model.qm.QualityModel;
import edu.uci.ics.jung.graph.DirectedSparseGraph;

public class IntegrationTests {
	/**
	 * Ensure the JRE is working
	 */
	@Test
	public void basicTest() {
		System.out.println("basic test.");
	}
	
	/**
	 * Check the modified distiller is able to build the graph off
	 * of custom .qm file inputs.
	 * NOTE: for now, the .qm files need to be put in the 
	 * 
	 * msusel-quamoco\src\main\resources\edu\montana\gsoc\msusel\quamoco\models
	 * 
	 * folder. Console displays correct information about the graph and models if successful.
	 */
	@Test
	public void modifiedDistillerTest() {
		ModifiedDistiller md = new ModifiedDistiller();
		
		md.buildGraph();
		
		DirectedSparseGraph<Node, Edge> graph = md.getGraph();
		System.out.println("Graph: ");
        System.out.println("\tNodes: " + graph.getVertexCount());
        System.out.println("\tEdges: " + graph.getEdgeCount());

        System.out.println("Models");
        for (QualityModel m : md.getModelList()) {
            System.out.println("\t" + m.getName());
        }
	}
}

