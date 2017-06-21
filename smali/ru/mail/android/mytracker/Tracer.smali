.class public Lru/mail/android/mytracker/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[myTracker]"

.field static volatile enabled:Z

.field static logHandler:Lru/mail/android/mytracker/LogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    sget-boolean v0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz v0, :cond_2

    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz p0, :cond_1

    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p0}, Lru/mail/android/mytracker/LogHandler;->d(Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_1
    return-void

    .line 31
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo p0, "null"

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v0, "[myTracker]"

    if-eqz p0, :cond_3

    .end local p0    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_3
    const-string/jumbo p0, "null"

    goto :goto_2
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-boolean v0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz v0, :cond_2

    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz p0, :cond_1

    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p0}, Lru/mail/android/mytracker/LogHandler;->e(Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_1
    return-void

    .line 46
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo p0, "null"

    goto :goto_0

    .line 47
    :cond_2
    const-string/jumbo v0, "[myTracker]"

    if-eqz p0, :cond_3

    .end local p0    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_3
    const-string/jumbo p0, "null"

    goto :goto_2
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    sget-boolean v0, Lru/mail/android/mytracker/Tracer;->enabled:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz v0, :cond_2

    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz p0, :cond_1

    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p0, p1}, Lru/mail/android/mytracker/LogHandler;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 55
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo p0, "null"

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v0, "[myTracker]"

    if-eqz p0, :cond_3

    .end local p0    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_3
    const-string/jumbo p0, "null"

    goto :goto_2
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz v0, :cond_1

    sget-object v0, Lru/mail/android/mytracker/Tracer;->logHandler:Lru/mail/android/mytracker/LogHandler;

    if-eqz p0, :cond_0

    .end local p0    # "msg":Ljava/lang/String;
    :goto_0
    invoke-interface {v0, p0}, Lru/mail/android/mytracker/LogHandler;->i(Ljava/lang/String;)V

    .line 40
    :goto_1
    return-void

    .line 38
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo p0, "null"

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "[myTracker]"

    if-eqz p0, :cond_2

    .end local p0    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local p0    # "msg":Ljava/lang/String;
    :cond_2
    const-string/jumbo p0, "null"

    goto :goto_2
.end method
