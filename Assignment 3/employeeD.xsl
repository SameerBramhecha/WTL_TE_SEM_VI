<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <style>
                *{  
                    text-align:center;
                }
                h2{
                    color: blue;
                    font-size:50px;
                    margin-top:12%;
                }
                table{
                    font-size:40px;
                    margin-left:auto;  
                    margin-right:auto;
                    table-layout: fixed;
                }
            </style>
            <body>
                <h2>Employees</h2>
                <table border="2">
                    <tr bgcolor="#9acd32">
                        <th>Employee Id</th>
                        <th>Employee Name</th>
                        <th>Department</th>
                        <th>Designation</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="employee/emp">
                        <tr>
                            <td>
                                <xsl:value-of select="eid"/>
                            </td>
                            <td>
                                <xsl:value-of select="empname"/>
                            </td>
                            <td>
                                <xsl:value-of select="department"/>
                            </td>
                            <td>
                                <xsl:value-of select="designation"/>
                            </td>
                            <td>
                                <xsl:value-of select="salary"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>