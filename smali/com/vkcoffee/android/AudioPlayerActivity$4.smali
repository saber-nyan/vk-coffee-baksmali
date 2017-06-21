.class Lcom/vkcoffee/android/AudioPlayerActivity$4;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$4;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$4;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$5(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->nextTrack()V

    .line 261
    :cond_0
    return-void
.end method
