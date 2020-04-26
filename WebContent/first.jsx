class App extends React.Component
{
    render()
    {
        const style={
           height: '60%'
        };
        var iframe="embed-responsive-item";
        return(
            <div>
                <div className="border m-2 bg-white shadow d-none d-xl-block">
                    <h2 className="h3 ml-3 p-2">{this.props.item}</h2>
                    <Iframe src={this.props.src}>embed-responsive embed-responsive-16by9 border-top h-50</Iframe>
                </div>
                <div className="border m-2 bg-white shadow d-none d-xl-none d-lg-block">
                    <h2 className="h3 ml-3 p-2">{this.props.item}</h2>
                    <Iframe src={this.props.src}>embed-responsive embed-responsive-16by9 border-top h-25</Iframe>
                </div>
                <div className="border m-2 bg-white shadow d-none d-md-block d-lg-none d-xl-none">
                    <h2 className="h3 ml-3 p-2">{this.props.item}</h2>
                    <Iframe style={style} src={this.props.src}>embed-responsive embed-responsive-16by9 border-top</Iframe>
                </div>
                <div className="border m-2 bg-white shadow d-xl-none d-lg-none d-md-none d-none d-sm-block">
                    <h2 className="h3 ml-3 p-2">{this.props.item}</h2>
                    <Iframe src={this.props.src}>embed-responsive embed-responsive-16by9 border-top h-100</Iframe>
                </div>
                <div className="border m-2 bg-white shadow d-xl-none d-lg-none d-md-none d-block d-sm-none">
                    <h2 className="h3 ml-3 p-2">{this.props.item}</h2>
                    <Iframe src={this.props.src}>embed-responsive embed-responsive-16by9 border-top h-100</Iframe>
                </div>							
            </div>
        );
    }
}
class Iframe extends React.Component
{
    render()
    {
        return(
            <div class={this.props.children}>
                <iframe scrolling="no" class={this.props.iframe} src={this.props.src}></iframe>
            </div>
        );
    }
}
Iframe.defaultProps={
    iframe: 'embed-responsive-item',
};
ReactDOM.render(<App item="Mobile New Launches" src="OperateServlet1?operate=display&category=mobile"/>, document.getElementById('mobile'));
ReactDOM.render(<App item="Watch New Launches" src="OperateServlet1?operate=display&category=watch"/>, document.getElementById('watch'));
ReactDOM.render(<App item="Laptop New Launches" src="OperateServlet1?operate=display&category=mobile"/>, document.getElementById('laptop'));
ReactDOM.render(<App item="Telivision New Launches" src="OperateServlet1?operate=display&category=mobile"/>, document.getElementById('tv'));
ReactDOM.render(<App item="Washing Machine New Launches" src="OperateServlet1?operate=display&category=mobile"/>, document.getElementById('wash'));
ReactDOM.render(<App item="Refrigerator New Launches" src="OperateServlet1?operate=display&category=mobile"/>, document.getElementById('refrigerator'));