.class Lcom/vkcoffee/android/media/PlayerWrapper$3;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 109
    iput-object p1, p0, Lcom/vkcoffee/android/media/PlayerWrapper$3;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$3;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$300(Lcom/vkcoffee/android/media/PlayerWrapper;)I

    move-result v0

    sub-int v0, p2, v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$3;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$3;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$400(Lcom/vkcoffee/android/media/PlayerWrapper;)Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/vkcoffee/android/media/PlayerWrapper$PlayerStateListener;->onUpdateBuffered(I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/PlayerWrapper$3;->this$0:Lcom/vkcoffee/android/media/PlayerWrapper;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/media/PlayerWrapper;->access$302(Lcom/vkcoffee/android/media/PlayerWrapper;I)I

    goto :goto_0
.end method
