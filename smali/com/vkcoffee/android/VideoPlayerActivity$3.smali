.class Lcom/vkcoffee/android/VideoPlayerActivity$3;
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
    .line 164
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$3;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$3;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$200(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/support/v7/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 168
    return-void
.end method
