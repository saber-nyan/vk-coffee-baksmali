.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Messages$GetDialogsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->loadData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

.field private final synthetic val$var1:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->val$var1:Z

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogsLoaded(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "var1x"    # Ljava/util/ArrayList;

    .prologue
    .line 799
    if-eqz p1, :cond_0

    .line 800
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->val$var1:Z

    invoke-static {v1, v2, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ZLjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 805
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "var1x"    # I
    .param p2, "var2"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$5(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;Z)V

    .line 813
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$4;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v1, p1, p2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$DialogsFragment$4$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
