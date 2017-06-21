.class Lcom/vkcoffee/android/fragments/AudioListFragment$3;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->onAttach(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$26(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$26(Lcom/vkcoffee/android/fragments/AudioListFragment;)Lme/grishka/appkit/api/APIRequest;

    move-result-object v2

    invoke-virtual {v2}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 600
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$27(Lcom/vkcoffee/android/fragments/AudioListFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    .line 603
    .local v0, "audioListFragment":Lcom/vkcoffee/android/fragments/AudioListFragment;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 604
    .local v1, "z":Z
    :goto_0
    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$28(Lcom/vkcoffee/android/fragments/AudioListFragment;Z)V

    .line 605
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v2, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$29(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 606
    return-void

    .line 603
    .end local v1    # "z":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$25(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$25(Lcom/vkcoffee/android/fragments/AudioListFragment;Ljava/lang/String;)V

    .line 595
    return-void
.end method
