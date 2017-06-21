.class Lcom/vkcoffee/android/VideoPlayerActivity$21$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/VideoPlayerActivity$21;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/VideoPlayerActivity$21;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$21;

    iget-object v0, v0, Lcom/vkcoffee/android/VideoPlayerActivity$21;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 608
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$21;

    iget-object v0, v0, Lcom/vkcoffee/android/VideoPlayerActivity$21;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$21$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$21;

    iget-object v1, v1, Lcom/vkcoffee/android/VideoPlayerActivity$21;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x1

    return v0
.end method
