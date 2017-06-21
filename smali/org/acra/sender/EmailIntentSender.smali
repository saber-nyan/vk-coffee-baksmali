.class public Lorg/acra/sender/EmailIntentSender;
.super Ljava/lang/Object;
.source "EmailIntentSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private buildBody(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 8
    .param p1, "errorContent"    # Lorg/acra/collector/CrashReportData;

    .prologue
    .line 57
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/acra/ACRAConfiguration;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v3

    .line 58
    .local v3, "fields":[Lorg/acra/ReportField;
    array-length v6, v3

    if-nez v6, :cond_0

    .line 59
    sget-object v3, Lorg/acra/ACRAConstants;->DEFAULT_MAIL_REPORT_FIELDS:[Lorg/acra/ReportField;

    .line 62
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v1, "builder":Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, "arr$":[Lorg/acra/ReportField;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 64
    .local v2, "field":Lorg/acra/ReportField;
    invoke-virtual {v2}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p1, v2}, Lorg/acra/collector/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "field":Lorg/acra/ReportField;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorContent"    # Lorg/acra/collector/CrashReportData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Crash Report"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "subject":Ljava/lang/String;
    invoke-direct {p0, p2}, Lorg/acra/sender/EmailIntentSender;->buildBody(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "body":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SENDTO"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string/jumbo v3, "mailto"

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->mailTo()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v3, p0, Lorg/acra/sender/EmailIntentSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
