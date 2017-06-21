.class Lcom/vkcoffee/android/VideoPlayerActivity$30;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

.field final synthetic val$anchor:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 1012
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->val$anchor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$30;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1015
    :cond_0
    return-void
.end method
