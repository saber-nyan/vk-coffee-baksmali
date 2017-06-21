.class Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->updateNonFriendsOnlines()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    .line 556
    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "onlines":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$1(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)V

    .line 565
    return-void

    .line 559
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/messages/DialogsFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment;->access$0(Lcom/vkcoffee/android/fragments/messages/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DialogEntry;

    .line 560
    .local v0, "dlg":Lcom/vkcoffee/android/DialogEntry;
    iget-object v2, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-static {p1, v2}, Lcom/vkcoffee/android/utils/Utils;->containsKey(Landroid/util/SparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    iget-object v3, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v0, Lcom/vkcoffee/android/DialogEntry;->profile:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 558
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/messages/DialogsFragment$3;->success(Landroid/util/SparseArray;)V

    return-void
.end method
