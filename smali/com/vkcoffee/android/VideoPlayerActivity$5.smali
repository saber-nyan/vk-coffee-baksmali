.class Lcom/vkcoffee/android/VideoPlayerActivity$5;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$800(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$900(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1000(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->pause()V

    .line 198
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1100(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1000(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1002(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    goto :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$700(Lcom/vkcoffee/android/VideoPlayerActivity;)Lcom/vkcoffee/android/media/AbsVideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/media/AbsVideoPlayer;->play()V

    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$5;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1100(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 203
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method
