.class Lcom/vkcoffee/android/AudioPlayerActivity$11$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$11$1;->this$1:Lcom/vkcoffee/android/AudioPlayerActivity$11;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity$11;->access$0(Lcom/vkcoffee/android/AudioPlayerActivity$11;)Lcom/vkcoffee/android/AudioPlayerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
