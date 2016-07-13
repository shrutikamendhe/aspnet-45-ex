<%@ Page Language="C#" %>

<html>
<head>
    <title>Welcome to OpenShift - ASP.NET 4.5</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link href="main.css" rel="stylesheet" />
    <script language="c#" runat="server">
        public void Page_Load(object sender, EventArgs e)
        {
            var targetFw = System.Reflection.Assembly.GetExecutingAssembly().GetCustomAttributes(typeof(System.Runtime.Versioning.TargetFrameworkAttribute), false);
            string framworkName = ((System.Runtime.Versioning.TargetFrameworkAttribute)targetFw[0]).FrameworkName;
            dvVersion.InnerHtml = "Current application running on <b>" + framworkName + "</b>";

            dvEnvironmentVaraiable.InnerHtml = string.Empty;
            foreach (DictionaryEntry de in Environment.GetEnvironmentVariables())
            {
                dvEnvironmentVaraiable.InnerHtml += string.Format("{0} = {1}<br/>", de.Key.ToString().Trim(), de.Value.ToString().Trim());
            }
        }
    </script>
</head>
<body>
    <section class="container">
        <hgroup>
            <h1>Welcome to your .NET application on OpenShift</h1>
        </hgroup>


        <div class="row">
            <section class="col-xs-12 col-sm-6 col-md-6">
                <section>
                    <h2>How to use this example application</h2>
                    <p>For instructions on how to use this application with OpenShift, start by reading the <a href="http://docs.openshift.org/latest/dev_guide/templates.html#using-the-quickstart-templates" target="_blank">Developer Guide</a>.</p>

                    <h2>.NET Framework version</h2>
                    <p id="dvVersion" runat="server" />

                    <h2>Application Environment Variables</h2>
                    <p id="dvEnvironmentVaraiable" runat="server">
                    </p>

                </section>

            </section>
            <section class="col-xs-12 col-sm-6 col-md-6">

                <h2>Managing your application</h2>

                <p>Documentation on how to manage your application from the Web Console or Command Line is available at the <a href="http://docs.openshift.org/latest/dev_guide/overview.html" target="_blank">Developer Guide</a>.</p>

                <h3>Web Console</h3>
                <p>You can use the Web Console to view the state of your application components and launch new builds.</p>

                <h3>Command Line</h3>
                <p>With the <a href="http://docs.openshift.org/latest/cli_reference/overview.html" target="_blank">OpenShift command line interface</a> (CLI), you can create applications and manage projects from a terminal.</p>

                <h3>Click2Cloud's OpenShift Tool for Visual Studio</h3>
                <p>With the <a href="https://visualstudiogallery.msdn.microsoft.com/9a5b8b19-dadf-4b46-8712-527303d32231" target="_blank">Click2Cloud's OpenShift Tool for Visual Studio</a>, you can create applications and manage projects right from your Visual Studio IDE.</p>
                <p>Watch Click2Cloud's OpenShift Tool in action on <a href="https://www.youtube.com/playlist?list=PLWgCcDWQfFlv0cRJIE6j8PJWnBre1JvlD" target="_blank">YouTube</a>.</p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLWgCcDWQfFlv0cRJIE6j8PJWnBre1JvlD" frameborder="0" allowfullscreen></iframe>

                <h2>Development Resources</h2>
                <ul>
                    <li><a href="http://docs.openshift.org/latest/welcome/index.html" target="_blank">OpenShift Documentation</a></li>
                    <li><a href="https://github.com/openshift/origin" target="_blank">Openshift Origin GitHub</a></li>
                    <li><a href="https://github.com/openshift/source-to-image" target="_blank">Source To Image GitHub</a></li>
                    <li><a href="http://docs.openshift.org/latest/using_images/s2i_images/nodejs.html" target="_blank">Getting Started with Node.js on OpenShift</a></li>
                    <li><a href="http://stackoverflow.com/questions/tagged/openshift" target="_blank">Stack Overflow questions for OpenShift</a></li>
                    <li><a href="http://git-scm.com/documentation" target="_blank">Git documentation</a></li>
                    <li><a href="https://visualstudiogallery.msdn.microsoft.com/9a5b8b19-dadf-4b46-8712-527303d32231" target="_blank">Click2Cloud's OpenShift Tool for Visual Studio</a></li>
                </ul>
            </section>
        </div>

        <footer>
            <div class="logo"><a href="http://click2cloud.net/" target="_blank"></a></div>
        </footer>
    </section>
</body>
</html>
