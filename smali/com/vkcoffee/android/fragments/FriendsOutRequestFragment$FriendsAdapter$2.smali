.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;
.super Ljava/lang/Object;
.source "FriendsOutRequestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;->this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;->val$id:Ljava/lang/String;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "var2":Landroid/os/Bundle;
    const-string v1, "id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;->val$id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-class v1, Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$2;->this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;)Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 233
    return-void
.end method
