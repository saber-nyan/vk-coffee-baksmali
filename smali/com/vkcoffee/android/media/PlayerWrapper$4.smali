.class Lcom/vkcoffee/android/media/PlayerWrapper$4;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V
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
    .line 122
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper$4;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$4;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$4;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;->onPlaybackCompleted()V

    .line 128
    :cond_0
    return-void
.end method
