.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;
.super Ljava/lang/Object;
.source "SuggestFriendsNearbyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->onResume()V

    .line 147
    :cond_0
    return-void
.end method
