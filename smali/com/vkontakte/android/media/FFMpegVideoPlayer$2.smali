.class Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;
.super Ljava/lang/Object;
.source "FFMpegVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/FFMpegVideoPlayer;->setDataSourceAndPrepare(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    iput-object p2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->val$url:Ljava/lang/String;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->val$url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$7(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/net/URL;)V

    .line 313
    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$8(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-static {v2, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$9(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/net/HttpURLConnection;)V

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$10(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 315
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v3}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$10(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$11(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/io/DataInputStream;)V

    .line 316
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    iget-object v2, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->val$url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$12(Lcom/vkontakte/android/media/FFMpegVideoPlayer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$13(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$2;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    invoke-static {v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$13(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/media/AbsVideoPlayer$PlayerStateListener;->onError(I)V

    goto :goto_0
.end method
