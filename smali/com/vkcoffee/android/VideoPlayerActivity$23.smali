.class Lcom/vkcoffee/android/VideoPlayerActivity$23;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->switchQuality(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field final synthetic val$_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$23;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$23;->val$_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$23;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$23;->val$_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    .line 738
    return-void
.end method
