.class Lcom/vkcoffee/android/VideoPlayerActivity$4;
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
    .line 170
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$400(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 177
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$400(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$4;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
