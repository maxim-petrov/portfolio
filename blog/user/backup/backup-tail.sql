INSERT INTO `e2BlogNotes` (`SubsetID`, `Title`, `Text`, `FormatterID`, `OriginalAlias`, `Uploads`, `IsPublished`, `Stamp`, `LastModified`, `Offset`, `IsDST`) VALUES (1, '123', '123', 'neasden', '123', '', '0', '1711059359', '1711059359', '14400', '0');

UPDATE `e2BlogNotes` SET `SubsetID`='1', `Title`='123', `Text`='123', `Summary`='', `FormatterID`='neasden', `OriginalAlias`='123', `Uploads`='', `IsPublished`='1', `IsCommentable`='0', `IsVisible`='1', `IsFavourite`='0', `Stamp`='1711059450', `LastModified`='1711059359', `Offset`='14400', `IsDST`='0', `IsIndexed`='1', `IsExternal`='0', `ReadCount`='0', `SourceID`='0', `SourceNoteID`='0', `SourceNoteURL`='', `SourceNoteJSONURL`='', `SourceNoteData`='' WHERE `SubsetID`=1 AND (`ID`=1);

INSERT INTO `e2BlogAliases` (`SubsetID`, `EntityType`, `EntityID`, `Alias`, `Stamp`) VALUES (1, 'n', '1', '123', '1711059451');

INSERT INTO `e2BlogNotes` (`SubsetID`, `Title`, `Text`, `FormatterID`, `OriginalAlias`, `Uploads`, `IsPublished`, `Stamp`, `LastModified`, `Offset`, `IsDST`) VALUES (1, '123', '123', 'neasden', '123-2', '', '0', '1711059472', '1711059472', '14400', '0');

UPDATE LOW_PRIORITY `e2BlogNotes` SET `ReadCount` = `ReadCount` + 1 WHERE `ID` = 1;

INSERT LOW_PRIORITY INTO `e2BlogActions` (`SubsetID`, `EntityID`, `Stamp`, `ReadCount`) VALUES (1, '1', '1711126800', '1') ON DUPLICATE KEY UPDATE `ReadCount` = `ReadCount` + 1;

DELETE LOW_PRIORITY FROM `e2BlogActions` WHERE (`Stamp` < 1708535753);

UPDATE LOW_PRIORITY `e2BlogNotes` SET `ReadCount` = `ReadCount` + 1 WHERE `ID` = 1;

INSERT LOW_PRIORITY INTO `e2BlogActions` (`SubsetID`, `EntityID`, `Stamp`, `ReadCount`) VALUES (1, '1', '1711126800', '1') ON DUPLICATE KEY UPDATE `ReadCount` = `ReadCount` + 1;

DELETE LOW_PRIORITY FROM `e2BlogActions` WHERE (`Stamp` < 1708537516);

