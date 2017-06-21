.class public Lcom/vkcoffee/android/fragments/news/ViewServer;
.super Ljava/lang/Object;
.source "ViewServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;,
        Lcom/vkcoffee/android/fragments/news/ViewServer$NoopViewServer;,
        Lcom/vkcoffee/android/fragments/news/ViewServer$UncloseableOutputStream;,
        Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;
    }
.end annotation


# static fields
.field private static final BUILD_TYPE_USER:Ljava/lang/String; = "user"

.field private static final COMMAND_PROTOCOL_VERSION:Ljava/lang/String; = "PROTOCOL"

.field private static final COMMAND_SERVER_VERSION:Ljava/lang/String; = "SERVER"

.field private static final COMMAND_WINDOW_MANAGER_AUTOLIST:Ljava/lang/String; = "AUTOLIST"

.field private static final COMMAND_WINDOW_MANAGER_GET_FOCUS:Ljava/lang/String; = "GET_FOCUS"

.field private static final COMMAND_WINDOW_MANAGER_LIST:Ljava/lang/String; = "LIST"

.field private static final LOG_TAG:Ljava/lang/String; = "ViewServer"

.field private static final VALUE_PROTOCOL_VERSION:Ljava/lang/String; = "4"

.field private static final VALUE_SERVER_VERSION:Ljava/lang/String; = "4"

.field private static final VIEW_SERVER_DEFAULT_PORT:I = 0x134b

.field private static final VIEW_SERVER_MAX_CONNECTIONS:I = 0xa

.field private static sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;


# instance fields
.field private final mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mFocusedWindow:Landroid/view/View;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPort:I

.field private mServer:Ljava/net/ServerSocket;

.field private mThread:Ljava/lang/Thread;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private final mWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mPort:I

    .line 189
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 148
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 199
    iput p1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mPort:I

    .line 200
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/news/ViewServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer$1;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;-><init>()V

    return-void
.end method

.method static synthetic access$200(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/net/Socket;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/news/ViewServer;->writeValue(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/news/ViewServer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusedWindow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/news/ViewServer;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/news/ViewServer;->addWindowListener(Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/news/ViewServer;Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/news/ViewServer;
    .param p1, "x1"    # Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/news/ViewServer;->removeWindowListener(Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V

    return-void
.end method

.method private addWindowListener(Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_0
    return-void
.end method

.method private fireFocusChangedEvent()V
    .locals 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .line 443
    .local v0, "listener":Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;->focusChanged()V

    goto :goto_0

    .line 445
    .end local v0    # "listener":Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;
    :cond_0
    return-void
.end method

.method private fireWindowsChangedEvent()V
    .locals 3

    .prologue
    .line 436
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .line 437
    .local v0, "listener":Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;
    invoke-interface {v0}, Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;->windowsChanged()V

    goto :goto_0

    .line 439
    .end local v0    # "listener":Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/vkcoffee/android/fragments/news/ViewServer;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 167
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v2, "user"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 169
    sget-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    if-nez v2, :cond_0

    .line 170
    new-instance v2, Lcom/vkcoffee/android/fragments/news/ViewServer;

    const/16 v3, 0x134b

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/fragments/news/ViewServer;-><init>(I)V

    sput-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    .line 173
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/news/ViewServer;->start()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    sget-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ViewServer"

    const-string/jumbo v3, "Error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v2, Lcom/vkcoffee/android/fragments/news/ViewServer$NoopViewServer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/fragments/news/ViewServer$NoopViewServer;-><init>(Lcom/vkcoffee/android/fragments/news/ViewServer$1;)V

    sput-object v2, Lcom/vkcoffee/android/fragments/news/ViewServer;->sServer:Lcom/vkcoffee/android/fragments/news/ViewServer;

    goto :goto_0
.end method

.method private removeWindowListener(Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkcoffee/android/fragments/news/ViewServer$WindowListener;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 455
    return-void
.end method

.method private static writeValue(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 7
    .param p0, "client"    # Ljava/net/Socket;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v2, 0x0

    .line 415
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 416
    .local v0, "clientStream":Ljava/io/OutputStream;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    const/4 v4, 0x1

    .line 424
    .local v4, "result":Z
    if-eqz v3, :cond_2

    .line 426
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 432
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 427
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    move-object v2, v3

    .line 429
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 421
    .end local v0    # "clientStream":Ljava/io/OutputStream;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "result":Z
    :catch_1
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v4, 0x0

    .line 424
    .restart local v4    # "result":Z
    if-eqz v2, :cond_0

    .line 426
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 427
    :catch_2
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .line 429
    goto :goto_0

    .line 424
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "result":Z
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_1

    .line 426
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 429
    :cond_1
    :goto_3
    throw v5

    .line 427
    :catch_3
    move-exception v1

    .line 428
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 424
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v0    # "clientStream":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 421
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v4    # "result":Z
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public addWindow(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 295
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    .line 300
    return-void

    .line 297
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public addWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 327
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->fireWindowsChangedEvent()V

    .line 328
    return-void

    .line 325
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWindow(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 310
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->removeWindow(Landroid/view/View;)V

    .line 311
    return-void
.end method

.method public removeWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 345
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 347
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusedWindow:Landroid/view/View;

    if-ne v1, v0, :cond_0

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 353
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->fireWindowsChangedEvent()V

    .line 354
    return-void

    .line 343
    .end local v0    # "rootView":Landroid/view/View;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 351
    .restart local v0    # "rootView":Landroid/view/View;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public run()V
    .locals 6

    .prologue
    .line 387
    :try_start_0
    new-instance v2, Ljava/net/ServerSocket;

    iget v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mPort:I

    const/16 v4, 0xa

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mServer:Ljava/net/ServerSocket;

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_1

    .line 395
    :try_start_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 396
    .local v0, "client":Ljava/net/Socket;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;

    invoke-direct {v3, p0, v0}, Lcom/vkcoffee/android/fragments/news/ViewServer$ViewServerWorker;-><init>(Lcom/vkcoffee/android/fragments/news/ViewServer;Ljava/net/Socket;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 405
    .end local v0    # "client":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViewServer"

    const-string/jumbo v3, "Connection error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 388
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 389
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ViewServer"

    const-string/jumbo v3, "Starting ServerSocket error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Ljava/net/Socket;
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 401
    :catch_2
    move-exception v1

    .line 402
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 409
    .end local v0    # "client":Ljava/net/Socket;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method

.method public setFocusedWindow(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    .line 364
    return-void
.end method

.method public setFocusedWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 375
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 379
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/ViewServer;->fireFocusChangedEvent()V

    .line 380
    return-void

    .line 375
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public start()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Local View Server [port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    .line 217
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 218
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 220
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 235
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 244
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mThread:Ljava/lang/Thread;

    .line 247
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mServer:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mServer:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    const/4 v1, 0x1

    .line 269
    :goto_1
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "Could not stop all view server threads"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ViewServer"

    const-string/jumbo v2, "Could not close the view server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 257
    :try_start_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 262
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 264
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusedWindow:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 269
    const/4 v1, 0x0

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mWindowsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1

    .line 266
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/ViewServer;->mFocusLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method
