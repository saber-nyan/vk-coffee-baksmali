.class Lorg/acra/ErrorReporter$TimeHelper;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeHelper"
.end annotation


# instance fields
.field private initialTimeMillis:Ljava/lang/Long;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/acra/ErrorReporter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/acra/ErrorReporter$1;

    .prologue
    .line 675
    invoke-direct {p0}, Lorg/acra/ErrorReporter$TimeHelper;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/acra/ErrorReporter$TimeHelper;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$TimeHelper;

    .prologue
    .line 675
    iget-object v0, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 4

    .prologue
    .line 687
    iget-object v0, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public setInitialTimeMillis(J)V
    .locals 1
    .param p1, "initialTimeMillis"    # J

    .prologue
    .line 680
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ErrorReporter$TimeHelper;->initialTimeMillis:Ljava/lang/Long;

    .line 681
    return-void
.end method
