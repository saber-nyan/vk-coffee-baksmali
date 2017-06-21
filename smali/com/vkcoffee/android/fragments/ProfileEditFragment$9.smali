.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 213
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "select"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    const-string v1, "relation"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v1, "no_online"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string v1, "my_gender"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$13(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    const-string v1, "show_same_gender"

    invoke-static {}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$14()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$15(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    new-instance v1, Lcom/vkcoffee/android/navigation/Navigator;

    const-class v2, Lcom/vkcoffee/android/fragments/friends/FriendsFragment;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$9;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    const/16 v3, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/navigation/Navigator;->forResult(Landroid/app/Fragment;I)V

    .line 219
    return-void
.end method
