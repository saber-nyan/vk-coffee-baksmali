.class public final Lorg/acra/collector/CrashReportDataFactory;
.super Ljava/lang/Object;
.source "CrashReportDataFactory.java"


# instance fields
.field private final appStartDate:Ljava/util/Calendar;

.field private final context:Landroid/content/Context;

.field private final customParameters:Ljava/util/Map;
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

.field private final initialConfiguration:Ljava/lang/String;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "appStartDate"    # Ljava/util/Calendar;
    .param p4, "initialConfiguration"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    .line 67
    iput-object p3, p0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Ljava/util/Calendar;

    .line 68
    iput-object p4, p0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private createCustomInfoString(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, "reportCustomData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    .line 525
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 526
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 527
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v4, v5

    .line 530
    .end local v5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v2, "customInfo":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 532
    .local v0, "currentKey":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "currentVal":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    const-string/jumbo v6, " = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    if-eqz v1, :cond_1

    .line 538
    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "\\\\n"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string/jumbo v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 543
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "currentVal":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getBuildConfigClass()Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->buildConfigClass()Ljava/lang/Class;

    move-result-object v1

    .line 583
    .local v1, "configuredBuildConfig":Ljava/lang/Class;
    if-eqz v1, :cond_0

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 591
    .end local v1    # "configuredBuildConfig":Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 589
    .restart local v1    # "configuredBuildConfig":Ljava/lang/Class;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".BuildConfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v2

    .line 593
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not adding buildConfig to log. Class Not found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Please configure \'buildConfigClass\' in your ACRA config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    throw v2
.end method

.method private getStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 547
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 548
    .local v2, "result":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 550
    .local v1, "printWriter":Ljava/io/PrintWriter;
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 551
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    :cond_0
    move-object v0, p2

    .line 556
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_1

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 558
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    .local v3, "stacktraceAsString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 563
    return-object v3
.end method

.method private getStackTraceHash(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v5, "res":Ljava/lang/StringBuilder;
    move-object v1, p1

    .line 569
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 571
    .local v6, "stackTraceElements":[Ljava/lang/StackTraceElement;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 572
    .local v2, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 575
    .end local v2    # "e":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 576
    goto :goto_0

    .line 578
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public clearCustomData()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 107
    return-void
.end method

.method public createCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;
    .locals 16
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;
    .param p4, "isSilentReport"    # Z
    .param p5, "brokenThread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Thread;",
            ")",
            "Lorg/acra/collector/CrashReportData;"
        }
    .end annotation

    .prologue
    .line 136
    .local p3, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lorg/acra/collector/CrashReportData;

    invoke-direct {v3}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 138
    .local v3, "crashReportData":Lorg/acra/collector/CrashReportData;
    :try_start_0
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/acra/ACRAConfiguration;->getReportFields()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 146
    .local v4, "crashReportFields":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    :try_start_1
    sget-object v12, Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;

    invoke-direct/range {p0 .. p2}, Lorg/acra/collector/CrashReportDataFactory;->getStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :goto_0
    :try_start_2
    sget-object v12, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Ljava/util/Calendar;

    invoke-static {v13}, Lorg/acra/util/ReportUtils;->getTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 157
    :goto_1
    if-eqz p4, :cond_0

    .line 158
    :try_start_3
    sget-object v12, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const-string/jumbo v13, "true"

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    sget-object v12, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    .line 164
    :try_start_4
    sget-object v12, Lorg/acra/ReportField;->STACK_TRACE_HASH:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/acra/collector/CrashReportDataFactory;->getStackTraceHash(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :cond_1
    :goto_2
    :try_start_5
    sget-object v12, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v12

    if-eqz v12, :cond_2

    .line 173
    :try_start_6
    sget-object v12, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 180
    :cond_2
    :goto_3
    :try_start_7
    sget-object v12, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v12

    if-eqz v12, :cond_3

    .line 182
    :try_start_8
    sget-object v12, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    .line 189
    :cond_3
    :goto_4
    :try_start_9
    sget-object v12, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v12

    if-eqz v12, :cond_4

    .line 191
    :try_start_a
    sget-object v12, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6

    .line 196
    :cond_4
    :goto_5
    :try_start_b
    sget-object v12, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    move-result v12

    if-eqz v12, :cond_5

    .line 198
    :try_start_c
    sget-object v12, Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    .line 205
    :cond_5
    :goto_6
    :try_start_d
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/lang/OutOfMemoryError;

    if-nez v12, :cond_6

    sget-object v12, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    move-result v12

    if-eqz v12, :cond_6

    .line 207
    :try_start_e
    sget-object v12, Lorg/acra/ReportField;->DUMPSYS_MEMINFO:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/DumpSysCollector;->collectMemInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_8

    .line 214
    :cond_6
    :goto_7
    :try_start_f
    sget-object v12, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1

    move-result v12

    if-eqz v12, :cond_7

    .line 216
    :try_start_10
    sget-object v12, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9

    .line 223
    :cond_7
    :goto_8
    :try_start_11
    sget-object v12, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1

    move-result v12

    if-eqz v12, :cond_8

    .line 225
    :try_start_12
    sget-object v12, Lorg/acra/ReportField;->BUILD:Lorg/acra/ReportField;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-class v14, Landroid/os/Build;

    invoke-static {v14}, Lorg/acra/collector/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-class v14, Landroid/os/Build$VERSION;

    const-string/jumbo v15, "VERSION"

    invoke-static {v14, v15}, Lorg/acra/collector/ReflectionCollector;->collectConstants(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a

    .line 232
    :cond_8
    :goto_9
    :try_start_13
    sget-object v12, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1

    move-result v12

    if-eqz v12, :cond_9

    .line 234
    :try_start_14
    sget-object v12, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_b

    .line 240
    :cond_9
    :goto_a
    :try_start_15
    sget-object v12, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1

    move-result v12

    if-eqz v12, :cond_a

    .line 242
    :try_start_16
    sget-object v12, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_c

    .line 249
    :cond_a
    :goto_b
    :try_start_17
    sget-object v12, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1

    move-result v12

    if-eqz v12, :cond_b

    .line 251
    :try_start_18
    sget-object v12, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_d

    .line 256
    :cond_b
    :goto_c
    :try_start_19
    sget-object v12, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1

    move-result v12

    if-eqz v12, :cond_c

    .line 258
    :try_start_1a
    sget-object v12, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    sget-object v13, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_e

    .line 265
    :cond_c
    :goto_d
    :try_start_1b
    sget-object v12, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_1

    move-result v12

    if-eqz v12, :cond_d

    .line 267
    :try_start_1c
    sget-object v12, Lorg/acra/ReportField;->TOTAL_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ReportUtils;->getTotalInternalMemorySize()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_f

    .line 272
    :cond_d
    :goto_e
    :try_start_1d
    sget-object v12, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_1

    move-result v12

    if-eqz v12, :cond_e

    .line 274
    :try_start_1e
    sget-object v12, Lorg/acra/ReportField;->AVAILABLE_MEM_SIZE:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ReportUtils;->getAvailableInternalMemorySize()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_10

    .line 281
    :cond_e
    :goto_f
    :try_start_1f
    sget-object v12, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_1

    move-result v12

    if-eqz v12, :cond_f

    .line 283
    :try_start_20
    sget-object v12, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/util/ReportUtils;->getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_11

    .line 290
    :cond_f
    :goto_10
    :try_start_21
    sget-object v12, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_1

    move-result v12

    if-eqz v12, :cond_10

    .line 292
    :try_start_22
    sget-object v12, Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/DisplayManagerCollector;->collectDisplays(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_12

    .line 299
    :cond_10
    :goto_11
    :try_start_23
    sget-object v12, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_1

    move-result v12

    if-eqz v12, :cond_11

    .line 301
    :try_start_24
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-direct {v5}, Ljava/util/GregorianCalendar;-><init>()V

    .line 302
    .local v5, "curDate":Ljava/util/Calendar;
    sget-object v12, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    invoke-static {v5}, Lorg/acra/util/ReportUtils;->getTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_13

    .line 309
    .end local v5    # "curDate":Ljava/util/Calendar;
    :cond_11
    :goto_12
    :try_start_25
    sget-object v12, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_1

    move-result v12

    if-eqz v12, :cond_12

    .line 311
    :try_start_26
    sget-object v12, Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/acra/collector/CrashReportDataFactory;->createCustomInfoString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_14

    .line 317
    :cond_12
    :goto_13
    :try_start_27
    sget-object v12, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_1

    move-result v12

    if-eqz v12, :cond_13

    .line 319
    :try_start_28
    invoke-direct/range {p0 .. p0}, Lorg/acra/collector/CrashReportDataFactory;->getBuildConfigClass()Ljava/lang/Class;

    move-result-object v2

    .line 320
    .local v2, "buildConfigClass":Ljava/lang/Class;
    sget-object v12, Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;

    invoke-static {v2}, Lorg/acra/collector/ReflectionCollector;->collectConstants(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_28
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_15

    .line 329
    .end local v2    # "buildConfigClass":Ljava/lang/Class;
    :cond_13
    :goto_14
    :try_start_29
    sget-object v12, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_1

    move-result v12

    if-eqz v12, :cond_14

    .line 331
    :try_start_2a
    sget-object v12, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v14, "acra.user.email"

    const-string/jumbo v15, "N/A"

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_16

    .line 338
    :cond_14
    :goto_15
    :try_start_2b
    sget-object v12, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_1

    move-result v12

    if-eqz v12, :cond_15

    .line 340
    :try_start_2c
    sget-object v12, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/DeviceFeaturesCollector;->getFeatures(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_17

    .line 347
    :cond_15
    :goto_16
    :try_start_2d
    sget-object v12, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_1

    move-result v12

    if-eqz v12, :cond_16

    .line 349
    :try_start_2e
    sget-object v12, Lorg/acra/ReportField;->ENVIRONMENT:Lorg/acra/ReportField;

    const-class v13, Landroid/os/Environment;

    invoke-static {v13}, Lorg/acra/collector/ReflectionCollector;->collectStaticGettersResults(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_18

    .line 356
    :cond_16
    :goto_17
    :try_start_2f
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_1

    move-result v12

    if-eqz v12, :cond_17

    .line 358
    :try_start_30
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_SYSTEM:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/SettingsCollector;->collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_19

    .line 365
    :cond_17
    :goto_18
    :try_start_31
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_1

    move-result v12

    if-eqz v12, :cond_18

    .line 367
    :try_start_32
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_SECURE:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/SettingsCollector;->collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_1a

    .line 374
    :cond_18
    :goto_19
    :try_start_33
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_1

    move-result v12

    if-eqz v12, :cond_19

    .line 377
    :try_start_34
    sget-object v12, Lorg/acra/ReportField;->SETTINGS_GLOBAL:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/SettingsCollector;->collectGlobalSettings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_1b

    .line 384
    :cond_19
    :goto_1a
    :try_start_35
    sget-object v12, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_1

    move-result v12

    if-eqz v12, :cond_1a

    .line 386
    :try_start_36
    sget-object v12, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v13}, Lorg/acra/collector/SharedPreferencesCollector;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_1c

    .line 394
    :cond_1a
    :goto_1b
    :try_start_37
    new-instance v11, Lorg/acra/util/PackageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_1

    .line 397
    .local v11, "pm":Lorg/acra/util/PackageManagerWrapper;
    :try_start_38
    invoke-virtual {v11}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 398
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_28

    .line 400
    sget-object v12, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 401
    sget-object v12, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    iget v13, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1b
    sget-object v12, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 404
    sget-object v13, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v12, :cond_27

    iget-object v12, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1c
    invoke-virtual {v3, v13, v12}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_1d

    .line 415
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1c
    :goto_1d
    :try_start_39
    sget-object v12, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "acra.deviceid.enable"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string/jumbo v12, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v11, v12}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_39} :catch_1

    move-result v12

    if-eqz v12, :cond_1d

    .line 418
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {v12}, Lorg/acra/util/ReportUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "deviceId":Ljava/lang/String;
    if-eqz v6, :cond_1d

    .line 420
    sget-object v12, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    invoke-virtual {v3, v12, v6}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3a} :catch_1e

    .line 431
    .end local v6    # "deviceId":Ljava/lang/String;
    :cond_1d
    :goto_1e
    :try_start_3b
    const-string/jumbo v12, "android.permission.READ_LOGS"

    invoke-virtual {v11, v12}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1e

    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v12

    const/16 v13, 0x10

    if-lt v12, v13, :cond_29

    :cond_1e
    const/4 v8, 0x1

    .line 432
    .local v8, "hasReadLogsPermission":Z
    :goto_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "acra.syslog.enable"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2a

    if-eqz v8, :cond_2a

    .line 433
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "READ_LOGS granted! ACRA can include LogCat and DropBox data."

    invoke-interface {v12, v13, v14}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object v12, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_1

    move-result v12

    if-eqz v12, :cond_1f

    .line 436
    :try_start_3c
    sget-object v12, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    const/4 v13, 0x0

    invoke-static {v13}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_3c} :catch_1f

    .line 441
    :cond_1f
    :goto_20
    :try_start_3d
    sget-object v12, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_1

    move-result v12

    if-eqz v12, :cond_20

    .line 443
    :try_start_3e
    sget-object v12, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    const-string/jumbo v13, "events"

    invoke-static {v13}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3e} :catch_20

    .line 448
    :cond_20
    :goto_21
    :try_start_3f
    sget-object v12, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_1

    move-result v12

    if-eqz v12, :cond_21

    .line 450
    :try_start_40
    sget-object v12, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    const-string/jumbo v13, "radio"

    invoke-static {v13}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_40} :catch_21

    .line 455
    :cond_21
    :goto_22
    :try_start_41
    sget-object v12, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_41} :catch_1

    move-result v12

    if-eqz v12, :cond_22

    .line 457
    :try_start_42
    sget-object v12, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/acra/ACRAConfiguration;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/acra/collector/DropBoxCollector;->read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_42} :catch_22

    .line 468
    :cond_22
    :goto_23
    :try_start_43
    sget-object v12, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_1

    move-result v12

    if-eqz v12, :cond_23

    .line 470
    :try_start_44
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/acra/ACRAConfiguration;->applicationLogFileLines()I

    move-result v14

    invoke-static {v12, v13, v14}, Lorg/acra/collector/LogFileCollector;->collectLogFile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, "logFile":Ljava/lang/String;
    sget-object v12, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    invoke-virtual {v3, v12, v9}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_23
    .catch Ljava/lang/RuntimeException; {:try_start_44 .. :try_end_44} :catch_24

    .line 483
    .end local v9    # "logFile":Ljava/lang/String;
    :cond_23
    :goto_24
    :try_start_45
    sget-object v12, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_1

    move-result v12

    if-eqz v12, :cond_24

    .line 485
    :try_start_46
    sget-object v12, Lorg/acra/ReportField;->MEDIA_CODEC_LIST:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/collector/MediaCodecListCollector;->collecMediaCodecList()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_25

    .line 492
    :cond_24
    :goto_25
    :try_start_47
    sget-object v12, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_1

    move-result v12

    if-eqz v12, :cond_25

    .line 494
    :try_start_48
    sget-object v12, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    invoke-static/range {p5 .. p5}, Lorg/acra/collector/ThreadCollector;->collect(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_26

    .line 501
    :cond_25
    :goto_26
    :try_start_49
    sget-object v12, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    move-result v12

    if-eqz v12, :cond_26

    .line 503
    :try_start_4a
    sget-object v12, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    invoke-static {}, Lorg/acra/util/ReportUtils;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_27

    .line 513
    .end local v4    # "crashReportFields":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .end local v8    # "hasReadLogsPermission":Z
    .end local v11    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :cond_26
    :goto_27
    return-object v3

    .line 147
    .restart local v4    # "crashReportFields":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    :catch_0
    move-exception v7

    .line 148
    .local v7, "e":Ljava/lang/RuntimeException;
    :try_start_4b
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving STACK_TRACE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_1

    goto/16 :goto_0

    .line 509
    .end local v4    # "crashReportFields":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    .line 510
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving crash data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 153
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "crashReportFields":Ljava/util/List;, "Ljava/util/List<Lorg/acra/ReportField;>;"
    :catch_2
    move-exception v7

    .line 154
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    :try_start_4c
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving USER_APP_START_DATE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 165
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v7

    .line 166
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving STACK_TRACE_HASH data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 174
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v7

    .line 175
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving REPORT_ID data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 183
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v7

    .line 184
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving INSTALLATION_ID data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 192
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v7

    .line 193
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving INITIAL_CONFIGURATION data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 199
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_7
    move-exception v7

    .line 200
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving CRASH_CONFIGURATION data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 208
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v7

    .line 209
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving DUMPSYS_MEMINFO data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 217
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_9
    move-exception v7

    .line 218
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving PACKAGE_NAME data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 226
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v7

    .line 227
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving BUILD data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 235
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v7

    .line 236
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving PHONE_MODEL data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 243
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_c
    move-exception v7

    .line 244
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving ANDROID_VERSION data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 252
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_d
    move-exception v7

    .line 253
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving BRAND data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 259
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_e
    move-exception v7

    .line 260
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving PRODUCT data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 268
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_f
    move-exception v7

    .line 269
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving TOTAL_MEM_SIZE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 275
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_10
    move-exception v7

    .line 276
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving AVAILABLE_MEM_SIZE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 284
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_11
    move-exception v7

    .line 285
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving FILE_PATH data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 293
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_12
    move-exception v7

    .line 294
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving DISPLAY data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 303
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v7

    .line 304
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving USER_CRASH_DATE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 312
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_14
    move-exception v7

    .line 313
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving CUSTOM_DATA data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 323
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_15
    move-exception v7

    .line 324
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving BUILD_CONFIG data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 332
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v7

    .line 333
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving USER_EMAIL data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 341
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_17
    move-exception v7

    .line 342
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving DEVICE_FEATURES data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 350
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_18
    move-exception v7

    .line 351
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving ENVIRONMENT data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 359
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_19
    move-exception v7

    .line 360
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving SETTINGS_SYSTEM data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 368
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1a
    move-exception v7

    .line 369
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving SETTINGS_SECURE data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 378
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v7

    .line 379
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving SETTINGS_GLOBAL data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 387
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1c
    move-exception v7

    .line 388
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving SHARED_PREFERENCES data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_1

    goto/16 :goto_1b

    .line 404
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v11    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :cond_27
    :try_start_4d
    const-string/jumbo v12, "not set"

    goto/16 :goto_1c

    .line 408
    :cond_28
    sget-object v12, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const-string/jumbo v13, "Package info unavailable"

    invoke-virtual {v3, v12, v13}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_1d

    goto/16 :goto_1d

    .line 410
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1d
    move-exception v7

    .line 411
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    :try_start_4e
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving APP_VERSION_CODE and APP_VERSION_NAME data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 422
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1e
    move-exception v7

    .line 423
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving DEVICE_ID data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 431
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_29
    const/4 v8, 0x0

    goto/16 :goto_1f

    .line 437
    .restart local v8    # "hasReadLogsPermission":Z
    :catch_1f
    move-exception v7

    .line 438
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving LOGCAT data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 444
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v7

    .line 445
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving EVENTSLOG data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 451
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_21
    move-exception v7

    .line 452
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving RADIOLOG data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 459
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_22
    move-exception v7

    .line 460
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving DROPBOX data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 464
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_2a
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "READ_LOGS not allowed. ACRA will not include LogCat and DropBox data."

    invoke-interface {v12, v13, v14}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23

    .line 474
    :catch_23
    move-exception v7

    .line 475
    .local v7, "e":Ljava/io/IOException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error while reading application log file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/acra/ACRAConfiguration;->applicationLogFile()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 476
    .end local v7    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v7

    .line 477
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving APPLICATION_LOG data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 486
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_25
    move-exception v7

    .line 487
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving MEDIA_CODEC_LIST data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 495
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_26
    move-exception v7

    .line 496
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving THREAD_DETAILS data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 504
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_27
    move-exception v7

    .line 505
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    sget-object v12, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v14, "Error while retrieving USER_IP data"

    invoke-interface {v12, v13, v14, v7}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_1

    goto/16 :goto_27

    .line 321
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .end local v8    # "hasReadLogsPermission":Z
    .end local v11    # "pm":Lorg/acra/util/PackageManagerWrapper;
    :catch_28
    move-exception v12

    goto/16 :goto_14
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
