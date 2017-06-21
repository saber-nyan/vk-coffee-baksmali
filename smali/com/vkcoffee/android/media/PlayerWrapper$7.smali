.class Lcom/vkcoffee/android/media/PlayerWrapper$7;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/PlayerWrapper;->hwPlayerPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/PlayerWrapper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/PlayerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/PlayerWrapper;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper$7;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 213
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$7;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$7;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$7;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/media/PlayerWrapper$7;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v1}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$100(Lcom/vkcoffee/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;->onUpdatePlaybackPosition(I)V

    .line 218
    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0

    .line 222
    :cond_1
    return-void
.end method
