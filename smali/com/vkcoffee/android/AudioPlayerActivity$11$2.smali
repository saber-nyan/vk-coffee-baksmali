.class Lcom/vkcoffee/android/AudioPlayerActivity$11$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/AudioPlayerActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity$11;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$11;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$11;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11$2;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity$11;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$11;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/vkcoffee/android/AudioPlayerActivity;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 347
    return-void
.end method
