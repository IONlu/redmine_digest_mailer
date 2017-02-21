<!--
    Available issue fields:
        id
        status
        lastUpdate
        project
        projectId
        subject
        description
        lastUpdateBy_id
        lastUpdateBy
        author
        assigned
-->

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8" />

        <style>
            * {
                margin: 0;
            }
            body {
                color: #4F5052;
                font-family: sans-serif;
                font-size: 15px;
                font-weight: normal;
                line-height: 1.5em;
                -webkit-font-smoothing: antialiased;
                -webkit-text-size-adjust: none;
                margin: 0;
                width: 100%;
            }
            p, table {
                padding: 0.5em 0.3em !important;
            }
            table {
                border-collapse: collapse;
                margin: 2em 0 !important;
            }
            .footer {
                color: #888888;
                text-align: right;
                font-size: 11px;
                padding-right: 1em;
            }
            .wrapper {
                margin: 2em auto;
                max-width: 1200px;
                padding: 15px;
            }
            .container {
                -webkit-border-radius: 5px;
                   -moz-border-radius: 5px;
                        border-radius: 5px;
                border: #e5e3d8 1px solid;
                padding: 15px;
            }
            .right {
                text-align: right;
            }
            .status-Feedback {
                color: #2196f3;
            }
            .status-New {
                color: #558b2f;
            }
            a, a:link,a:active {
                text-decoration: none;
                color: #607d8b;
            }
            .id, .id a:hover{
                color: #4F5052;
            }
            .nowrap {
                white-space: nowrap;
            }
            .nowrap .unassigned {
                color: #ff5722;
                font-weight: bold;
            }
            td {
                padding: 0.2em 0.5em;
                vertical-align: top;
            }
            th {
                padding: 0.2em 0.5em;
                text-align: left;
            }
            tr {
                border-bottom: 1px solid #e0e0e0;
            }
            tr:last-child {
                border-bottom: none;
            }
            a.project {
                color: #78909c;
            }
            a.subject {
                color: #4F5052;
            }
        </style>

    </head>
    <body>

    <div class="wrapper">

        <div class="container">
            <div class="content">

                <p>Dear reader,</p>
                <p>please find attached a list of <b>{$issues|count}</b> open issues.</p>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Status</th>
                        <th>Subject</th>
                        <th>Handled by</th>
                        <th>Assigned to</th>
                        <th>Last update</th>
                    </tr>
                    {foreach from=$issues key=$key item=issue}
                        <tr class="{if $key%2==0}dark{/if}">
                            <td class="id"><a href="{$redmine_url}/issues/{$issue.id}">{$issue.id}</a></td>
                            <td class="nowrap status-{$issue.status}">{$issue.status}</td>
                            <td><a href="{$redmine_url}/projects/{$issue.projectId}" class="project">{$issue.project}</a> - <a href="{$redmine_url}/issues/{$issue.id}" class="subject">{$issue.subject}</a></td>
                            <td class="nowrap">{$issue.lastUpdateBy}</td>
                            <td class="nowrap">{if $issue.assigned}{$issue.assigned}{else}<span class="unassigned">UNASSIGNED</span>{/if}</td>
                            <td class="nowrap">{$issue.lastUpdateText}</td>
                        </tr>
                    {/foreach}
                </table>
                <p class="right">Kind Regards,<br />
                ION network solutions</p>

            </div>
        </div>
        <div class="footer">
            Sent by <a href="https://github.com/IONlu/Redmine_digest_mailer">Redmine digest mailer</a>
        </div>

    </div>
    </body>
</html>
