.class public abstract Lorg/acra/BaseCrashReportDialog;
.super Landroid/app/Activity;
.source "BaseCrashReportDialog.java"


# instance fields
.field private mReportFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelReports()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CrashReportDialog extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "FORCE_CANCEL"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 40
    .local v0, "forceCancel":Z
    if-eqz v0, :cond_1

    .line 41
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Forced reports deletion."

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->cancelReports()V

    .line 43
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->finish()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "REPORT_FILE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    .line 48
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Opening CrashReportDialog for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v1, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->finish()V

    goto :goto_0
.end method

.method protected sendCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "userEmail"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 69
    new-instance v2, Lorg/acra/CrashReportPersister;

    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, "persister":Lorg/acra/CrashReportPersister;
    :try_start_0
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add user comment to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v4, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/acra/CrashReportPersister;->load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;

    move-result-object v0

    .line 73
    .local v0, "crashData":Lorg/acra/collector/CrashReportData;
    sget-object v4, Lorg/acra/ReportField;->USER_COMMENT:Lorg/acra/ReportField;

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "comment":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v4, p1}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v4, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    .end local p2    # "userEmail":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4, p2}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v4, p0, Lorg/acra/BaseCrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/acra/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "crashData":Lorg/acra/collector/CrashReportData;
    :goto_0
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "About to start SenderWorker from CrashReportDialog"

    invoke-interface {v4, v5, v6}, Lorg/acra/log/ACRALog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v8}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    .line 85
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->resDialogOkToast()I

    move-result v3

    .line 86
    .local v3, "toastId":I
    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {p0}, Lorg/acra/BaseCrashReportDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v8}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 89
    :cond_2
    return-void

    .line 76
    .end local v3    # "toastId":I
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v5, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "User comment not added: "

    invoke-interface {v4, v5, v6, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
