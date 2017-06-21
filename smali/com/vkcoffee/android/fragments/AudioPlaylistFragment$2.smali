.class Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$2;
.super Ljava/lang/Object;
.source "AudioPlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment$2;->this$0:Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioPlaylistFragment;->dismiss()V

    .line 165
    return-void
.end method
