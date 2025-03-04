<h1 align='center'>AsML: An ARM-Powered ML Visualizer</h1>
<h2>Component One: GUI</h2>
The GUI is a simple virtual display powered by C. The functionality is purely to read/render a sequence of memory addresses similarly to the UPenn LC4 functionality (i.e. a designated set of registers is allocated towards an n x m sized screen). Any sort of logical rendering is purely accomplished by the ML Engine.
<h2>Component Two: ML Engine</h2>
The ML Engine is a simple neural network that aims to predict the next state of the virtual display. This is still very much under development, still figuring out how I would like this to work!

<h2>Execution</h2>

Compilation: `clang -o __name__ __name__.s -arch arm64 -Wl,-e,_main -framework Foundation`<br>
Execution: `./__name__`