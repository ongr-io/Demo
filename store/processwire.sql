-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: processwire
-- ------------------------------------------------------
-- Server version	5.5.41-0+wheezy1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `caches`
--

DROP TABLE IF EXISTS `caches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caches` (
  `name` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caches`
--

LOCK TABLES `caches` WRITE;
/*!40000 ALTER TABLE `caches` DISABLE KEYS */;
INSERT INTO `caches` VALUES ('Modules.wire/modules/','AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeURL.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryFancybox/JqueryFancybox.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module','2010-04-08 03:10:10'),('Modules.site/modules/','ServicePages/ServicePages.module','2010-04-08 03:10:10'),('ModulesVerbose.info','{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/AdminTheme\\/AdminThemeDefault\\/AdminThemeDefault.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"0.1.2\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeCheckbox.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeDatetime.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeEmail.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeFieldsetClose.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeFieldsetOpen.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeFieldsetTabOpen.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeFile.module\",\"core\":true,\"versionStr\":\"1.0.4\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeFloat.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeImage.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"84\":{\"summary\":\"Field that stores an integer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeInteger.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeModule.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypePage.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.2\"},\"111\":{\"summary\":\"Field that stores a page title\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypePageTitle.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypePassword.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeText.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeTextarea.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"135\":{\"summary\":\"Field that stores a URL\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeURL.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"href\":\"http:\\/\\/code.google.com\\/p\\/jquery-asmselect\\/\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldAsmSelect\\/InputfieldAsmSelect.module\",\"core\":true,\"versionStr\":\"1.1.4\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldButton.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldCheckbox.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldCheckboxes\\/InputfieldCheckboxes.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldCKEditor\\/InputfieldCKEditor.module\",\"core\":true,\"versionStr\":\"1.2.8\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldDatetime\\/InputfieldDatetime.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldEmail.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldFieldset.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldFile\\/InputfieldFile.module\",\"core\":true,\"versionStr\":\"1.1.4\"},\"90\":{\"summary\":\"Floating point number with precision\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldFloat.module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldForm.module\",\"core\":true,\"versionStr\":\"1.0.4\"},\"40\":{\"summary\":\"Hidden value in a form\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldHidden.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldImage\\/InputfieldImage.module\",\"core\":true,\"versionStr\":\"1.1.0\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldInteger.module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldMarkup.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldName.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPage\\/InputfieldPage.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.4\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageListSelect\\/InputfieldPageListSelect.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageListSelect\\/InputfieldPageListSelectMultiple.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageName\\/InputfieldPageName.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.4\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageTitle\\/InputfieldPageTitle.module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPassword.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldRadios\\/InputfieldRadios.module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldSelect.module\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldSelectMultiple.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldSelector\\/InputfieldSelector.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"0.2.2\"},\"32\":{\"summary\":\"Form submit button\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldSubmit\\/InputfieldSubmit.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"34\":{\"summary\":\"Single line of text\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldText.module\",\"core\":true,\"versionStr\":\"1.0.5\"},\"35\":{\"summary\":\"Multiple lines of text\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldTextarea.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldURL.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryCore\\/JqueryCore.module\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryMagnific\\/JqueryMagnific.module\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables. jQuery plugin by Christian Bach.\",\"href\":\"http:\\/\\/tablesorter.com\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryTableSorter\\/JqueryTableSorter.module\",\"core\":true,\"versionStr\":\"2.0.3\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryUI\\/JqueryUI.module\",\"core\":true,\"versionStr\":\"1.9.3\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryWireTabs\\/JqueryWireTabs.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.5\"},\"163\":{\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/FieldtypePageTitleLanguage.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"164\":{\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/FieldtypeTextareaLanguage.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"162\":{\"summary\":\"Field that stores a single line of text in multiple languages\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/FieldtypeTextLanguage.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"158\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/LanguageSupport.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.3\"},\"161\":{\"summary\":\"Required to use multi-language fields.\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/LanguageSupportFields.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"165\":{\"summary\":\"Required to use multi-language page names.\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/LanguageSupportPageNames.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"0.0.9\"},\"166\":{\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"author\":\"adamspruijt, ryan\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/LanguageTabs.module\",\"core\":true,\"versionStr\":\"1.1.1\"},\"159\":{\"summary\":\"Manage system languages\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/ProcessLanguage.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.2\"},\"160\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LanguageSupport\\/ProcessLanguageTranslator.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"67\":{\"summary\":\"Generates XHTML markup for data tables used by ProcessWire admin\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupAdminDataTable\\/MarkupAdminDataTable.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupHTMLPurifier\\/MarkupHTMLPurifier.module\",\"core\":true,\"versionStr\":\"1.0.4\"},\"113\":{\"summary\":\"Adds a render() method to all PageArray instances for basic unordered list generation of PageArrays.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupPageArray.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupPagerNav\\/MarkupPagerNav.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"152\":{\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/PagePathHistory.module\",\"core\":true,\"versionStr\":\"0.0.1\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/PagePermissions.module\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/PageRender.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.3\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessField\\/ProcessField.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.8\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessHome.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessList.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"10\":{\"summary\":\"Login to ProcessWire\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessLogin\\/ProcessLogin.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessModule\\/ProcessModule.module\",\"core\":true,\"versionStr\":\"1.1.7\"},\"17\":{\"summary\":\"Add a new page\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageAdd\\/ProcessPageAdd.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.4\"},\"7\":{\"summary\":\"Edit a Page\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageEdit\\/ProcessPageEdit.module\",\"core\":true,\"versionStr\":\"1.0.6\"},\"129\":{\"summary\":\"Provides an image select capability as used by some Fieldtype modules (like TinyMCE)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageEditImageSelect\\/ProcessPageEditImageSelect.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.8\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like TinyMCE)\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageEditLink\\/ProcessPageEditLink.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.5\"},\"12\":{\"summary\":\"List pages in a hierarchal tree structure\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageList\\/ProcessPageList.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.7\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageLister\\/ProcessPageLister.module\",\"core\":true,\"versionStr\":\"0.1.8\"},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageSearch\\/ProcessPageSearch.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.5\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageSort.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageTrash.module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageType\\/ProcessPageType.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageView.module\",\"core\":true,\"versionStr\":\"1.0.3\"},\"136\":{\"summary\":\"Manage system permissions\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPermission\\/ProcessPermission.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.0\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessProfile\\/ProcessProfile.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.1\"},\"168\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessRecentPages\\/ProcessRecentPages.module\",\"core\":true,\"versionStr\":\"0.0.2\"},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessRole\\/ProcessRole.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.1\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessTemplate\\/ProcessTemplate.module\",\"core\":true,\"versionStr\":\"1.0.8\"},\"66\":{\"summary\":\"Manage system users\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessUser\\/ProcessUser.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.4\"},\"125\":{\"summary\":\"Throttles the frequency of logins for a given account, helps to reduce dictionary attacks by introducing an exponential delay between logins.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Session\\/SessionLoginThrottle\\/SessionLoginThrottle.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"1.0.2\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/System\\/SystemUpdater\\/SystemUpdater.module\",\"core\":true,\"configurable\":true,\"versionStr\":\"0.0.9\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor like TinyMCE or a markup language like Markdown.\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterEntities.module\",\"core\":true,\"versionStr\":\"1.0.0\"},\"170\":{\"summary\":\"Enables querying the $pages API variable as a web service\",\"file\":\"\\/var\\/www\\/store\\/processwire\\/site\\/modules\\/ServicePages\\/ServicePages.module\",\"configurable\":true,\"versionStr\":\"0.0.6\"}}','2010-04-08 03:10:10'),('ModulesUninstalled.info','{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":12,\"versionStr\":\"0.1.2\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5 by Tom Reno (Renobird)\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"AdminThemeDefault\"],\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":\"template=admin\",\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/AdminTheme\\/AdminThemeReno\\/AdminThemeReno.module\",\"core\":true,\"configurable\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeCache.module\",\"core\":true,\"configurable\":false},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":102,\"versionStr\":\"1.0.2\",\"author\":\"\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"FieldtypeComments\"],\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":false,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeComments\\/CommentFilterAkismet.module\",\"core\":true,\"configurable\":true,\"permanent\":false},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"\",\"summary\":\"Field that stores user posted comments for a single Page\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"InputfieldCommentsAdmin\"],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeComments\\/FieldtypeComments.module\",\"core\":true,\"configurable\":false},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"\",\"summary\":\"Provides an administrative interface for working with comments\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"FieldtypeComments\"],\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeComments\\/InputfieldCommentsAdmin.module\",\"core\":true,\"configurable\":false,\"permanent\":false},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"author\":\"\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"InputfieldPageTable\"],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypePageTable.module\",\"core\":true,\"configurable\":false},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"InputfieldRepeater\"],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeRepeater\\/FieldtypeRepeater.module\",\"core\":true,\"configurable\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"FieldtypeRepeater\"],\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeRepeater\\/InputfieldRepeater.module\",\"core\":true,\"configurable\":false},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"InputfieldSelector\"],\"requiresVersions\":{\"InputfieldSelector\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454983,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Fieldtype\\/FieldtypeSelector.module\",\"core\":true,\"configurable\":false},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageAutocomplete\\/InputfieldPageAutocomplete.module\",\"core\":true,\"configurable\":false},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"author\":\"\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"FieldtypePageTable\"],\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Inputfield\\/InputfieldPageTable\\/InputfieldPageTable.module\",\"core\":true,\"configurable\":false},\"JqueryFancybox\":{\"name\":\"JqueryFancybox\",\"title\":\"jQuery Fancybox Plugin\",\"version\":126,\"versionStr\":\"1.2.6\",\"author\":\"\",\"summary\":\"Provides lightbox capability for image galleries. jQuery plugin by Janis Skarnelis.\",\"href\":\"http:\\/\\/fancybox.net\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Jquery\\/JqueryFancybox\\/JqueryFancybox.module\",\"core\":true,\"configurable\":false},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"author\":\"\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"http:\\/\\/processwire.com\\/talk\\/index.php\\/topic,284.0.html\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/LazyCron.module\",\"core\":true,\"configurable\":false,\"permanent\":false},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"http:\\/\\/www.processwire.com\\/api\\/modules\\/markupcache\\/\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupCache.module\",\"core\":true,\"configurable\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupPageFields.module\",\"core\":true,\"configurable\":false,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":102,\"versionStr\":\"1.0.2\",\"author\":\"\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":false,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Markup\\/MarkupRSS.module\",\"core\":true,\"configurable\":true,\"permanent\":false},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site).\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/PagePaths.module\",\"core\":true,\"configurable\":false},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-view\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessForgotPassword.module\",\"core\":true,\"configurable\":true,\"permanent\":false},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":102,\"versionStr\":\"1.0.2\",\"author\":\"\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-clone\",\"permissions\":[],\"autoload\":\"process=ProcessPageList\",\"singular\":null,\"created\":1425454985,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Process\\/ProcessPageClone.module\",\"core\":true,\"configurable\":false,\"permanent\":false},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"\",\"summary\":\"Enables you to browse active database sessions.\",\"href\":\"\",\"icon\":\"\",\"requires\":[\"SessionHandlerDB\"],\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Session\\/SessionHandlerDB\\/ProcessSessionDB.module\",\"core\":true,\"configurable\":false,\"permanent\":false},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":2,\"versionStr\":\"0.0.2\",\"author\":\"\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"ProcessSessionDB\"],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Session\\/SessionHandlerDB\\/SessionHandlerDB.module\",\"core\":true,\"configurable\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown Extra\",\"version\":122,\"versionStr\":\"1.2.2\",\"author\":\"\",\"summary\":\"Markdown extra lightweight markup language by Michel Fortin based on Markdown by John Gruber\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterMarkdownExtra\\/TextformatterMarkdownExtra.module\",\"core\":true,\"configurable\":false,\"url\":\"http:\\/\\/michelf.com\\/projects\\/php-markdown\\/extra\\/\"},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterNewlineBR.module\",\"core\":true,\"configurable\":false},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterNewlineUL.module\",\"core\":true,\"configurable\":false},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterPstripper.module\",\"core\":true,\"configurable\":false},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":151,\"versionStr\":\"1.5.1\",\"author\":\"\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterSmartypants\\/TextformatterSmartypants.module\",\"core\":true,\"configurable\":false,\"url\":\"http:\\/\\/michelf.com\\/projects\\/php-smartypants\\/typographer\\/\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"href\":\"\",\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":null,\"singular\":null,\"created\":1425454986,\"installed\":false,\"file\":\"\\/var\\/www\\/store\\/processwire\\/wire\\/modules\\/Textformatter\\/TextformatterStripTags.module\",\"core\":true,\"configurable\":true}}','2010-04-08 03:10:10'),('Modules.info','{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":12,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":\"template=admin\",\"singular\":false,\"created\":0,\"installed\":true},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":114,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":128,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"MarkupHTMLPurifier\"],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":1406273177,\"installed\":true},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":114,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":110,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":22,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":\"template=admin\",\"singular\":false,\"created\":0,\"installed\":true},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":105,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":1405916505,\"installed\":true},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":203,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":193,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":105,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"163\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"icon\":\"\",\"requires\":[\"LanguageSupportFields\",\"FieldtypeTextLanguage\"],\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":1409625956,\"installed\":true},\"164\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"icon\":\"\",\"requires\":[\"LanguageSupportFields\"],\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":1409625956,\"installed\":true},\"162\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"icon\":\"\",\"requires\":[\"LanguageSupportFields\"],\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":1409625956,\"installed\":true,\"permanent\":false},\"158\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1409625946,\"installed\":true},\"161\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"icon\":\"\",\"requires\":[\"LanguageSupport\"],\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1409625956,\"installed\":true},\"165\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":9,\"icon\":\"\",\"requires\":[\"LanguageSupport\",\"LanguageSupportFields\"],\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1409625961,\"installed\":true},\"166\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":111,\"icon\":\"\",\"requires\":[\"LanguageSupportFields\"],\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":\"template=admin\",\"singular\":true,\"created\":1409625972,\"installed\":true},\"159\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":102,\"icon\":\"language\",\"requires\":[\"LanguageSupport\"],\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":1409625946,\"installed\":true,\"useNavJSON\":true},\"160\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":100,\"icon\":\"\",\"requires\":[\"LanguageSupport\"],\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":1409625946,\"installed\":true},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":false,\"created\":1406273177,\"installed\":true},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":false},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":false,\"created\":0,\"installed\":true,\"permanent\":false},\"152\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":1,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":1406270217,\"installed\":true},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":true,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":108,\"icon\":\"cube\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"field-admin\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-view\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-view\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-view\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":117,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"module-admin\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":104,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":106,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":108,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":105,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":107,\"icon\":\"sitemap\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":18,\"icon\":\"search\",\"requires\":[\"ProcessWire\",\"InputfieldSelector\"],\"requiresVersions\":{\"ProcessWire\":[\">=\",\"2.4.3\"],\"InputfieldSelector\":[\">=\",9]},\"installs\":[],\"permission\":\"page-lister\",\"permissions\":{\"page-lister\":\"Use Page Lister\"},\"autoload\":false,\"singular\":false,\"created\":0,\"installed\":true,\"permanent\":true},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":105,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":103,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-view\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":100,\"icon\":\"gear\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"permission-admin\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":101,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"profile-edit\",\"permissions\":[],\"autoload\":false,\"singular\":1,\"created\":0,\"installed\":true,\"permanent\":true},\"168\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"page-edit-recent\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"autoload\":false,\"singular\":1,\"created\":1421845059,\"installed\":true,\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"},\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":101,\"icon\":\"gears\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"role-admin\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":108,\"icon\":\"cubes\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"template-admin\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":104,\"icon\":\"group\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"user-admin\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true,\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":102,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":\"function\",\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":false},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":9,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":true,\"created\":0,\"installed\":true,\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":0,\"created\":0,\"installed\":true},\"170\":{\"name\":\"ServicePages\",\"title\":\"Pages Web Service\",\"version\":6,\"icon\":\"\",\"requires\":[],\"requiresVersions\":[],\"installs\":[],\"permission\":\"\",\"permissions\":[],\"autoload\":false,\"singular\":false,\"created\":0,\"installed\":true}}','2010-04-08 03:10:10');
/*!40000 ALTER TABLE `caches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_body`
--

DROP TABLE IF EXISTS `field_body`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  `data1013` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_body`
--

LOCK TABLES `field_body` WRITE;
/*!40000 ALTER TABLE `field_body` DISABLE KEYS */;
INSERT INTO `field_body` VALUES (27,'<h3>The page you were looking for is not found.</h3>\n\n<p>Please use our search engine or navigation above to find the page.</p>','<h3>Die Seite, die Sie suchen, nicht gefunden. </h3>\n\n<p>Bitte verwenden Sie die Suchmaschine oder die Navigation oben, um die Seite zu finden.</p>','<h3>Sivu etsit ei löytynyt.</h3>\n\n<p>Ole hyvä ja käytä hakukonetta tai navigointi ennen löytää sivun.</p>'),(1,'<h2>What is ProcessWire?</h2>\n\n<p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire\'s API makes working with your content easy and enjoyable. <a href=\"http://processwire.com\">Learn more</a></p>\n\n<h3>About this site profile</h3>\n\n<p>This is a basic minimal site for you to use in developing your own site or to learn from. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href=\"http://www.processwire.com/talk/\" target=\"_blank\">ProcessWire forums</a> or <a href=\"http://modules.processwire.com/categories/site-profile/\">browse more site profiles</a>. If you are building a new site, this minimal profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely.</p>\n\n<h3>Browse the site</h3>','<h2>Was ist ProcessWire?</h2>\n\n<p>ProcessWire gibt Ihnen volle Kontrolle über Ihre Felder, Vorlagen und Markup. Es bietet ein mächtiges Templating-System, das sich ganz nach Ihren richtet. Mit dem ProcessWire API bearbeiten Sie Inhalte spielend einfach und bequem. <a href=\"http://de.processwire.com\">Mehr erfahren</a></p>\n\n<h3>Über dieses Webseiten-Profil</h3>\n\n<p>Dieses Demo-Profil ist eine einfache Webseite, die Sie als Grundlage für die Entwicklung Ihrer eigenen Webseiten verwenden können oder um sich mit dem System vertraut zu machen. Die Seiten dienen lediglich als Beispiele und erheben nicht den Anspruch, alle ProcessWire Features demonstrieren zu wollen. Wenn Sie Ihre eigene Webseiten bauen, ist dieses Profil ein guter Ausgangspunkt. Sie können die vorhandenen Vorlagen und das Design verwenden wie sie sind, oder nach Belieben austauschen.</p>\n\n<h3>Diese Seite durchsuchen</h3>','<h2>Mikä on ProcessWire?</h2>\n\n<p>ProcessWire antaa sinulle täyden kontrollin kentät, malleja ja markup. Se tarjoaa tehokkaan mallin, joka toimii niin teet. Puhumattakaan, ProcessWire API tekee työskentelystä sisällön helppoa ja nautinnollista. <a href=\"http://fi.processwire.com\">Lue lisää</a></p>\n\n<h3>Tietoa palvelusta profiili</h3>\n\n<p>Tämä on perus minimaalinen sivuston voit käyttää kehittämään oman sivuston tai oppia. On olemassa muutamia sivuja tänne esimerkeiksi, mutta tämä sivusto profiilia ei tee mitään yrittäneet osoittaa kaikille, että ProcessWire voi tehdä. Jos rakennat uuden sivuston, tämä minimaalinen profiili on hyvä paikka aloittaa. Voit käyttää näitä olemassa olevia malleja ja suunnittelun kuin ne ovat, tai voit korvata ne kokonaan.</p>\n\n<h3>Selata sivustoa</h3>'),(1002,'<h2>Ut capio feugiat saepius torqueo olim</h2>\n\n<h3>In utinam facilisi eum vicis feugait nimis</h3>\n\n<p>Iusto incassum appellatio cui macto genitus vel. Lobortis aliquam luctus, roto enim, imputo wisi tamen. Ratis odio, genitus acsi, neo illum consequat consectetuer ut.</p>\n\n<blockquote>\n<p>Wisi fere virtus cogo, ex ut vel nullus similis vel iusto. Tation incassum adsum in, quibus capto premo diam suscipere facilisi. Uxor laoreet mos capio premo feugait ille et. Pecus abigo immitto epulae duis vel. Neque causa, indoles verto, decet ingenium dignissim.</p>\n</blockquote>\n\n<p>Patria iriure vel vel autem proprius indoles ille sit. Tation blandit refoveo, accumsan ut ulciscor lucidus inhibeo capto aptent opes, foras.</p>\n\n<h3>Dolore ea valde refero feugait utinam luctus</h3>\n\n<p>Usitas, nostrud transverbero, in, amet, nostrud ad. Ex feugiat opto diam os aliquam regula lobortis dolore ut ut quadrum. Esse eu quis nunc jugis iriure volutpat wisi, fere blandit inhibeo melior, hendrerit, saluto velit. Eu bene ideo dignissim delenit accumsan nunc. Usitas ille autem camur consequat typicus feugait elit ex accumsan nutus accumsan nimis pagus, occuro. Immitto populus, qui feugiat opto pneum letalis paratus. Mara conventio torqueo nibh caecus abigo sit eum brevitas. Populus, duis ex quae exerci hendrerit, si antehabeo nobis, consequat ea praemitto zelus.</p>\n\n<p>Immitto os ratis euismod conventio erat jus caecus sudo. code test Appellatio consequat, et ibidem ludus nulla dolor augue abdo tego euismod plaga lenis. Sit at nimis venio venio tego os et pecus enim pneum magna nobis ad pneum. Saepius turpis probo refero molior nonummy aliquam neque appellatio jus luctus acsi. Ulciscor refero pagus imputo eu refoveo valetudo duis dolore usitas. Consequat suscipere quod torqueo ratis ullamcorper, dolore lenis, letalis quia quadrum plaga minim.</p>','',''),(1001,'<h2>Si lobortis singularis genitus ibidem saluto.</h2>','<h2>Hinter den Wortbergen</h2>','<h2>Jos yksittäisten politiikkojen syntyy siellä vierailla.</h2>'),(1004,'<h2>Pertineo vel dignissim, natu letalis fere odio</h2>\n\n<p>Magna in gemino, gilvus iusto capto jugis abdo mos aptent acsi qui. Utrum inhibeo humo humo duis quae. Lucidus paulatim facilisi scisco quibus hendrerit conventio adsum.</p>\n\n<h3>Si lobortis singularis genitus ibidem saluto</h3>\n\n<ul><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ul><p>Iriure, ex velit, praesent vulpes delenit capio vero gilvus inhibeo letatio aliquip metuo qui eros. Transverbero demoveo euismod letatio torqueo melior. Ut odio in suscipit paulatim amet huic letalis suscipere eros causa, letalis magna.</p>\n\n<ol><li>Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud.</li>\n	<li>Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu.</li>\n	<li>Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit.</li>\n	<li>Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue.</li>\n</ol>','','');
/*!40000 ALTER TABLE `field_body` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_email`
--

DROP TABLE IF EXISTS `field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_email`
--

LOCK TABLES `field_email` WRITE;
/*!40000 ALTER TABLE `field_email` DISABLE KEYS */;
INSERT INTO `field_email` VALUES (41,'');
/*!40000 ALTER TABLE `field_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_headline`
--

DROP TABLE IF EXISTS `field_headline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text,
  `data1013` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_headline`
--

LOCK TABLES `field_headline` WRITE;
/*!40000 ALTER TABLE `field_headline` DISABLE KEYS */;
INSERT INTO `field_headline` VALUES (1,'Minimal Site Profile','Kleine Demo-Webseite','Vähäinen Sivusto Esimerkiksi');
/*!40000 ALTER TABLE `field_headline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_images`
--

DROP TABLE IF EXISTS `field_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_images`
--

LOCK TABLES `field_images` WRITE;
/*!40000 ALTER TABLE `field_images` DISABLE KEYS */;
INSERT INTO `field_images` VALUES (1,'bigger-terminal.jpg',0,'{\"0\":\"We\'re gonna need a bigger terminal.\",\"1012\":\"Wir brauchen einen größeren Terminal.\",\"1013\":\"Me tarvitsemme isomman päätteen.\"}','2014-09-02 11:13:06','2014-09-02 11:11:35'),(1,'design-team.jpg',1,'{\"0\":\"You know, there are better ways to manage a design team.\",\"1012\":\"Wissen Si, es gibt bessere Möglichkeiten, ein Design-Team zu leiten.\",\"1013\":\"Te tiedätte, on olemassa parempia tapoja hallita suunnittelutiimi.\"}','2014-09-02 11:13:06','2014-09-02 11:11:35');
/*!40000 ALTER TABLE `field_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language`
--

DROP TABLE IF EXISTS `field_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language`
--

LOCK TABLES `field_language` WRITE;
/*!40000 ALTER TABLE `field_language` DISABLE KEYS */;
INSERT INTO `field_language` VALUES (40,1010,0),(41,1010,0);
/*!40000 ALTER TABLE `field_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language_files`
--

DROP TABLE IF EXISTS `field_language_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files`
--

LOCK TABLES `field_language_files` WRITE;
/*!40000 ALTER TABLE `field_language_files` DISABLE KEYS */;
INSERT INTO `field_language_files` VALUES (1012,'wire--templates-admin--debug-inc.json',117,'[\"\"]','2014-09-02 11:51:01','2014-09-02 11:51:01'),(1012,'wire--modules--textformatter--textformatterentities-module.json',116,'[\"\"]','2014-09-02 11:51:00','2014-09-02 11:51:00'),(1012,'wire--modules--system--systemupdater--systemupdater-module.json',115,'[\"\"]','2014-09-02 11:51:00','2014-09-02 11:51:00'),(1012,'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json',114,'[\"\"]','2014-09-02 11:51:00','2014-09-02 11:51:00'),(1012,'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json',113,'[\"\"]','2014-09-02 11:51:00','2014-09-02 11:51:00'),(1012,'wire--modules--session--sessionhandlerdb--processsessiondb-module.json',112,'[\"\"]','2014-09-02 11:50:59','2014-09-02 11:50:59'),(1012,'wire--modules--process--processuser--processuser-module.json',111,'[\"\"]','2014-09-02 11:50:59','2014-09-02 11:50:59'),(1012,'wire--modules--process--processtemplate--processtemplateexportimport-php.json',110,'[\"\"]','2014-09-02 11:50:59','2014-09-02 11:50:59'),(1012,'wire--modules--process--processtemplate--processtemplate-module.json',109,'[\"\"]','2014-09-02 11:50:58','2014-09-02 11:50:58'),(1012,'wire--modules--process--processprofile--processprofile-module.json',107,'[\"\"]','2014-09-02 11:50:58','2014-09-02 11:50:58'),(1012,'wire--modules--process--processrole--processrole-module.json',108,'[\"\"]','2014-09-02 11:50:58','2014-09-02 11:50:58'),(1012,'wire--modules--process--processpermission--processpermission-module.json',106,'[\"\"]','2014-09-02 11:50:58','2014-09-02 11:50:58'),(1012,'wire--modules--process--processpageview-module.json',105,'[\"\"]','2014-09-02 11:50:57','2014-09-02 11:50:57'),(1012,'wire--modules--process--processpagetype--processpagetype-module.json',104,'[\"\"]','2014-09-02 11:50:57','2014-09-02 11:50:57'),(1012,'wire--modules--process--processpagetrash-module.json',103,'[\"\"]','2014-09-02 11:50:57','2014-09-02 11:50:57'),(1012,'wire--modules--process--processpagesort-module.json',102,'[\"\"]','2014-09-02 11:50:57','2014-09-02 11:50:57'),(1012,'wire--modules--process--processpagesearch--processpagesearch-module.json',101,'[\"\"]','2014-09-02 11:50:56','2014-09-02 11:50:56'),(1012,'wire--modules--process--processpagelister--processpagelister-module.json',100,'[\"\"]','2014-09-02 11:50:56','2014-09-02 11:50:56'),(1012,'wire--modules--process--processpagelist--processpagelist-module.json',99,'[\"\"]','2014-09-02 11:50:56','2014-09-02 11:50:56'),(1012,'wire--modules--process--processpageedit--processpageedit-module.json',96,'[\"\"]','2014-09-02 11:50:55','2014-09-02 11:50:55'),(1012,'wire--modules--process--processpageeditlink--processpageeditlink-module.json',98,'[\"\"]','2014-09-02 11:50:56','2014-09-02 11:50:56'),(1012,'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json',97,'[\"\"]','2014-09-02 11:50:55','2014-09-02 11:50:55'),(1012,'wire--modules--process--processpageclone-module.json',95,'[\"\"]','2014-09-02 11:50:55','2014-09-02 11:50:55'),(1012,'wire--modules--process--processpageadd--processpageadd-module.json',94,'[\"\"]','2014-09-02 11:50:55','2014-09-02 11:50:55'),(1012,'wire--modules--process--processmodule--processmoduleinstall-php.json',93,'[\"\"]','2014-09-02 11:50:54','2014-09-02 11:50:54'),(1012,'wire--modules--process--processlogin--processlogin-module.json',91,'[\"\"]','2014-09-02 11:50:54','2014-09-02 11:50:54'),(1012,'wire--modules--process--processmodule--processmodule-module.json',92,'[\"\"]','2014-09-02 11:50:54','2014-09-02 11:50:54'),(1012,'wire--modules--process--processlist-module.json',90,'[\"\"]','2014-09-02 11:50:54','2014-09-02 11:50:54'),(1012,'wire--modules--process--processhome-module.json',89,'[\"\"]','2014-09-02 11:50:53','2014-09-02 11:50:53'),(1012,'wire--modules--process--processforgotpassword-module.json',88,'[\"\"]','2014-09-02 11:50:53','2014-09-02 11:50:53'),(1012,'wire--modules--process--processfield--processfield-module.json',86,'[\"\"]','2014-09-02 11:50:53','2014-09-02 11:50:53'),(1012,'wire--modules--process--processfield--processfieldexportimport-php.json',87,'[\"\"]','2014-09-02 11:50:53','2014-09-02 11:50:53'),(1012,'wire--modules--pagerender-module.json',85,'[\"\"]','2014-09-02 11:50:52','2014-09-02 11:50:52'),(1012,'wire--modules--pagepaths-module.json',84,'[\"\"]','2014-09-02 11:50:52','2014-09-02 11:50:52'),(1012,'wire--modules--languagesupport--languagetabs-module.json',80,'[\"\"]','2014-09-02 11:50:51','2014-09-02 11:50:51'),(1012,'wire--modules--languagesupport--processlanguage-module.json',81,'[\"\"]','2014-09-02 11:50:51','2014-09-02 11:50:51'),(1012,'wire--modules--markup--markuppagefields-module.json',82,'[\"\"]','2014-09-02 11:50:52','2014-09-02 11:50:52'),(1012,'wire--modules--markup--markuppagernav--markuppagernav-module.json',83,'[\"\"]','2014-09-02 11:50:52','2014-09-02 11:50:52'),(1012,'wire--modules--languagesupport--languagesupportpagenames-module.json',79,'[\"\"]','2014-09-02 11:50:51','2014-09-02 11:50:51'),(1012,'wire--modules--languagesupport--languageparser-php.json',76,'[\"\"]','2014-09-02 11:50:50','2014-09-02 11:50:50'),(1012,'wire--modules--languagesupport--languagesupport-module.json',77,'[\"\"]','2014-09-02 11:50:50','2014-09-02 11:50:50'),(1012,'wire--modules--languagesupport--languagesupportfields-module.json',78,'[\"\"]','2014-09-02 11:50:51','2014-09-02 11:50:51'),(1012,'wire--modules--inputfield--inputfieldurl-module.json',74,'[\"\"]','2014-09-02 11:50:49','2014-09-02 11:50:49'),(1012,'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json',75,'[\"\"]','2014-09-02 11:50:50','2014-09-02 11:50:50'),(1012,'wire--modules--inputfield--inputfieldtinymce--inputfieldtinymce-module.json',73,'[\"\"]','2014-09-02 11:50:49','2014-09-02 11:50:49'),(1012,'wire--modules--inputfield--inputfieldtextarea-module.json',72,'[\"\"]','2014-09-02 11:50:49','2014-09-02 11:50:49'),(1012,'wire--modules--inputfield--inputfieldselectmultiple-module.json',68,'[\"\"]','2014-09-02 11:50:48','2014-09-02 11:50:48'),(1012,'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json',69,'[\"\"]','2014-09-02 11:50:48','2014-09-02 11:50:48'),(1012,'wire--modules--inputfield--inputfieldtext-module.json',71,'[\"\"]','2014-09-02 11:50:49','2014-09-02 11:50:49'),(1012,'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json',70,'[\"\"]','2014-09-02 11:50:49','2014-09-02 11:50:49'),(1012,'wire--modules--inputfield--inputfieldselect-module.json',67,'[\"\"]','2014-09-02 11:50:48','2014-09-02 11:50:48'),(1012,'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json',66,'[\"\"]','2014-09-02 11:50:48','2014-09-02 11:50:48'),(1012,'wire--modules--inputfield--inputfieldpassword-module.json',65,'[\"\"]','2014-09-02 11:50:48','2014-09-02 11:50:48'),(1012,'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json',61,'[\"\"]','2014-09-02 11:50:47','2014-09-02 11:50:47'),(1012,'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json',62,'[\"\"]','2014-09-02 11:50:47','2014-09-02 11:50:47'),(1012,'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json',63,'[\"\"]','2014-09-02 11:50:47','2014-09-02 11:50:47'),(1012,'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json',64,'[\"\"]','2014-09-02 11:50:47','2014-09-02 11:50:47'),(1012,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json',60,'[\"\"]','2014-09-02 11:50:46','2014-09-02 11:50:46'),(1012,'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json',59,'[\"\"]','2014-09-02 11:50:46','2014-09-02 11:50:46'),(1012,'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json',58,'[\"\"]','2014-09-02 11:50:46','2014-09-02 11:50:46'),(1012,'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json',57,'[\"\"]','2014-09-02 11:50:46','2014-09-02 11:50:46'),(1012,'wire--modules--inputfield--inputfieldname-module.json',56,'[\"\"]','2014-09-02 11:50:46','2014-09-02 11:50:46'),(1012,'wire--modules--inputfield--inputfieldmarkup-module.json',55,'[\"\"]','2014-09-02 11:50:45','2014-09-02 11:50:45'),(1012,'wire--modules--inputfield--inputfieldinteger-module.json',54,'[\"\"]','2014-09-02 11:50:45','2014-09-02 11:50:45'),(1012,'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json',49,'[\"\"]','2014-09-02 11:50:44','2014-09-02 11:50:44'),(1012,'wire--modules--inputfield--inputfieldfloat-module.json',50,'[\"\"]','2014-09-02 11:50:44','2014-09-02 11:50:44'),(1012,'wire--modules--inputfield--inputfieldform-module.json',51,'[\"\"]','2014-09-02 11:50:45','2014-09-02 11:50:45'),(1012,'wire--modules--inputfield--inputfieldhidden-module.json',52,'[\"\"]','2014-09-02 11:50:45','2014-09-02 11:50:45'),(1012,'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json',53,'[\"\"]','2014-09-02 11:50:45','2014-09-02 11:50:45'),(1012,'wire--modules--inputfield--inputfieldfieldset-module.json',48,'[\"\"]','2014-09-02 11:50:44','2014-09-02 11:50:44'),(1012,'wire--modules--inputfield--inputfieldemail-module.json',47,'[\"\"]','2014-09-02 11:50:44','2014-09-02 11:50:44'),(1012,'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json',46,'[\"\"]','2014-09-02 11:50:44','2014-09-02 11:50:44'),(1012,'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json',45,'[\"\"]','2014-09-02 11:50:43','2014-09-02 11:50:43'),(1012,'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json',44,'[\"\"]','2014-09-02 11:50:43','2014-09-02 11:50:43'),(1012,'wire--modules--inputfield--inputfieldbutton-module.json',42,'[\"\"]','2014-09-02 11:50:43','2014-09-02 11:50:43'),(1012,'wire--modules--inputfield--inputfieldcheckbox-module.json',43,'[\"\"]','2014-09-02 11:50:43','2014-09-02 11:50:43'),(1012,'wire--modules--fieldtype--fieldtypetextarea-module.json',39,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--fieldtype--fieldtypeurl-module.json',40,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json',41,'[\"\"]','2014-09-02 11:50:43','2014-09-02 11:50:43'),(1012,'wire--modules--fieldtype--fieldtypetext-module.json',38,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--fieldtype--fieldtypeselector-module.json',37,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json',36,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json',35,'[\"\"]','2014-09-02 11:50:42','2014-09-02 11:50:42'),(1012,'wire--modules--fieldtype--fieldtypepagetable-module.json',34,'[\"\"]','2014-09-02 11:50:41','2014-09-02 11:50:41'),(1012,'wire--modules--fieldtype--fieldtypepage-module.json',33,'[\"\"]','2014-09-02 11:50:41','2014-09-02 11:50:41'),(1012,'wire--modules--fieldtype--fieldtypemodule-module.json',32,'[\"\"]','2014-09-02 11:50:41','2014-09-02 11:50:41'),(1012,'wire--modules--fieldtype--fieldtypefloat-module.json',31,'[\"\"]','2014-09-02 11:50:41','2014-09-02 11:50:41'),(1012,'wire--modules--fieldtype--fieldtypefile-module.json',30,'[\"\"]','2014-09-02 11:50:41','2014-09-02 11:50:41'),(1012,'wire--modules--fieldtype--fieldtypedatetime-module.json',29,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json',28,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json',27,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json',24,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--fieldtype--fieldtypecomments--commentform-php.json',25,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json',26,'[\"\"]','2014-09-02 11:50:40','2014-09-02 11:50:40'),(1012,'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json',23,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--wireupload-php.json',22,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--wiretempdir-php.json',21,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--sessioncsrf-php.json',18,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--wirecache-php.json',19,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--wirehttp-php.json',20,'[\"\"]','2014-09-02 11:50:39','2014-09-02 11:50:39'),(1012,'wire--core--session-php.json',17,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--pages-php.json',13,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--password-php.json',14,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--process-php.json',15,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--sanitizer-php.json',16,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--pagefile-php.json',11,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--pageimage-php.json',12,'[\"\"]','2014-09-02 11:50:38','2014-09-02 11:50:38'),(1012,'wire--core--modules-php.json',10,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--inputfieldwrapper-php.json',9,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--inputfield-php.json',8,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--functions-php.json',7,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--fieldtypemulti-php.json',6,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--fieldtype-php.json',5,'[\"\"]','2014-09-02 11:50:37','2014-09-02 11:50:37'),(1012,'wire--core--fieldselectorinfo-php.json',4,'[\"\"]','2014-09-02 11:50:36','2014-09-02 11:50:36'),(1012,'wire--core--fields-php.json',2,'[\"\"]','2014-09-02 11:50:36','2014-09-02 11:50:36'),(1012,'wire--core--admintheme-php.json',3,'[\"\"]','2014-09-02 11:50:36','2014-09-02 11:50:36'),(1012,'wire--core--fieldgroups-php.json',1,'[\"\"]','2014-09-02 11:50:36','2014-09-02 11:50:36'),(1012,'wire--core--field-php.json',0,'[\"\"]','2014-09-02 11:50:36','2014-09-02 11:50:36'),(1012,'wire--templates-admin--default-php.json',118,'[\"\"]','2014-09-02 11:51:01','2014-09-02 11:51:01');
/*!40000 ALTER TABLE `field_language_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_language_files_site`
--

DROP TABLE IF EXISTS `field_language_files_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_language_files_site`
--

LOCK TABLES `field_language_files_site` WRITE;
/*!40000 ALTER TABLE `field_language_files_site` DISABLE KEYS */;
INSERT INTO `field_language_files_site` VALUES (1012,'site--templates--_main-php.json',0,'[\"\"]','2014-09-02 10:08:09','2014-09-02 10:08:09'),(1012,'site--templates--search-php.json',1,'[\"\"]','2014-09-02 10:08:09','2014-09-02 10:08:09'),(1013,'site--templates--_main-php.json',0,'[\"\"]','2014-09-02 10:41:19','2014-09-02 10:41:19'),(1013,'site--templates--search-php.json',1,'[\"\"]','2014-09-02 10:41:19','2014-09-02 10:41:19');
/*!40000 ALTER TABLE `field_language_files_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_pass`
--

DROP TABLE IF EXISTS `field_pass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_pass`
--

LOCK TABLES `field_pass` WRITE;
/*!40000 ALTER TABLE `field_pass` DISABLE KEYS */;
INSERT INTO `field_pass` VALUES (41,'KrmDPpVgGy.MCMoZAHtbI9Q6lnpBrF6','$2y$11$x2HOkadBKUTU87e9EeKreO'),(40,'','');
/*!40000 ALTER TABLE `field_pass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_permissions`
--

DROP TABLE IF EXISTS `field_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_permissions`
--

LOCK TABLES `field_permissions` WRITE;
/*!40000 ALTER TABLE `field_permissions` DISABLE KEYS */;
INSERT INTO `field_permissions` VALUES (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);
/*!40000 ALTER TABLE `field_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_process`
--

DROP TABLE IF EXISTS `field_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_process`
--

LOCK TABLES `field_process` WRITE;
/*!40000 ALTER TABLE `field_process` DISABLE KEYS */;
INSERT INTO `field_process` VALUES (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76),(1007,150),(1009,159),(1011,160),(1015,168);
/*!40000 ALTER TABLE `field_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_roles`
--

DROP TABLE IF EXISTS `field_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_roles`
--

LOCK TABLES `field_roles` WRITE;
/*!40000 ALTER TABLE `field_roles` DISABLE KEYS */;
INSERT INTO `field_roles` VALUES (40,37,0),(41,37,0),(41,38,1);
/*!40000 ALTER TABLE `field_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_sidebar`
--

DROP TABLE IF EXISTS `field_sidebar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  `data1013` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_sidebar`
--

LOCK TABLES `field_sidebar` WRITE;
/*!40000 ALTER TABLE `field_sidebar` DISABLE KEYS */;
INSERT INTO `field_sidebar` VALUES (1,'<h3>About ProcessWire</h3>\n\n<p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p>\n\n<ul><li><a href=\"http://processwire.com/talk/\">Support</a></li>\n	<li><a href=\"http://processwire.com/docs/\">Documentation</a></li>\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Tutorials</a></li>\n	<li><a href=\"http://cheatsheet.processwire.com/\">API Cheatsheet</a></li>\n	<li><a href=\"http://modules.processwire.com/\">Modules/Plugins</a></li>\n</ul>','<h3>Über ProcessWire</h3>\n\n<p>ProcessWire ist ein Open-Source-CMS und Web-Applikations-Framework, das sich ganz den Anforderungen von Designern, Entwicklern und deren Kunden anpaßt.</p>\n\n<ul><li><a href=\"http://processwire.com/talk/\">Support</a></li>\n	<li><a href=\"http://processwire.com/docs/\">Dokumentation</a></li>\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Tutorials</a></li>\n	<li><a href=\"http://cheatsheet.processwire.com\">Cheatsheet API</a></li>\n	<li><a href=\"http://modules.processwire.com\">Module / Plugins</a></li>\n</ul>','<h3>Tietoja ProcessWire</h3>\n\n<p>ProcessWire on avoimen lähdekoodin CMS ja web-sovellus kehys, jolla pyritään tarpeisiin suunnittelijat, kehittäjät ja niiden asiakkaille.</p>\n\n<ul><li><a href=\"http://processwire.com/talk/\">Tuki</a></li>\n	<li><a href=\"http://processwire.com/docs/\">Dokumentointi</a></li>\n	<li><a href=\"http://processwire.com/docs/tutorials/\">Oppaat</a></li>\n	<li><a href=\"http://cheatsheet.processwire.com/\">API Cheatsheet</a></li>\n	<li><a href=\"http://modules.processwire.com/\">Moduulit / plugins</a></li>\n</ul>'),(1002,'<h3>Sudo nullus</h3>\n\n<p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>','','');
/*!40000 ALTER TABLE `field_sidebar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_summary`
--

DROP TABLE IF EXISTS `field_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1012` mediumtext,
  `data1013` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_summary`
--

LOCK TABLES `field_summary` WRITE;
/*!40000 ALTER TABLE `field_summary` DISABLE KEYS */;
INSERT INTO `field_summary` VALUES (1002,'Dolore ea valde refero feugait utinam luctus. Probo velit commoveo et, delenit praesent, suscipit zelus, hendrerit zelus illum facilisi, regula. ','',''),(1001,'This is a placeholder page with two child pages to serve as an example. ','Dies ist eine Beispiel-Seite mit zwei Unterseiten.','Tämä on paikkamerkki sivulle, jossa on kaksi lasta sivua toimimaan esimerkkinä.'),(1005,'View this template\'s source for a demonstration of how to create a basic site map. ','Schauen Sie sich den Quell-Code dieser Musterseite an, um zu sehen, wie man einfache Sitemaps erstellt.','Näytä tämä malli n lähde osoitus siitä, miten luoda perus-sivuston kartta.'),(1004,'Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.','',''),(1,'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ','ProcessWire ist ein Open-Source-CMS und Web-Applikations-Framework, das sich ganz den Anforderungen von Designern, Entwicklern und deren Kunden anpaßt.','ProcessWire on avoimen lähdekoodin CMS ja web-sovellus kehys, jolla pyritään tarpeisiin suunnittelijat, kehittäjät ja niiden asiakkaille.');
/*!40000 ALTER TABLE `field_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_title`
--

DROP TABLE IF EXISTS `field_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1012` text,
  `data1013` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  KEY `data_exact1012` (`data1012`(255)),
  KEY `data_exact1013` (`data1013`(255)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1012` (`data1012`),
  FULLTEXT KEY `data1013` (`data1013`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_title`
--

LOCK TABLES `field_title` WRITE;
/*!40000 ALTER TABLE `field_title` DISABLE KEYS */;
INSERT INTO `field_title` VALUES (11,'Templates','',''),(16,'Fields','',''),(22,'Setup','',''),(3,'Pages','',''),(6,'Add Page','',''),(8,'Tree','',''),(9,'Save Sort','',''),(10,'Edit Page','',''),(21,'Modules','',''),(29,'Users','',''),(30,'Roles','',''),(2,'Admin','',''),(7,'Trash','',''),(27,'404 Page','404 Seite','404 Sivu'),(302,'Insert Link','',''),(23,'Login','',''),(304,'Profile','',''),(301,'Empty Trash','',''),(300,'Search','',''),(303,'Insert Image','',''),(28,'Access','',''),(31,'Permissions','',''),(32,'Edit pages','',''),(34,'Delete pages','',''),(35,'Move pages (change parent)','',''),(36,'View pages','',''),(50,'Sort child pages','',''),(51,'Change templates on pages','',''),(52,'Administer users','',''),(53,'User can update profile/password','',''),(54,'Lock or unlock a page','',''),(1,'Home','Zuhause','Koti'),(1001,'About','Über','Tietoja'),(1002,'Child page example 1','Unterseite Beispiel 1','Alasivu esimerkki 1'),(1000,'Search','Suche','Haku'),(1004,'Child page example 2','Unterseite Beispiel 2','Alasivu esimerkki 2'),(1005,'Site Map','Sitemap','Sivukartta'),(1006,'Use Page Lister','',''),(1007,'Find','',''),(1009,'Languages','',''),(1010,'English','Englisch','Englanti'),(1011,'Language Translator','',''),(1012,'German','Deutsch','Saksan'),(1013,'Finnish','Finnisch','Suomi'),(1015,'Recent','',''),(1016,'Can see recently edited pages','',''),(1018,'Pages Web Service','','');
/*!40000 ALTER TABLE `field_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(1,'home'),(88,'sitemap'),(83,'basic-page'),(80,'search'),(97,'language'),(99,'service-pages');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups_fields`
--

DROP TABLE IF EXISTS `fieldgroups_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups_fields`
--

LOCK TABLES `fieldgroups_fields` WRITE;
/*!40000 ALTER TABLE `fieldgroups_fields` DISABLE KEYS */;
INSERT INTO `fieldgroups_fields` VALUES (2,2,1,NULL),(2,1,0,NULL),(3,3,0,NULL),(3,4,2,NULL),(4,5,0,NULL),(5,1,0,NULL),(3,92,1,NULL),(1,44,5,NULL),(1,82,4,NULL),(80,1,0,NULL),(83,82,3,NULL),(83,76,2,NULL),(1,79,2,NULL),(88,1,0,NULL),(1,76,3,NULL),(88,79,1,NULL),(83,44,4,NULL),(83,79,1,NULL),(97,100,1,NULL),(3,98,3,NULL),(83,1,0,NULL),(97,97,2,NULL),(97,1,0,NULL),(1,1,0,NULL),(1,78,1,NULL),(99,1,0,NULL);
/*!40000 ALTER TABLE `fieldgroups_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'FieldtypePageTitleLanguage','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1012\":\"Titel\",\"label1013\":\"Nimi\\u00f6\",\"langBlankInherit\":0}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(82,'FieldtypeTextareaLanguage','sidebar',0,'Sidebar','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"collapsed\":2,\"label1012\":\"Seitenleiste\",\"label1013\":\"Sivupalkki\"}'),(44,'FieldtypeImage','images',0,'Images','{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":2,\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\",\"label1012\":\"Bilder\",\"label1013\":\"Kuvat\",\"textformatters\":[\"TextformatterEntities\"]}'),(79,'FieldtypeTextareaLanguage','summary',1,'Summary','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"label1012\":\"Zusammenfassung\",\"label1013\":\"Yhteenveto\",\"langBlankInherit\":0}'),(76,'FieldtypeTextareaLanguage','body',0,'Body','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8],\"label1012\":\"Inhalt\",\"label1013\":\"Sis\\u00e4llys\",\"langBlankInherit\":0}'),(78,'FieldtypeTextLanguage','headline',0,'Headline','{\"description\":\"Use this instead of the field above if more text is needed for the page than for the navigation. \",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"langBlankInherit\":1,\"label1012\":\"\\u00dcberschrift\",\"label1013\":\"Otsikko\",\"description1012\":\"Verwenden Sie diese, anstatt das Feld \\u00fcber, wenn mehr Text f\\u00fcr die Seite als f\\u00fcr die Navigation ben\\u00f6tigt.\",\"description1013\":\"K\\u00e4yt\\u00e4 t\\u00e4t\\u00e4 sijasta kent\\u00e4n yl\\u00e4puolella, jos enemm\\u00e4n teksti\\u00e4 tarvitaan sivun kuin navigointiin.\"}'),(97,'FieldtypeFile','language_files',24,'Core Translation Files','{\"extensions\":\"json\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2,\"outputFormat\":0,\"defaultValuePage\":0,\"clone_field\":1,\"description\":\"Use this for field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\"}'),(98,'FieldtypePage','language',24,'Language','{\"derefAsPage\":1,\"parent_id\":1009,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),(100,'FieldtypeFile','language_files_site',24,'Site Translation Files','{\"description\":\"Use this for field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"extensions\":\"json\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"descriptionRows\":0,\"fileSchema\":2}');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'FieldtypeTextarea',0,'','0000-00-00 00:00:00'),(2,'FieldtypeNumber',0,'','0000-00-00 00:00:00'),(3,'FieldtypeText',0,'','0000-00-00 00:00:00'),(4,'FieldtypePage',0,'','0000-00-00 00:00:00'),(30,'InputfieldForm',0,'','0000-00-00 00:00:00'),(6,'FieldtypeFile',0,'','0000-00-00 00:00:00'),(7,'ProcessPageEdit',1,'','0000-00-00 00:00:00'),(10,'ProcessLogin',0,'','0000-00-00 00:00:00'),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}','0000-00-00 00:00:00'),(121,'ProcessPageEditLink',1,'','0000-00-00 00:00:00'),(14,'ProcessPageSort',0,'','0000-00-00 00:00:00'),(15,'InputfieldPageListSelect',0,'','0000-00-00 00:00:00'),(117,'JqueryUI',1,'','0000-00-00 00:00:00'),(17,'ProcessPageAdd',0,'','0000-00-00 00:00:00'),(125,'SessionLoginThrottle',3,'','0000-00-00 00:00:00'),(122,'InputfieldPassword',0,'','0000-00-00 00:00:00'),(25,'InputfieldAsmSelect',0,'','0000-00-00 00:00:00'),(116,'JqueryCore',1,'','0000-00-00 00:00:00'),(27,'FieldtypeModule',0,'','0000-00-00 00:00:00'),(28,'FieldtypeDatetime',0,'','0000-00-00 00:00:00'),(29,'FieldtypeEmail',0,'','0000-00-00 00:00:00'),(108,'InputfieldURL',0,'','0000-00-00 00:00:00'),(32,'InputfieldSubmit',0,'','0000-00-00 00:00:00'),(33,'InputfieldWrapper',0,'','0000-00-00 00:00:00'),(34,'InputfieldText',0,'','0000-00-00 00:00:00'),(35,'InputfieldTextarea',0,'','0000-00-00 00:00:00'),(36,'InputfieldSelect',0,'','0000-00-00 00:00:00'),(37,'InputfieldCheckbox',0,'','0000-00-00 00:00:00'),(38,'InputfieldCheckboxes',0,'','0000-00-00 00:00:00'),(39,'InputfieldRadios',0,'','0000-00-00 00:00:00'),(40,'InputfieldHidden',0,'','0000-00-00 00:00:00'),(41,'InputfieldName',0,'','0000-00-00 00:00:00'),(43,'InputfieldSelectMultiple',0,'','0000-00-00 00:00:00'),(45,'JqueryWireTabs',0,'','0000-00-00 00:00:00'),(46,'ProcessPage',0,'','0000-00-00 00:00:00'),(47,'ProcessTemplate',0,'','0000-00-00 00:00:00'),(48,'ProcessField',0,'','0000-00-00 00:00:00'),(50,'ProcessModule',0,'','0000-00-00 00:00:00'),(114,'PagePermissions',3,'','0000-00-00 00:00:00'),(97,'FieldtypeCheckbox',1,'','0000-00-00 00:00:00'),(115,'PageRender',3,'{\"clearCache\":1}','0000-00-00 00:00:00'),(55,'InputfieldFile',0,'','0000-00-00 00:00:00'),(56,'InputfieldImage',0,'','0000-00-00 00:00:00'),(57,'FieldtypeImage',0,'','0000-00-00 00:00:00'),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}','0000-00-00 00:00:00'),(61,'TextformatterEntities',0,'','0000-00-00 00:00:00'),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','0000-00-00 00:00:00'),(67,'MarkupAdminDataTable',0,'','0000-00-00 00:00:00'),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','0000-00-00 00:00:00'),(76,'ProcessList',0,'','0000-00-00 00:00:00'),(78,'InputfieldFieldset',0,'','0000-00-00 00:00:00'),(79,'InputfieldMarkup',0,'','0000-00-00 00:00:00'),(80,'InputfieldEmail',0,'','0000-00-00 00:00:00'),(89,'FieldtypeFloat',1,'','0000-00-00 00:00:00'),(83,'ProcessPageView',0,'','0000-00-00 00:00:00'),(84,'FieldtypeInteger',0,'','0000-00-00 00:00:00'),(85,'InputfieldInteger',0,'','0000-00-00 00:00:00'),(86,'InputfieldPageName',0,'','0000-00-00 00:00:00'),(87,'ProcessHome',0,'','0000-00-00 00:00:00'),(90,'InputfieldFloat',0,'','0000-00-00 00:00:00'),(94,'InputfieldDatetime',0,'','0000-00-00 00:00:00'),(98,'MarkupPagerNav',0,'','0000-00-00 00:00:00'),(129,'ProcessPageEditImageSelect',1,'','0000-00-00 00:00:00'),(103,'JqueryTableSorter',1,'','0000-00-00 00:00:00'),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title\",\"displayField\":\"title path\"}','0000-00-00 00:00:00'),(105,'FieldtypeFieldsetOpen',1,'','0000-00-00 00:00:00'),(106,'FieldtypeFieldsetClose',1,'','0000-00-00 00:00:00'),(107,'FieldtypeFieldsetTabOpen',1,'','0000-00-00 00:00:00'),(109,'ProcessPageTrash',1,'','0000-00-00 00:00:00'),(111,'FieldtypePageTitle',1,'','0000-00-00 00:00:00'),(112,'InputfieldPageTitle',0,'','0000-00-00 00:00:00'),(113,'MarkupPageArray',3,'','0000-00-00 00:00:00'),(131,'InputfieldButton',0,'','0000-00-00 00:00:00'),(133,'FieldtypePassword',1,'','0000-00-00 00:00:00'),(134,'ProcessPageType',1,'{\"showFields\":[]}','0000-00-00 00:00:00'),(135,'FieldtypeURL',1,'','0000-00-00 00:00:00'),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','0000-00-00 00:00:00'),(137,'InputfieldPageListSelectMultiple',0,'','0000-00-00 00:00:00'),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"language\"]}','0000-00-00 00:00:00'),(139,'SystemUpdater',1,'{\"systemVersion\":9}','0000-00-00 00:00:00'),(148,'AdminThemeDefault',2,'{\"colors\":\"classic\"}','0000-00-00 00:00:00'),(149,'InputfieldSelector',2,'','0000-00-00 00:00:00'),(150,'ProcessPageLister',0,'','0000-00-00 00:00:00'),(151,'JqueryMagnific',1,'','2014-07-21 07:21:45'),(152,'PagePathHistory',3,'','2014-07-25 09:36:57'),(155,'InputfieldCKEditor',0,'','2014-07-25 10:26:17'),(156,'MarkupHTMLPurifier',0,'','2014-07-25 10:26:17'),(158,'LanguageSupport',3,'{\"languagesPageID\":1009,\"defaultLanguagePageID\":1010,\"otherLanguagePageIDs\":[1012,1013],\"languageTranslatorPageID\":1011}','2014-09-02 05:45:46'),(159,'ProcessLanguage',1,'','2014-09-02 05:45:46'),(160,'ProcessLanguageTranslator',1,'','2014-09-02 05:45:46'),(161,'LanguageSupportFields',3,'','2014-09-02 05:45:56'),(162,'FieldtypeTextLanguage',1,'','2014-09-02 05:45:56'),(163,'FieldtypePageTitleLanguage',1,'','2014-09-02 05:45:56'),(164,'FieldtypeTextareaLanguage',1,'','2014-09-02 05:45:56'),(165,'LanguageSupportPageNames',3,'{\"moduleVersion\":9,\"pageNumUrlPrefix1010\":\"page\",\"useHomeSegment\":0}','2014-09-02 05:46:01'),(166,'LanguageTabs',3,'','2014-09-02 05:46:12'),(168,'ProcessRecentPages',1,'','2015-01-21 14:57:39'),(170,'ServicePages',0,'{\"queryFields\":[\"id\",\"name\",\"template\",\"parent\",\"parent_id\",\"created\",\"modified\",\"created_users_id\",\"modified_users_id\",1],\"queryTemplates\":[29],\"displayFields\":[\"created\",\"modified\",\"created_users_id\",\"modified_users_id\",1,76],\"maxLimit\":50}','2015-03-04 07:44:11');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_path_history`
--

DROP TABLE IF EXISTS `page_path_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_path_history` (
  `path` varchar(255) NOT NULL,
  `pages_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`path`),
  KEY `pages_id` (`pages_id`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_path_history`
--

LOCK TABLES `page_path_history` WRITE;
/*!40000 ALTER TABLE `page_path_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_path_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  `name1012` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1012` int(10) unsigned NOT NULL DEFAULT '1',
  `name1013` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1013` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1012_parent_id` (`name1012`,`parent_id`),
  UNIQUE KEY `name1013_parent_id` (`name1013`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1,'en',9,'2014-09-04 11:08:41',41,'0000-00-00 00:00:00',2,0,'de',1,'fi',1),(2,1,2,'manager',1035,'2015-01-21 14:57:40',40,'0000-00-00 00:00:00',2,5,NULL,1,NULL,1),(3,2,2,'page',21,'2011-03-29 21:37:06',41,'0000-00-00 00:00:00',2,0,NULL,1,NULL,1),(6,3,2,'add',1045,'2011-03-29 21:37:06',41,'0000-00-00 00:00:00',2,0,NULL,1,NULL,1),(7,1,2,'trash',1039,'2011-08-14 22:04:52',41,'2010-02-07 05:29:39',2,6,NULL,1,NULL,1),(8,3,2,'list',21,'2011-03-29 21:37:06',41,'0000-00-00 00:00:00',2,1,NULL,1,NULL,1),(9,3,2,'sort',1047,'2011-03-29 21:37:06',41,'0000-00-00 00:00:00',2,2,NULL,1,NULL,1),(10,3,2,'edit',1045,'2011-03-29 21:37:06',41,'0000-00-00 00:00:00',2,3,NULL,1,NULL,1),(11,22,2,'template',21,'2011-03-29 21:37:06',41,'2010-02-01 11:04:54',2,0,NULL,1,NULL,1),(16,22,2,'field',21,'2011-03-29 21:37:06',41,'2010-02-01 12:44:07',2,2,NULL,1,NULL,1),(21,2,2,'module',21,'2011-03-29 21:37:06',41,'2010-02-02 10:02:24',2,2,NULL,1,NULL,1),(22,2,2,'setup',21,'2011-03-29 21:37:06',41,'2010-02-09 12:16:59',2,1,NULL,1,NULL,1),(23,2,2,'login',1035,'2011-05-03 23:38:10',41,'2010-02-17 09:59:39',2,4,NULL,1,NULL,1),(27,1,29,'http404',1035,'2014-09-02 11:32:16',41,'2010-06-03 06:53:03',3,4,NULL,1,NULL,1),(28,2,2,'access',13,'2011-05-03 23:38:10',41,'2011-03-19 19:14:20',2,3,NULL,1,NULL,1),(29,28,2,'users',29,'2011-04-05 00:39:08',41,'2011-03-19 19:15:29',2,0,NULL,1,NULL,1),(30,28,2,'roles',29,'2011-04-05 00:38:39',41,'2011-03-19 19:15:45',2,1,NULL,1,NULL,1),(31,28,2,'permissions',29,'2011-04-05 00:53:52',41,'2011-03-19 19:16:00',2,2,NULL,1,NULL,1),(32,31,5,'page-edit',25,'2011-09-06 15:34:24',41,'2011-03-19 19:17:03',2,2,NULL,1,NULL,1),(34,31,5,'page-delete',25,'2011-09-06 15:34:33',41,'2011-03-19 19:17:23',2,3,NULL,1,NULL,1),(35,31,5,'page-move',25,'2011-09-06 15:34:48',41,'2011-03-19 19:17:41',2,4,NULL,1,NULL,1),(36,31,5,'page-view',25,'2011-09-06 15:34:14',41,'2011-03-19 19:17:57',2,0,NULL,1,NULL,1),(37,30,4,'guest',25,'2011-04-05 01:37:19',41,'2011-03-19 19:18:41',2,0,NULL,1,NULL,1),(38,30,4,'superuser',25,'2011-08-17 14:34:39',41,'2011-03-19 19:18:55',2,1,NULL,1,NULL,1),(41,29,3,'admin',1,'2015-01-21 14:57:40',40,'2011-03-19 19:41:26',2,0,NULL,1,NULL,1),(40,29,3,'guest',25,'2014-09-02 05:45:46',41,'2011-03-20 17:31:59',2,1,NULL,1,NULL,1),(50,31,5,'page-sort',25,'2011-09-06 15:34:58',41,'2011-03-26 22:04:50',41,5,NULL,1,NULL,1),(51,31,5,'page-template',25,'2011-09-06 15:35:09',41,'2011-03-26 22:25:31',41,6,NULL,1,NULL,1),(52,31,5,'user-admin',25,'2011-09-06 15:35:42',41,'2011-03-30 00:06:47',41,10,NULL,1,NULL,1),(53,31,5,'profile-edit',1,'2011-08-16 22:32:48',41,'2011-04-26 00:02:22',41,13,NULL,1,NULL,1),(54,31,5,'page-lock',1,'2011-08-15 17:48:12',41,'2011-08-15 17:45:48',41,8,NULL,1,NULL,1),(300,3,2,'search',1045,'2011-03-29 21:37:06',41,'2010-08-04 05:23:59',2,5,NULL,1,NULL,1),(301,3,2,'trash',1047,'2011-03-29 21:37:06',41,'2010-09-28 05:39:30',2,5,NULL,1,NULL,1),(302,3,2,'link',1041,'2011-03-29 21:37:06',41,'2010-10-01 05:03:56',2,6,NULL,1,NULL,1),(303,3,2,'image',1041,'2011-03-29 21:37:06',41,'2010-10-13 03:56:48',2,7,NULL,1,NULL,1),(304,2,2,'profile',1025,'2011-05-03 23:38:10',41,'2011-04-25 23:57:18',41,5,NULL,1,NULL,1),(1000,1,26,'search',1025,'2014-09-02 11:06:44',41,'2010-09-06 05:05:28',2,3,'suche',1,'haku',1),(1001,1,29,'about',1,'2014-09-04 11:09:58',41,'2010-10-25 22:39:33',2,0,'uber',1,'tietoja',1),(1002,1001,29,'child-page-example-1',1,'2014-09-04 11:10:53',41,'2010-10-25 23:21:34',2,0,'unterseite-seite-beispiel-1',1,'alasivu-sivu-esimerkki-1',1),(1004,1001,29,'child-page-example-2',1,'2014-09-02 11:04:51',41,'2010-11-29 22:11:36',2,1,'unterseite-beispiel-2',1,'alasivu-esimerkki-2',1),(1005,1,34,'site-map',1,'2014-09-04 11:12:40',41,'2010-11-30 21:16:49',2,2,'sitemap',1,'sivukartta',1),(1006,31,5,'page-lister',1,'2014-07-20 09:00:38',40,'2014-07-20 09:00:38',40,9,NULL,1,NULL,1),(1007,3,2,'lister',1,'2014-07-20 09:00:38',40,'2014-07-20 09:00:38',40,8,NULL,1,NULL,1),(1009,22,2,'languages',16,'2014-09-02 05:45:46',41,'2014-09-02 05:45:46',41,2,NULL,1,NULL,1),(1010,1009,43,'default',16,'2014-09-02 09:00:18',41,'2014-09-02 05:45:46',41,0,NULL,1,NULL,1),(1011,22,2,'language-translator',1040,'2014-09-02 05:45:46',41,'2014-09-02 05:45:46',41,3,NULL,1,NULL,1),(1012,1009,43,'de',1,'2014-09-02 11:52:36',41,'2014-09-02 05:46:43',41,1,NULL,1,NULL,1),(1013,1009,43,'fi',1,'2014-09-02 10:41:19',41,'2014-09-02 05:48:16',41,2,NULL,1,NULL,1),(1015,3,2,'recent-pages',1,'2015-01-21 14:57:39',40,'2015-01-21 14:57:39',40,9,NULL,0,NULL,0),(1016,31,5,'page-edit-recent',1,'2015-01-21 14:57:39',40,'2015-01-21 14:57:39',40,10,NULL,1,NULL,1),(1018,1,45,'service-pages',1025,'2015-03-04 07:44:11',41,'2015-03-04 07:44:11',41,6,NULL,0,NULL,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_access`
--

DROP TABLE IF EXISTS `pages_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_access`
--

LOCK TABLES `pages_access` WRITE;
/*!40000 ALTER TABLE `pages_access` DISABLE KEYS */;
INSERT INTO `pages_access` VALUES (37,2,'2011-09-06 12:10:09'),(38,2,'2011-09-06 12:10:09'),(32,2,'2011-09-06 12:10:09'),(34,2,'2011-09-06 12:10:09'),(35,2,'2011-09-06 12:10:09'),(36,2,'2011-09-06 12:10:09'),(50,2,'2011-09-06 12:10:09'),(51,2,'2011-09-06 12:10:09'),(52,2,'2011-09-06 12:10:09'),(53,2,'2011-09-06 12:10:09'),(54,2,'2011-09-06 12:10:09'),(1006,2,'2014-07-20 09:00:38'),(1010,2,'2014-09-02 05:45:46'),(1012,2,'2014-09-02 05:46:43'),(1013,2,'2014-09-02 05:48:16'),(1016,2,'2015-01-21 14:57:39'),(1018,1,'2015-03-04 07:44:11');
/*!40000 ALTER TABLE `pages_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_parents`
--

DROP TABLE IF EXISTS `pages_parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_parents`
--

LOCK TABLES `pages_parents` WRITE;
/*!40000 ALTER TABLE `pages_parents` DISABLE KEYS */;
INSERT INTO `pages_parents` VALUES (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28),(1001,1),(1002,1),(1002,1001),(1004,1),(1004,1001),(1005,1),(1009,1),(1009,2),(1009,22);
/*!40000 ALTER TABLE `pages_parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_sortfields`
--

DROP TABLE IF EXISTS `pages_sortfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_sortfields`
--

LOCK TABLES `pages_sortfields` WRITE;
/*!40000 ALTER TABLE `pages_sortfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_sortfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_login_throttle`
--

DROP TABLE IF EXISTS `session_login_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_login_throttle`
--

LOCK TABLES `session_login_throttle` WRITE;
/*!40000 ALTER TABLE `session_login_throttle` DISABLE KEYS */;
INSERT INTO `session_login_throttle` VALUES ('admin',1,1425455126);
/*!40000 ALTER TABLE `session_login_throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"modified\":1425454983}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"label\":\"Home\",\"modified\":1425454983,\"label1012\":\"Zuhause\",\"label1013\":\"Koti\",\"roles\":[37]}'),(29,'basic-page',83,0,0,'{\"slashUrls\":1,\"label\":\"Basic Page\",\"modified\":1425454983,\"label1012\":\"Grund Seite\",\"label1013\":\"Perus Sivu\"}'),(26,'search',80,0,0,'{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"label\":\"Search\",\"modified\":1425454983,\"label1012\":\"Suche\",\"label1013\":\"Haku\"}'),(34,'sitemap',88,0,0,'{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"label\":\"Site Map\",\"modified\":1425454983,\"label1012\":\"Sitemap\",\"label1013\":\"Sivukartta\"}'),(43,'language',97,8,0,'{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"nameContentTab\":1,\"modified\":1409651146}'),(45,'service-pages',99,0,0,'{\"allowPageNum\":1,\"slashUrls\":1,\"modified\":1425455444,\"noPrependTemplateFile\":1,\"noAppendTemplateFile\":1}');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-04  7:51:18
