.class public Lorg/acra/ACRAConfiguration;
.super Ljava/lang/Object;
.source "ACRAConfiguration.java"

# interfaces
.implements Lorg/acra/annotation/ReportsCrashes;


# instance fields
.field private mAdditionalDropboxTags:[Ljava/lang/String;

.field private mAdditionalSharedPreferences:[Ljava/lang/String;

.field private mApplicationLogFile:Ljava/lang/String;

.field private mApplicationLogFileLines:Ljava/lang/Integer;

.field private mBuildConfigClass:Ljava/lang/Class;

.field private mConnectionTimeout:Ljava/lang/Integer;

.field private mCustomReportContent:[Lorg/acra/ReportField;

.field private mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDropboxCollectionMinutes:Ljava/lang/Integer;

.field private mExcludeMatchingSettingsKeys:[Ljava/lang/String;

.field private mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

.field private mForceCloseDialogAfterToast:Ljava/lang/Boolean;

.field private mFormUri:Ljava/lang/String;

.field private mFormUriBasicAuthLogin:Ljava/lang/String;

.field private mFormUriBasicAuthPassword:Ljava/lang/String;

.field private mHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpMethod:Lorg/acra/sender/HttpSender$Method;

.field private mIncludeDropboxSystemTags:Ljava/lang/Boolean;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mLogcatArguments:[Ljava/lang/String;

.field private mLogcatFilterByPid:Ljava/lang/Boolean;

.field private mMailTo:Ljava/lang/String;

.field private mMode:Lorg/acra/ReportingInteractionMode;

.field private mReportDialogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mReportType:Lorg/acra/sender/HttpSender$Type;

.field private mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

.field private mResDialogCommentPrompt:Ljava/lang/Integer;

.field private mResDialogEmailPrompt:Ljava/lang/Integer;

.field private mResDialogIcon:Ljava/lang/Integer;

.field private mResDialogNegativeButtonText:Ljava/lang/Integer;

.field private mResDialogOkToast:Ljava/lang/Integer;

.field private mResDialogPositiveButtonText:Ljava/lang/Integer;

.field private mResDialogText:Ljava/lang/Integer;

.field private mResDialogTitle:Ljava/lang/Integer;

.field private mResNotifIcon:Ljava/lang/Integer;

.field private mResNotifText:Ljava/lang/Integer;

.field private mResNotifTickerText:Ljava/lang/Integer;

.field private mResNotifTitle:Ljava/lang/Integer;

.field private mResToastText:Ljava/lang/Integer;

.field private mSendReportsAtShutdown:Ljava/lang/Boolean;

.field private mSendReportsInDevMode:Ljava/lang/Boolean;

.field private mSharedPreferenceMode:Ljava/lang/Integer;

.field private mSharedPreferenceName:Ljava/lang/String;

.field private mSocketTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/acra/ACRAConfiguration;-><init>(Lorg/acra/annotation/ReportsCrashes;)V

    .line 682
    return-void
.end method

.method public constructor <init>(Lorg/acra/annotation/ReportsCrashes;)V
    .locals 1
    .param p1, "defaults"    # Lorg/acra/annotation/ReportsCrashes;

    .prologue
    const/4 v0, 0x0

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 45
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 46
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 47
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    .line 48
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    .line 54
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 57
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 58
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    .line 60
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    .line 62
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    .line 63
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    .line 64
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    .line 66
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    .line 68
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    .line 69
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    .line 70
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    .line 71
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    .line 72
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    .line 74
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    .line 76
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    .line 77
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    .line 78
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    .line 86
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 87
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 673
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 674
    return-void
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aString"    # Ljava/lang/String;

    .prologue
    .line 1248
    if-eqz p0, :cond_0

    const-string/jumbo v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 694
    :goto_0
    return-object v0

    .line 690
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 694
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public additionalSharedPreferences()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 707
    :goto_0
    return-object v0

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 707
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 1184
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1181
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1184
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public applicationLogFileLines()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1197
    :goto_0
    return v0

    .line 1193
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v0

    goto :goto_0

    .line 1197
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public buildConfigClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    .line 1171
    :goto_0
    return-object v0

    .line 1167
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->buildConfigClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectionTimeout()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 725
    :goto_0
    return v0

    .line 721
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v0

    goto :goto_0

    .line 725
    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method

.method public customReportContent()[Lorg/acra/ReportField;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 738
    :goto_0
    return-object v0

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    goto :goto_0

    .line 738
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/acra/ReportField;

    goto :goto_0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 764
    :goto_0
    return v0

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 764
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 751
    :goto_0
    return v0

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 751
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 777
    :goto_0
    return v0

    .line 773
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v0

    goto :goto_0

    .line 777
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public excludeMatchingSettingsKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 1154
    :goto_0
    return-object v0

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1154
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 1141
    :goto_0
    return-object v0

    .line 1137
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1141
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public forceCloseDialogAfterToast()Z
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 790
    :goto_0
    return v0

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v0

    goto :goto_0

    .line 790
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 803
    :goto_0
    return-object v0

    .line 799
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 803
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 816
    :goto_0
    return-object v0

    .line 812
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 816
    :cond_1
    const-string/jumbo v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 829
    :goto_0
    return-object v0

    .line 825
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_1
    const-string/jumbo v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getReportFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/acra/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/acra/ACRAConfiguration;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    .line 122
    .local v0, "customReportFields":[Lorg/acra/ReportField;
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Using custom Report Fields"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-object v1, v0

    .line 132
    .local v1, "fieldsList":[Lorg/acra/ReportField;
    :goto_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 125
    .end local v1    # "fieldsList":[Lorg/acra/ReportField;
    :cond_0
    invoke-virtual {p0}, Lorg/acra/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Lorg/acra/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    :cond_1
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Using default Report Fields"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    .restart local v1    # "fieldsList":[Lorg/acra/ReportField;
    goto :goto_0

    .line 129
    .end local v1    # "fieldsList":[Lorg/acra/ReportField;
    :cond_2
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Using default Mail Report Fields"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    .restart local v1    # "fieldsList":[Lorg/acra/ReportField;
    goto :goto_0
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 1223
    :goto_0
    return-object v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1220
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    goto :goto_0

    .line 1223
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    goto :goto_0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 842
    :goto_0
    return v0

    .line 838
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v0

    goto :goto_0

    .line 842
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    .line 1244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 855
    :goto_0
    return-object v0

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 855
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "time"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public logcatFilterByPid()Z
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1102
    :goto_0
    return v0

    .line 1098
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v0

    goto :goto_0

    .line 1102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mailTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 868
    :goto_0
    return-object v0

    .line 864
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public mode()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 881
    :goto_0
    return-object v0

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    goto :goto_0
.end method

.method public reportDialogClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    .line 1210
    :goto_0
    return-object v0

    .line 1206
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportDialogClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1210
    :cond_1
    const-class v0, Lorg/acra/CrashReportDialog;

    goto :goto_0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 1236
    :goto_0
    return-object v0

    .line 1232
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    goto :goto_0

    .line 1236
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    goto :goto_0
.end method

.method public resDialogCommentPrompt()I
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 920
    :goto_0
    return v0

    .line 916
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v0

    goto :goto_0

    .line 920
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogEmailPrompt()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 933
    :goto_0
    return v0

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v0

    goto :goto_0

    .line 933
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogIcon()I
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 946
    :goto_0
    return v0

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v0

    goto :goto_0

    .line 946
    :cond_1
    const v0, 0x1080027

    goto :goto_0
.end method

.method public resDialogNegativeButtonText()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 907
    :goto_0
    return v0

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogNegativeButtonText()I

    move-result v0

    goto :goto_0

    .line 907
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogOkToast()I
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 959
    :goto_0
    return v0

    .line 955
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v0

    goto :goto_0

    .line 959
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogPositiveButtonText()I
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 894
    :goto_0
    return v0

    .line 890
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogPositiveButtonText()I

    move-result v0

    goto :goto_0

    .line 894
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogText()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 972
    :goto_0
    return v0

    .line 968
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    goto :goto_0

    .line 972
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogTitle()I
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 985
    :goto_0
    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 982
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v0

    goto :goto_0

    .line 985
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifIcon()I
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 998
    :goto_0
    return v0

    .line 994
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v0

    goto :goto_0

    .line 998
    :cond_1
    const v0, 0x1080078

    goto :goto_0
.end method

.method public resNotifText()I
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1011
    :goto_0
    return v0

    .line 1007
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1008
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTickerText()I
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1024
    :goto_0
    return v0

    .line 1020
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    goto :goto_0

    .line 1024
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTitle()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1037
    :goto_0
    return v0

    .line 1033
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resToastText()I
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1050
    :goto_0
    return v0

    .line 1046
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    goto :goto_0

    .line 1050
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReportsAtShutdown()Z
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1128
    :goto_0
    return v0

    .line 1124
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsAtShutdown()Z

    move-result v0

    goto :goto_0

    .line 1128
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendReportsInDevMode()Z
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1115
    :goto_0
    return v0

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v0

    goto :goto_0

    .line 1115
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAdditionalDropboxTags([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "additionalDropboxTags"    # [Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 143
    return-object p0
.end method

.method public setAdditionalSharedPreferences([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "additionalSharedPreferences"    # [Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setApplicationLogFile(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "applicationLogFile"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 617
    return-object p0
.end method

.method public setApplicationLogFileLines(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "applicationLogFileLines"    # I

    .prologue
    .line 630
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    .line 631
    return-object p0
.end method

.method public setBuildConfigClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "buildConfigClass"    # Ljava/lang/Class;

    .prologue
    .line 604
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mBuildConfigClass:Ljava/lang/Class;

    .line 605
    return-object p0
.end method

.method public setConnectionTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "connectionTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    .line 165
    return-object p0
.end method

.method public setCustomReportContent([Lorg/acra/ReportField;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "customReportContent"    # [Lorg/acra/ReportField;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 176
    return-object p0
.end method

.method public setDeleteOldUnsentReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "deleteOldUnsentReportsOnApplicationStart"    # Ljava/lang/Boolean;

    .prologue
    .line 196
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 197
    return-object p0
.end method

.method public setDeleteUnapprovedReportsOnApplicationStart(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "deleteUnapprovedReportsOnApplicationStart"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 187
    return-object p0
.end method

.method public setDropboxCollectionMinutes(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "dropboxCollectionMinutes"    # Ljava/lang/Integer;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    .line 208
    return-object p0
.end method

.method public setExcludeMatchingSettingsKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "excludeMatchingSettingsKeys"    # [Ljava/lang/String;

    .prologue
    .line 598
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 599
    return-object p0
.end method

.method public setExcludeMatchingSharedPreferencesKeys([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "excludeMatchingSharedPreferencesKeys"    # [Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 585
    return-object p0
.end method

.method public setForceCloseDialogAfterToast(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "forceCloseDialogAfterToast"    # Ljava/lang/Boolean;

    .prologue
    .line 218
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    .line 219
    return-object p0
.end method

.method public setFormUri(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "formUri"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public setFormUriBasicAuthLogin(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "formUriBasicAuthLogin"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public setFormUriBasicAuthPassword(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "formUriBasicAuthPassword"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 257
    return-object p0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    .line 101
    return-object p0
.end method

.method public setHttpMethod(Lorg/acra/sender/HttpSender$Method;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "httpMethod"    # Lorg/acra/sender/HttpSender$Method;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 643
    return-object p0
.end method

.method public setIncludeDropboxSystemTags(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "includeDropboxSystemTags"    # Ljava/lang/Boolean;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    .line 268
    return-object p0
.end method

.method public setKeyStore(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    .line 666
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mKeyStore:Ljava/security/KeyStore;

    .line 667
    return-void
.end method

.method public setLogcatArguments([Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "logcatArguments"    # [Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setLogcatFilterByPid(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "filterByPid"    # Ljava/lang/Boolean;

    .prologue
    .line 543
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    .line 544
    return-object p0
.end method

.method public setMailTo(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "mailTo"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public setMode(Lorg/acra/ReportingInteractionMode;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "mode"    # Lorg/acra/ReportingInteractionMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 310
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 311
    invoke-static {p0}, Lorg/acra/ACRA;->checkCrashResources(Lorg/acra/annotation/ReportsCrashes;)V

    .line 312
    return-object p0
.end method

.method public setReportDialogClass(Ljava/lang/Class;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/acra/BaseCrashReportDialog;",
            ">;)",
            "Lorg/acra/ACRAConfiguration;"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "reportDialogClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/acra/BaseCrashReportDialog;>;"
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportDialogClass:Ljava/lang/Class;

    .line 330
    return-object p0
.end method

.method public setReportType(Lorg/acra/sender/HttpSender$Type;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "type"    # Lorg/acra/sender/HttpSender$Type;

    .prologue
    .line 655
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 656
    return-object p0
.end method

.method public setResDialogCommentPrompt(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    .line 346
    return-object p0
.end method

.method public setResDialogEmailPrompt(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    .line 362
    return-object p0
.end method

.method public setResDialogIcon(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 376
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    .line 377
    return-object p0
.end method

.method public setResDialogNegativeButtonText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogNegativeButtonText:Ljava/lang/Integer;

    .line 324
    return-object p0
.end method

.method public setResDialogOkToast(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    .line 392
    return-object p0
.end method

.method public setResDialogPositiveButtonText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogPositiveButtonText:Ljava/lang/Integer;

    .line 318
    return-object p0
.end method

.method public setResDialogText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    .line 407
    return-object p0
.end method

.method public setResDialogTitle(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    .line 422
    return-object p0
.end method

.method public setResNotifIcon(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    .line 437
    return-object p0
.end method

.method public setResNotifText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    .line 452
    return-object p0
.end method

.method public setResNotifTickerText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    .line 468
    return-object p0
.end method

.method public setResNotifTitle(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    .line 483
    return-object p0
.end method

.method public setResToastText(I)Lorg/acra/ACRAConfiguration;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    .line 498
    return-object p0
.end method

.method public setSendReportsAtShutdown(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "sendReportsAtShutdown"    # Ljava/lang/Boolean;

    .prologue
    .line 570
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSendReportsAtShutdown:Ljava/lang/Boolean;

    .line 571
    return-object p0
.end method

.method public setSendReportsInDevMode(Ljava/lang/Boolean;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "sendReportsInDevMode"    # Ljava/lang/Boolean;

    .prologue
    .line 556
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    .line 557
    return-object p0
.end method

.method public setSharedPreferenceMode(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "sharedPreferenceMode"    # Ljava/lang/Integer;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    .line 509
    return-object p0
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "sharedPreferenceName"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 520
    return-object p0
.end method

.method public setSocketTimeout(Ljava/lang/Integer;)Lorg/acra/ACRAConfiguration;
    .locals 0
    .param p1, "socketTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 530
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    .line 531
    return-object p0
.end method

.method public sharedPreferencesMode()I
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1063
    :goto_0
    return v0

    .line 1059
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    goto :goto_0

    .line 1063
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 1076
    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1076
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1089
    :goto_0
    return v0

    .line 1085
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v0

    goto :goto_0

    .line 1089
    :cond_1
    const/16 v0, 0x1f40

    goto :goto_0
.end method
