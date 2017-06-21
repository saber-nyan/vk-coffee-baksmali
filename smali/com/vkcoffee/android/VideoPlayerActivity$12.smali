.class Lcom/vkcoffee/android/VideoPlayerActivity$12;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


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
    .line 302
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2000(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2002(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$12;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/VideoPlayerActivity$12$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/VideoPlayerActivity$12$1;-><init>(Lcom/vkcoffee/android/VideoPlayerActivity$12;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
