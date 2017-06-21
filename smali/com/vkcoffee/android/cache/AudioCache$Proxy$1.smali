.class Lcom/vkcoffee/android/cache/AudioCache$Proxy$1;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/cache/AudioCache$Proxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/cache/AudioCache$Proxy;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/cache/AudioCache$Proxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/vkcoffee/android/cache/AudioCache$Proxy$1;->this$0:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 964
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/cache/AudioCache$Proxy$1;->this$0:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    new-instance v4, Ljava/net/ServerSocket;

    invoke-direct {v4}, Ljava/net/ServerSocket;-><init>()V

    invoke-static {v3, v4}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->access$702(Lcom/vkcoffee/android/cache/AudioCache$Proxy;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 965
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string/jumbo v3, "127.0.0.1"

    const v4, 0xbcc9

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 966
    .local v0, "isa":Ljava/net/InetSocketAddress;
    iget-object v3, p0, Lcom/vkcoffee/android/cache/AudioCache$Proxy$1;->this$0:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-static {v3}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->access$700(Lcom/vkcoffee/android/cache/AudioCache$Proxy;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 969
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/cache/AudioCache$Proxy$1;->this$0:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-static {v3}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->access$700(Lcom/vkcoffee/android/cache/AudioCache$Proxy;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 970
    .local v1, "s":Ljava/net/Socket;
    new-instance v3, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;

    invoke-direct {v3, v1}, Lcom/vkcoffee/android/cache/AudioCache$ProxyRunner;-><init>(Ljava/net/Socket;)V

    .line 971
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "accepted"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 973
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 974
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 976
    return-void
.end method
