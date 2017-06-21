.class public final Lorg/acra/ErrorReporter$ReportBuilder;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReportBuilder"
.end annotation


# instance fields
.field private mCustomData:Ljava/util/Map;
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

.field private mEndsApplication:Z

.field private mException:Ljava/lang/Throwable;

.field private mForceSilent:Z

.field private mMessage:Ljava/lang/String;

.field private mUncaughtExceptionThread:Ljava/lang/Thread;

.field final synthetic this$0:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1052
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    .line 1060
    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return-void
.end method

.method static synthetic access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 1052
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    return v0
.end method

.method static synthetic access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 1052
    iget-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    return v0
.end method

.method private initCustomData()V
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1097
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    .line 1098
    :cond_0
    return-void
.end method

.method private uncaughtExceptionThread(Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 1080
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mUncaughtExceptionThread:Ljava/lang/Thread;

    .line 1081
    return-object p0
.end method


# virtual methods
.method public customData(Ljava/lang/String;Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1124
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->initCustomData()V

    .line 1125
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    return-object p0
.end method

.method public customData(Ljava/util/Map;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/acra/ErrorReporter$ReportBuilder;"
        }
    .end annotation

    .prologue
    .line 1109
    .local p1, "customData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/acra/ErrorReporter$ReportBuilder;->initCustomData()V

    .line 1110
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mCustomData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1111
    return-object p0
.end method

.method public endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mEndsApplication:Z

    .line 1146
    return-object p0
.end method

.method public exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1091
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    .line 1092
    return-object p0
.end method

.method public forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mForceSilent:Z

    .line 1136
    return-object p0
.end method

.method public message(Ljava/lang/String;)Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1069
    iput-object p1, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    .line 1070
    return-object p0
.end method

.method public send()V
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mException:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1154
    const-string/jumbo v0, "Report requested by developer"

    iput-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->mMessage:Ljava/lang/String;

    .line 1156
    :cond_0
    iget-object v0, p0, Lorg/acra/ErrorReporter$ReportBuilder;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v0, p0}, Lorg/acra/ErrorReporter;->access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V

    .line 1157
    return-void
.end method
