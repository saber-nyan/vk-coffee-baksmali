.class Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/data/Friends$GetUsersCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->success(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

.field final synthetic val$result:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->val$result:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    .line 120
    .local v0, "p":Lcom/vkcoffee/android/UserProfile;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$000(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 122
    .end local v0    # "p":Lcom/vkcoffee/android/UserProfile;
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$100(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/data/Friends;->getLists(Ljava/util/List;)V

    .line 123
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/data/PrivacySection;

    .line 124
    .local v1, "section":Lcom/vkcoffee/android/data/PrivacySection;
    iget-object v4, v1, Lcom/vkcoffee/android/data/PrivacySection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 125
    .local v2, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v5, v2}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$200(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Lcom/vkcoffee/android/data/PrivacySetting;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v2, Lcom/vkcoffee/android/data/PrivacySetting;->displayStringTmp:Ljava/lang/CharSequence;

    goto :goto_1

    .line 128
    .end local v1    # "section":Lcom/vkcoffee/android/data/PrivacySection;
    .end local v2    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_2
    new-instance v3, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;-><init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;)V

    invoke-static {v3}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
