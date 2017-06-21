.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$4;
.super Lcom/vkcoffee/android/ui/WindowCallbackDelegate;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;
    .param p2, "orig"    # Landroid/view/Window$Callback;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$4;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/WindowCallbackDelegate;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$4;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 229
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/WindowCallbackDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
