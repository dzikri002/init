@echo off
SET builddir=%~dp0

rmdir "%~dp0..\src\Frapid.Web\bin" /Q /S
xcopy "%~dp0..\src\Frapid.Web\Resources\_Configs\Assets" "%~dp0..\src\Frapid.Web\Resources\Configs\Assets\" /s/y

if exist "../src/Frapid.Web.sln" (
	@echo Building Frapid.Web
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Dashboard/Frapid.Dashboard.sln" (
	@echo Building Frapid Dashboard
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Dashboard/Frapid.Dashboard.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.WebsiteBuilder/Frapid.WebsiteBuilder.sln" (
	@echo Building WebsiteBuilder Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.WebsiteBuilder/Frapid.WebsiteBuilder.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.AddressBook/Frapid.AddressBook.sln" (
	@echo Building AddressBook
	nuget.exe restore "../src/Frapid.Web/Areas/Frapid.AddressBook/Frapid.AddressBook.sln"
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.AddressBook/Frapid.AddressBook.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Google/Google.sln" (
	@echo Building Google Integration for Frapid
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Google/Google.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Calendar/Frapid.Calendar.sln" (
	@echo Building Calendar
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Calendar/Frapid.Calendar.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Core/Frapid.Core.sln" (
	@echo Building Core Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Core/Frapid.Core.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Config/Frapid.Config.sln" (
	@echo Building Config Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Config/Frapid.Config.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Reports/Frapid.Reports.sln" (
	@echo Building Frapid Reporting Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Reports/Frapid.Reports.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Social/MixERP.Social.sln" (
	@echo Building MixERP.Social Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Social/MixERP.Social.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/Frapid.Authorization/Frapid.Authorization.sln" (
	@echo Building Frapid Authorization Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Authorization/Frapid.Authorization.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.Account/Frapid.Account.sln" (
	@echo Building Account Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Account/Frapid.Account.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/Frapid.Forms/Frapid.Forms.sln" (
@echo Building Forms Module
"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.Forms/Frapid.Forms.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Forums/MixERP.Forums.sln" (
	@echo Building Forums Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Forums/MixERP.Forums.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Helpdesk/MixERP.Helpdesk.sln" (
	@echo Building Helpdesk Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Helpdesk/MixERP.Helpdesk.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Finance/MixERP.Finance.sln" (
	@echo Building Finance Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Finance/MixERP.Finance.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.HRM/MixERP.HRM.sln" (
	@echo Building HRM Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.HRM/MixERP.HRM.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Inventory/MixERP.Inventory.sln" (
	@echo Building Inventory Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Inventory/MixERP.Inventory.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Purchases/MixERP.Purchases.sln" (
	@echo Building Purchase Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Purchases/MixERP.Purchases.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Sales/MixERP.Sales.sln" (
	@echo Building Sales Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Sales/MixERP.Sales.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.Production/MixERP.Production.sln" (
	@echo Building Production Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Production/MixERP.Production.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/CineSys/CineSys.sln" (
	@echo Building CineSys Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/CineSys/CineSys.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/CineSys.FoodCourt/CineSys.FoodCourt.sln" (
	@echo Building CineSys.FoodCourt Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/CineSys.FoodCourt/CineSys.FoodCourt.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/CineSys.GateKeeper/CineSys.GateKeeper.sln" (
	@echo Building CineSys.GateKeeper Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/CineSys.GateKeeper/CineSys.GateKeeper.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.CafeSys/Frapid.CafeSys.sln" (
	@echo Building Frapid.CafeSys Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.CafeSys/Frapid.CafeSys.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Frapid.RecoveryManager/Frapid.RecoveryManager.sln" (
	@echo Building Frapid.RecoveryManager Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Frapid.RecoveryManager/Frapid.RecoveryManager.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixERP.CountryPacks.Nepal/MixERP.CountryPacks.Nepal.sln" (
	@echo Building MixERP.CountryPacks.Nepal Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.CountryPacks.Nepal/MixERP.CountryPacks.Nepal.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/SendGridMail/SendGridMail.sln" (
	@echo Building SendGridMail Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/SendGridMail/SendGridMail.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/ElasticEmail/ElasticEmail.sln" (
	@echo Building ElasticEmail Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/ElasticEmail/ElasticEmail.sln /p:VisualStudioVersion=14.0
)

REM if exist "../src/Frapid.Web/Areas/MailjetApp/MailjetApp.sln" (
	REM @echo Building MailjetApp Module
	REM "%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MailjetApp/MailjetApp.sln /p:VisualStudioVersion=14.0
REM )

if exist "../src/Frapid.Web/Areas/SparkPostMail/SparkPostMail.sln" (
	@echo Building SparkPostMail Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/SparkPostMail/SparkPostMail.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/TheSmsCentral/TheSmsCentral.sln" (
	@echo Building TheSmsCentral Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/TheSmsCentral/TheSmsCentral.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixCBS.Banking/MixCBS.Banking.sln" (
	@echo Building MixCBS.Banking Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixCBS.Banking/MixCBS.Banking.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixCBS.Deposits/MixCBS.Deposits.sln" (
	@echo Building MixCBS.Deposits Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixCBS.Deposits/MixCBS.Deposits.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/MixCBS.Lendings/MixCBS.Lendings.sln" (
	@echo Building MixCBS.Lendings Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixCBS.Lendings/MixCBS.Lendings.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/MixERP.Discovery/MixERP.Discovery.sln" (
	@echo Building MixERP Discovery Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Discovery/MixERP.Discovery.sln /p:VisualStudioVersion=14.0
)

if exist "../src/Frapid.Web/Areas/Salesific.CRM/Salesific.CRM.sln" (
	@echo Building Salesific CRM Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/Salesific.CRM/Salesific.CRM.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/MixERP.Office/MixERP.Office.sln" (
	@echo Building MixERP Office Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Debug ../src/Frapid.Web/Areas/MixERP.Office/MixERP.Office.sln /p:VisualStudioVersion=14.0
)


if exist "../src/Frapid.Web/Areas/Frapid.SchemaUpdater/Frapid.SchemaUpdater.sln" (
	@echo Building MixERP Frapid.SchemaUpdater Module
	"%PROGRAMFILES(X86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\MSBuild.exe" /verbosity:quiet /nologo /property:Configuration=Release ../src/Frapid.Web/Areas/Frapid.SchemaUpdater/Frapid.SchemaUpdater.sln /p:VisualStudioVersion=14.0
)




if exist "C:\Program Files\Redis\redis-cli.exe" (
	@echo Flusing Redis Cache
	"C:\Program Files\Redis\redis-cli.exe" "flushall"
)

@echo Bundling SQL
cd ..\builds-sql\
call all.bat

cd %builddir%
call custom.bat

@echo OK
