#
# Module manifest for module 'Microsoft365DSC'
#
# Generated by: Microsoft Corporation
#
# Generated on: 2020-09-16

@{

    # Script module or binary module file associated with this manifest.
    # RootModule = ''

    # Version number of this module.
    ModuleVersion     = '1.20.916.1'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '39f599a6-d212-4480-83b3-a8ea2124d8cf'

    # Author of this module
    Author            = 'Microsoft Corporation'

    # Company or vendor of this module
    CompanyName       = 'Microsoft Corporation'

    # Copyright statement for this module
    Copyright         = '(c) 2020 Microsoft Corporation. All rights reserved.'

    # Description of the functionality provided by this module
    Description       = 'This DSC module is used to configure and monitor Microsoft tenants, including SharePoint Online, Exchange, Teams, etc.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{
            ModuleName      = "AzureADPreview"
            RequiredVersion = "2.0.2.105"
        },
        @{
            ModuleName      = "DSCParser"
            RequiredVersion = "1.2.0.0"
        },
        @{
            ModuleName      = "ExchangeOnlineManagement"
            RequiredVersion = "2.0.1"
        },
        @{
            ModuleName      = "Microsoft.Graph.Authentication"
            RequiredVersion = "0.9.1"
        },
        @{
            ModuleName      = "Microsoft.Graph.Groups.Planner"
            RequiredVersion = "0.9.1"
        },
        @{
            ModuleName      = "Microsoft.Graph.Identity.ConditionalAccess"
            RequiredVersion = "0.9.1"
        },
        @{
            ModuleName      = "Microsoft.Graph.Planner"
            RequiredVersion = "0.9.1"
        },
        @{
            ModuleName      = "Microsoft.PowerApps.Administration.PowerShell"
            RequiredVersion = "2.0.81"
        },
        @{
            ModuleName      = "MicrosoftTeams"
            RequiredVersion = "1.1.6"
        },
        @{
            ModuleName      = "MSCloudLoginAssistant"
            RequiredVersion = "1.0.38"
        },
        @{
            ModuleName      = "ReverseDSC"
            RequiredVersion = "2.0.0.7"
        },
        @{
            ModuleName      = "SharePointPnPPowerShellOnline"
            RequiredVersion = "3.25.2009.1"
        }
    )

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules     = @(
        'modules\M365DSCAgent.psm1',
        'modules\M365DSCUtil.psm1',
        'modules\M365DSCReverseGUI.psm1',
        'modules\M365DSCReverse.psm1',
        'modules\M365DSCLogEngine.psm1',
        'modules\M365DSCTelemetryEngine.psm1',
        'modules\M365DSCStubsUtility.psm1',
        'modules\M365DSCReport.psm1'
        'modules\EncodingHelpers\M365DSCEmojis.psm1'
    )

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    #FunctionsToExport = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @('Assert-M365DSCBlueprint',
                          'Assert-M365DSCTemplate',
                          'Compare-M365DSCConfigurations',
                          'Export-M365DSCConfiguration',
                          'New-M365DSCDeltaReport',
                          'New-M365DSCReportFromConfiguration',
                          'New-M365DSCStubFiles',
                          'Set-M365DSCAgentCertificateConfiguration',
                          'Test-M365DSCAgent',
                          'Test-M365DSCDependenciesForNewVersions')

    # Variables to export from this module
    # VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = 'DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource', 'Microsoft365'

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/Microsoft/Microsoft365DSC/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/Microsoft/Microsoft365DSC'

            # A URL to an icon representing this module.
            IconUri      = 'https://github.com/microsoft/Microsoft365DSC/blob/Dev/Modules/Microsoft365DSC/Dependencies/Images/Logo.png?raw=true'

            # ReleaseNotes of this module
            ReleaseNotes = "* EXOApplicationAccessPolicy
            * Added some error handling around the
              Get-ApplicationAccessPolicy cmdlet
              (Issue #702);
          *EXOSharedMailbox
            * Fixed an issue where Aliases were not properly removed
              (Issue #749);
          * TeamsCallingPolicy
            * Added support for the AllowWebPSTNCalling and Description
              properties;
          * TeamsChannel
            * Fixed an error in the Export when trying to connect using
              only an Azure AD Application without any credentials
              (Issue #754);
          * TeamsClientConfiguration
            * Added support for the AllowEgnyte property
            (Issue #744);
          * TeamsUser
            * Fixed an issue where for large tenants the Export could
              failed due to a percentage of completion greater than
              100% for the Write-Progress
              (Issue #722);
          * MISC
            * Fixed an issue where the OD checkbox was always disabled
              in the GUI;
            * Changed the logic of the Unselect All button in the GUI
              so that it doesn't unselect the authentication checkboxes;
            * Fixed an issue where SPOHubSite was left selected in the
              Export GUI even when unselecting the entire SPO Workload
              (Issue #735);
            * Fixed an issue where if no Destination Path was provided
              after an export, it would fail. It now defaults to the
              current location
              (Issue #698);
            * Fixed issue SCSensitivityLabel on EncryptionRightsDefinitions parameters
              format (Issue #758)
          * DEPENDENCIES
            * MSCloudLoginAssistant Updated to 1.0.33;"

            # Flag to indicate whether the module requires explicit user acceptance for install/update
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}
