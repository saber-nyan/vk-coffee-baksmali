.class Lcom/vkcoffee/android/VideoPlayerActivity$12$1;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity$12;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/VideoPlayerActivity$12;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/VideoPlayerActivity$12;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$12;

    iget-object v0, v0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 314
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12$1;->this$1:Lcom/vkcoffee/android/VideoPlayerActivity$12;

    iget-object v0, v0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 315
    return-void
.end method
