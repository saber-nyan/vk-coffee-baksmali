.class Lcom/vkcoffee/android/VideoPlayerActivity$32;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->updateAddedState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$32;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$32;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4302(Lcom/vkcoffee/android/VideoPlayerActivity;I)I

    .line 1053
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$32;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 1054
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$32;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 1055
    return-void

    .line 1052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1049
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity$32;->success(Ljava/lang/Boolean;)V

    return-void
.end method
