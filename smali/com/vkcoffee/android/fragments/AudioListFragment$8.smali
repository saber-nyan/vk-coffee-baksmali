.class Lcom/vkcoffee/android/fragments/AudioListFragment$8;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->startActivity(Landroid/content/Intent;)V

    .line 758
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$8;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f04001b

    const v2, 0x7f040013

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 759
    return-void
.end method
