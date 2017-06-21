.class Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "PrivacySettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/data/PrivacySection;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/PrivacySection;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v2, "neededUsers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/PrivacySection;

    .line 100
    .local v4, "section":Lcom/vkcoffee/android/data/PrivacySection;
    iget-object v9, v4, Lcom/vkcoffee/android/data/PrivacySection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 101
    .local v5, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    iget-object v10, v5, Lcom/vkcoffee/android/data/PrivacySetting;->value:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    .line 102
    .local v3, "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    instance-of v11, v3, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    if-eqz v11, :cond_2

    move-object v1, v3

    .line 103
    check-cast v1, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;

    .line 104
    .local v1, "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userCount()I

    move-result v11

    if-ge v0, v11, :cond_2

    .line 105
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;->userIdAt(I)I

    move-result v6

    .line 106
    .local v6, "uid":I
    const v11, 0x77359400

    if-ge v6, v11, :cond_3

    .line 107
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
    .end local v3    # "rule":Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;
    .end local v4    # "section":Lcom/vkcoffee/android/data/PrivacySection;
    .end local v5    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    .end local v6    # "uid":I
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v7, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    new-instance v8, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    invoke-direct {v8, p0, p1}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;-><init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Lcom/vkcoffee/android/data/Friends;->getUsers(Ljava/util/Collection;Lcom/vkcoffee/android/data/Friends$GetUsersCallback;)V

    .line 159
    return-void
.end method
