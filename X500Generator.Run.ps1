﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: fbf4f669-1f0a-4258-9895-16a3cf4bc16c
# Source File: Z:\DeanSesko\OneDrive\Projects\X500 Generator\X500Generator.psf
#------------------------------------------------------------------------

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2015 v4.2.99
     Generated on:       1/15/2016 10:47 AM
     Generated by:       Dean
     Organization:       Home
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2015
#>
#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Call-X500Generator_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Xml, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$X500Generator = New-Object 'System.Windows.Forms.Form'
	$labelNewX500Address = New-Object 'System.Windows.Forms.Label'
	$labelIMCEAEXAddress = New-Object 'System.Windows.Forms.Label'
	$ValidX500TextBox = New-Object 'System.Windows.Forms.TextBox'
	$Exitbutton = New-Object 'System.Windows.Forms.Button'
	$IMCEAEX_TextBox = New-Object 'System.Windows.Forms.TextBox'
	$GenerateX500Button = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	$OnLoadFormEvent={
	}
	
	$GenerateX500Button_Click={
		[string]$IMCEAEXVar
		$IMCEAEXVar = $IMCEAEX_TextBox.Text
		$IMCEAEXVar = $IMCEAEXVar.Replace("IMCEAEX-", "")
		$IMCEAEXVar = $IMCEAEXVar.Replace("_", "/")
		$IMCEAEXVar = $IMCEAEXVar.Replace("+20", " ")
		$IMCEAEXVar = $IMCEAEXVar.Replace("+28", "(")
		$IMCEAEXVar = $IMCEAEXVar.Replace("+29", ")")
		$IMCEAEXVar = $IMCEAEXVar.Replace("+2E", ".")
		$IMCEAEXVar = $IMCEAEXVar.Replace("+2C", ",")
		$IMCEAEXVar = $IMCEAEXVar.Substring(0, $IMCEAEXVar.IndexOf('@'))
		$ValidX500TextBox.Text = $IMCEAEXVar
	}
	
	$Exitbutton_Click={
		$X500Generator.Close()
		}
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$X500Generator.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$Exitbutton.remove_Click($Exitbutton_Click)
			$GenerateX500Button.remove_Click($GenerateX500Button_Click)
			$X500Generator.remove_Load($OnLoadFormEvent)
			$X500Generator.remove_Load($Form_StateCorrection_Load)
			$X500Generator.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$X500Generator.SuspendLayout()
	#
	# X500Generator
	#
	$X500Generator.Controls.Add($labelNewX500Address)
	$X500Generator.Controls.Add($labelIMCEAEXAddress)
	$X500Generator.Controls.Add($ValidX500TextBox)
	$X500Generator.Controls.Add($Exitbutton)
	$X500Generator.Controls.Add($IMCEAEX_TextBox)
	$X500Generator.Controls.Add($GenerateX500Button)
	$X500Generator.ClientSize = '1008, 206'
	$X500Generator.Name = 'X500Generator'
	$X500Generator.StartPosition = 'CenterScreen'
	$X500Generator.Text = 'X500 Generator'
	$X500Generator.add_Load($OnLoadFormEvent)
	#
	# labelNewX500Address
	#
	$labelNewX500Address.Location = '13, 110'
	$labelNewX500Address.Name = 'labelNewX500Address'
	$labelNewX500Address.Size = '321, 23'
	$labelNewX500Address.TabIndex = 5
	$labelNewX500Address.Text = 'New X500 Address'
	#
	# labelIMCEAEXAddress
	#
	$labelIMCEAEXAddress.Location = '12, 9'
	$labelIMCEAEXAddress.Name = 'labelIMCEAEXAddress'
	$labelIMCEAEXAddress.Size = '322, 23'
	$labelIMCEAEXAddress.TabIndex = 4
	$labelIMCEAEXAddress.Text = 'IMCEAEX Address'
	#
	# ValidX500TextBox
	#
	$ValidX500TextBox.Font = 'Microsoft Sans Serif, 8pt'
	$ValidX500TextBox.Location = '12, 136'
	$ValidX500TextBox.Name = 'ValidX500TextBox'
	$ValidX500TextBox.Size = '984, 20'
	$ValidX500TextBox.TabIndex = 3
	#
	# Exitbutton
	#
	$Exitbutton.Location = '921, 171'
	$Exitbutton.Name = 'Exitbutton'
	$Exitbutton.Size = '75, 23'
	$Exitbutton.TabIndex = 2
	$Exitbutton.Text = '&Exit'
	$Exitbutton.UseVisualStyleBackColor = $True
	$Exitbutton.add_Click($Exitbutton_Click)
	#
	# IMCEAEX_TextBox
	#
	$IMCEAEX_TextBox.Font = 'Microsoft Sans Serif, 8pt'
	$IMCEAEX_TextBox.Location = '11, 35'
	$IMCEAEX_TextBox.Name = 'IMCEAEX_TextBox'
	$IMCEAEX_TextBox.Size = '985, 20'
	$IMCEAEX_TextBox.TabIndex = 1
	#
	# GenerateX500Button
	#
	$GenerateX500Button.Location = '12, 61'
	$GenerateX500Button.Name = 'GenerateX500Button'
	$GenerateX500Button.Size = '101, 23'
	$GenerateX500Button.TabIndex = 0
	$GenerateX500Button.Text = 'Generate X500'
	$GenerateX500Button.UseVisualStyleBackColor = $True
	$GenerateX500Button.add_Click($GenerateX500Button_Click)
	$X500Generator.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $X500Generator.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$X500Generator.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$X500Generator.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $X500Generator.ShowDialog()

} #End Function

#Call the form
Call-X500Generator_psf | Out-Null
