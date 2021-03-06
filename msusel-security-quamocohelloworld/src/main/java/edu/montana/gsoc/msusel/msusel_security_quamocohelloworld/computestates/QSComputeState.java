/**
 * The MIT License (MIT)
 *
 * MSUSEL Sonar Quamoco Plugin
 * Copyright (c) 2015-2017 Montana State University, Gianforte School of Computing,
 * Software Engineering Laboratory
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package edu.montana.gsoc.msusel.msusel_security_quamocohelloworld.computestates;

import java.util.List;

import edu.montana.gsoc.msusel.quamoco.graph.edge.Edge;
import edu.montana.gsoc.msusel.quamoco.graph.node.Node;
import edu.montana.gsoc.msusel.quamoco.processor.MetricsContext;
import edu.uci.ics.jung.graph.DirectedSparseGraph;

/**
 * Abstract class defining the interface for the language specific aspects of a
 * QuamocoComputer instance.
 * 
 * @author Isaac Griffith
 * @version 1.1.1
 */
public abstract class QSComputeState {

    /**
     * Executes the language specific quamoco detectors, provided the Quamoco
     * execution graph, a metricsContext, and the current Project's ID
     * 
     * @param graph
     *            The Quamoco execution graph
     * @param metricsContext
     *            MetricsContext providing access to the CodeTree
     * @param projectID
     *            Current Project's ID
     */
    public abstract void executeQuamocoDetector(DirectedSparseGraph<Node, Edge> graph, MetricsContext metricsContext,
            String projectID);

    /**
     * @return List of known rule repositories for a given language
     */
    public abstract List<String> getRepoNames();

    /**
     * @return List of file extensions associated with a language
     */
    protected abstract String getExtension();

    /**
     * @return Quamoco Key associated with a given language
     */
    public abstract String langKey();
}