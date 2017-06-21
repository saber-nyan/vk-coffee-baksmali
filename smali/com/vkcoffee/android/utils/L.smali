.class public Lcom/vkcoffee/android/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/utils/L$LogReceiverArray;,
        Lcom/vkcoffee/android/utils/L$LogReceiver;,
        Lcom/vkcoffee/android/utils/L$LogType;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOG_RECEIVER:Lcom/vkcoffee/android/utils/L$LogReceiver;

.field private static logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static logsEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vkcoffee/android/utils/L$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/utils/L$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/utils/L;->DEFAULT_LOG_RECEIVER:Lcom/vkcoffee/android/utils/L$LogReceiver;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    .line 71
    sget-object v0, Lcom/vkcoffee/android/utils/L;->DEFAULT_LOG_RECEIVER:Lcom/vkcoffee/android/utils/L$LogReceiver;

    sput-object v0, Lcom/vkcoffee/android/utils/L;->logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static configure(ZLcom/vkcoffee/android/utils/L$LogReceiver;)V
    .locals 0
    .param p0, "enable"    # Z
    .param p1, "receiver"    # Lcom/vkcoffee/android/utils/L$LogReceiver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    sput-boolean p0, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    .line 106
    if-nez p1, :cond_0

    sget-object p1, Lcom/vkcoffee/android/utils/L;->DEFAULT_LOG_RECEIVER:Lcom/vkcoffee/android/utils/L$LogReceiver;

    .end local p1    # "receiver":Lcom/vkcoffee/android/utils/L$LogReceiver;
    :cond_0
    sput-object p1, Lcom/vkcoffee/android/utils/L;->logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;

    .line 107
    return-void
.end method

.method public static varargs configure(Z[Lcom/vkcoffee/android/utils/L$LogReceiver;)V
    .locals 1
    .param p0, "enable"    # Z
    .param p1, "receiver"    # [Lcom/vkcoffee/android/utils/L$LogReceiver;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 111
    sput-boolean p0, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    .line 112
    if-nez p1, :cond_0

    sget-object v0, Lcom/vkcoffee/android/utils/L;->DEFAULT_LOG_RECEIVER:Lcom/vkcoffee/android/utils/L$LogReceiver;

    :goto_0
    sput-object v0, Lcom/vkcoffee/android/utils/L;->logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;

    .line 113
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/utils/L$LogReceiverArray;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/utils/L$LogReceiverArray;-><init>([Lcom/vkcoffee/android/utils/L$LogReceiver;)V

    goto :goto_0
.end method

.method public static d(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->d:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V

    .line 133
    return-void
.end method

.method public static d(Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "o":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->d:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V

    .line 137
    return-void
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->d:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static e(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->e:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V

    .line 175
    return-void
.end method

.method public static e(Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "o":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->e:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V

    .line 179
    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->e:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public static i(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 146
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->i:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V

    .line 147
    return-void
.end method

.method public static i(Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "o":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->i:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V

    .line 151
    return-void
.end method

.method public static varargs i([Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 154
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->i:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private static log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "logType"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 188
    sget-boolean v0, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "ERROR"

    invoke-static {p0, v0, p1}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 191
    :cond_0
    return-void
.end method

.method private static log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .param p0, "logType"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 213
    sget-boolean v5, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    if-eqz v5, :cond_0

    .line 214
    invoke-static {}, Lcom/vkcoffee/android/utils/L;->trace()Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 216
    .local v2, "element":Ljava/lang/StackTraceElement;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "className":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "com.vkcoffee.android"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "com.vkcoffee.android"

    .line 224
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "tag":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "msg":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 227
    sget-object v5, Lcom/vkcoffee/android/utils/L;->logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;

    invoke-interface {v5, p0, v4, v3}, Lcom/vkcoffee/android/utils/L$LogReceiver;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/StackTraceElement;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 221
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "element":Ljava/lang/StackTraceElement;
    :cond_1
    const-class v5, Lcom/vkcoffee/android/utils/L;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 224
    goto :goto_1

    .line 229
    .restart local v3    # "msg":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_3
    sget-object v5, Lcom/vkcoffee/android/utils/L;->logReceiver:Lcom/vkcoffee/android/utils/L$LogReceiver;

    invoke-interface {v5, p0, v4, v3, p2}, Lcom/vkcoffee/android/utils/L$LogReceiver;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V
    .locals 7
    .param p0, "logType"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(",
            "Lcom/vkcoffee/android/utils/L$LogType;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "o":Ljava/util/Collection;, "TT;"
    sget-boolean v3, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    if-eqz v3, :cond_0

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 197
    .local v2, "obj":Ljava/lang/Object;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    move v0, v1

    .line 198
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 200
    .end local v0    # "i":I
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private static varargs log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "logType"    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    sget-boolean v2, Lcom/vkcoffee/android/utils/L;->logsEnable:Z

    if-eqz v2, :cond_1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 206
    .local v1, "object":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private static trace()Ljava/lang/StackTraceElement;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 237
    .local v0, "e":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .line 238
    .local v1, "found":Z
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 239
    .local v2, "s":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/utils/L;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 240
    const/4 v1, 0x1

    .line 242
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/vkcoffee/android/utils/L;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 246
    .end local v2    # "s":Ljava/lang/StackTraceElement;
    :goto_1
    return-object v2

    .line 238
    .restart local v2    # "s":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "s":Ljava/lang/StackTraceElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static v(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 118
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->v:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V

    .line 119
    return-void
.end method

.method public static v(Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "o":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->v:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V

    .line 123
    return-void
.end method

.method public static varargs v([Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->v:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public static w(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->w:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/Exception;)V

    .line 161
    return-void
.end method

.method public static w(Ljava/util/Collection;)V
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/Collection;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "o":Ljava/util/Collection;, "TT;"
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->w:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/util/Collection;)V

    .line 165
    return-void
.end method

.method public static varargs w([Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->w:Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Lcom/vkcoffee/android/utils/L;->log(Lcom/vkcoffee/android/utils/L$LogType;[Ljava/lang/Object;)V

    .line 169
    return-void
.end method
