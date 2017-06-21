.class Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;
.super Ljava/lang/Object;
.source "FriendsImportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->success(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;)V
    .locals 0
    .param p1, "this$3"    # Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;->this$3:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 852
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;->this$3:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080165

    .line 853
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802e6

    .line 854
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031e

    const/4 v2, 0x0

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 857
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3$1;->this$3:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2$3;->this$2:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy$2;->this$1:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment$Legacy;->this$0:Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/friends/FriendsImportFragment;->updateItems()V

    .line 858
    return-void
.end method
