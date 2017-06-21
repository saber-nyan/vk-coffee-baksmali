.class Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsetsFrameLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    .line 1137
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;->setWillNotDraw(Z)V

    .line 1140
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$InsetsFrameLayout;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4600(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity$ScrimInsetsView;->setInsets(Landroid/graphics/Rect;)V

    .line 1145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
