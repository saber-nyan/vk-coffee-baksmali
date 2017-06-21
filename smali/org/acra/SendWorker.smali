.class final Lorg/acra/SendWorker;
.super Ljava/lang/Thread;
.source "SendWorker.java"


# instance fields
.field private final approvePendingReports:Z

.field private final context:Landroid/content/Context;

.field private final fileNameParser:Lorg/acra/CrashReportFileNameParser;

.field private final reportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final sendOnlySilentReports:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "sendOnlySilentReports"    # Z
    .param p4, "approvePendingReports"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "reportSenders":Ljava/util/List;, "Ljava/util/List<Lorg/acra/sender/ReportSender;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    new-instance v0, Lorg/acra/CrashReportFileNameParser;

    invoke-direct {v0}, Lorg/acra/CrashReportFileNameParser;-><init>()V

    iput-object v0, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    .line 60
    iput-object p1, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/acra/SendWorker;->reportSenders:Ljava/util/List;

    .line 62
    iput-boolean p3, p0, Lorg/acra/SendWorker;->sendOnlySilentReports:Z

    .line 63
    iput-boolean p4, p0, Lorg/acra/SendWorker;->approvePendingReports:Z

    .line 64
    return-void
.end method

.method private approvePendingReports()V
    .locals 13

    .prologue
    .line 84
    sget-object v9, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "Mark all pending reports as approved."

    invoke-interface {v9, v10, v11}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v8, Lorg/acra/CrashReportFinder;

    iget-object v9, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 87
    .local v8, "reportFinder":Lorg/acra/CrashReportFinder;
    invoke-virtual {v8}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "reportFileNames":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v6, v0, v1

    .line 90
    .local v6, "reportFileName":Ljava/lang/String;
    iget-object v9, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v9, v6}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 91
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v5, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .local v5, "reportFile":Ljava/io/File;
    const-string/jumbo v9, ".stacktrace"

    const-string/jumbo v10, "-approved.stacktrace"

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "newName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v3, v9, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 102
    sget-object v9, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Could not rename approved report from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v3    # "newFile":Ljava/io/File;
    .end local v4    # "newName":Ljava/lang/String;
    .end local v5    # "reportFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v6    # "reportFileName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private checkAndSendReports(Landroid/content/Context;Z)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sendOnlySilentReports"    # Z

    .prologue
    .line 119
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "#checkAndSendReports - start"

    invoke-interface {v10, v11, v12}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v8, Lorg/acra/CrashReportFinder;

    invoke-direct {v8, p1}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v8, "reportFinder":Lorg/acra/CrashReportFinder;
    invoke-virtual {v8}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "reportFiles":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 124
    const/4 v9, 0x0

    .line 126
    .local v9, "reportsSentCount":I
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 127
    .local v1, "curFileName":Ljava/lang/String;
    if-eqz p2, :cond_0

    iget-object v10, p0, Lorg/acra/SendWorker;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v10, v1}, Lorg/acra/CrashReportFileNameParser;->isSilent(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 126
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const/4 v10, 0x5

    if-lt v9, v10, :cond_2

    .line 160
    .end local v1    # "curFileName":Ljava/lang/String;
    :cond_1
    :goto_2
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "#checkAndSendReports - finish"

    invoke-interface {v10, v11, v12}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 136
    .restart local v1    # "curFileName":Ljava/lang/String;
    :cond_2
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Sending file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    new-instance v5, Lorg/acra/CrashReportPersister;

    invoke-direct {v5, p1}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 139
    .local v5, "persister":Lorg/acra/CrashReportPersister;
    invoke-virtual {v5, v1}, Lorg/acra/CrashReportPersister;->load(Ljava/lang/String;)Lorg/acra/collector/CrashReportData;

    move-result-object v6

    .line 140
    .local v6, "previousCrashReport":Lorg/acra/collector/CrashReportData;
    invoke-direct {p0, v6}, Lorg/acra/SendWorker;->sendCrashReport(Lorg/acra/collector/CrashReportData;)V

    .line 141
    invoke-direct {p0, p1, v1}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 158
    .end local v5    # "persister":Lorg/acra/CrashReportPersister;
    .end local v6    # "previousCrashReport":Lorg/acra/collector/CrashReportData;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to send crash reports for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    invoke-direct {p0, p1, v1}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 148
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load crash report for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-direct {p0, p1, v1}, Lorg/acra/SendWorker;->deleteFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 153
    .local v2, "e":Lorg/acra/sender/ReportSenderException;
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v11, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to send crash report for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 208
    .local v0, "deleted":Z
    if-nez v0, :cond_0

    .line 209
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete error report : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void
.end method

.method private sendCrashReport(Lorg/acra/collector/CrashReportData;)V
    .locals 10
    .param p1, "errorContent"    # Lorg/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Lorg/acra/ACRA;->isDebuggable()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/acra/ACRAConfiguration;->sendReportsInDevMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    :cond_0
    const/4 v5, 0x0

    .line 176
    .local v5, "sentAtLeastOnce":Z
    const/4 v3, 0x0

    .line 177
    .local v3, "sendFailure":Lorg/acra/sender/ReportSenderException;
    const/4 v1, 0x0

    .line 178
    .local v1, "failedSender":Ljava/lang/String;
    iget-object v6, p0, Lorg/acra/SendWorker;->reportSenders:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/acra/sender/ReportSender;

    .line 180
    .local v4, "sender":Lorg/acra/sender/ReportSender;
    :try_start_0
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sending report using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v6, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    invoke-interface {v4, v6, p1}, Lorg/acra/sender/ReportSender;->send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V

    .line 182
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sent report using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/acra/sender/ReportSenderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    const/4 v5, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/acra/sender/ReportSenderException;
    move-object v3, v0

    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 192
    .end local v0    # "e":Lorg/acra/sender/ReportSenderException;
    .end local v4    # "sender":Lorg/acra/sender/ReportSender;
    :cond_1
    if-eqz v3, :cond_3

    .line 194
    if-nez v5, :cond_2

    .line 195
    throw v3

    .line 197
    :cond_2
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ReportSender of class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed but other senders completed their task. ACRA will not send this report again."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "failedSender":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sendFailure":Lorg/acra/sender/ReportSenderException;
    .end local v5    # "sentAtLeastOnce":Z
    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/acra/SendWorker;->approvePendingReports:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/acra/SendWorker;->approvePendingReports()V

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/acra/SendWorker;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lorg/acra/SendWorker;->sendOnlySilentReports:Z

    invoke-direct {p0, v0, v1}, Lorg/acra/SendWorker;->checkAndSendReports(Landroid/content/Context;Z)V

    .line 77
    return-void
.end method
