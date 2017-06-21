.class Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;
.super Ljava/lang/Object;
.source "PrivacySettingsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->onUsersLoaded(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const v12, 0x7f02004e

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/data/PrivacySection;

    .line 133
    .local v3, "section":Lcom/vkcoffee/android/data/PrivacySection;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    iget-object v6, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v6}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$300(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v13, :cond_2

    .line 141
    iget-object v6, v3, Lcom/vkcoffee/android/data/PrivacySection;->title:Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_2
    iget-object v6, v3, Lcom/vkcoffee/android/data/PrivacySection;->settings:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/PrivacySetting;

    .line 146
    .local v4, "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$408(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)I

    move-result v1

    .line 147
    .local v1, "id":I
    iget-object v7, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v7, v7, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v7}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$500(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    new-instance v7, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v8, v8, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    iget-object v9, v4, Lcom/vkcoffee/android/data/PrivacySetting;->title:Ljava/lang/String;

    invoke-direct {v7, v8, v1, v9}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;-><init>(Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    iget-object v8, v4, Lcom/vkcoffee/android/data/PrivacySetting;->displayStringTmp:Ljava/lang/CharSequence;

    .line 149
    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;->setSummary(Ljava/lang/Object;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    move-result-object v2

    .line 150
    .local v2, "ref":Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    invoke-static {v13, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 137
    .end local v1    # "id":I
    .end local v2    # "ref":Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;
    .end local v4    # "setting":Lcom/vkcoffee/android/data/PrivacySetting;
    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_2
    iget-object v6, v3, Lcom/vkcoffee/android/data/PrivacySection;->title:Ljava/lang/String;

    invoke-static {v10, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    :cond_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    .end local v3    # "section":Lcom/vkcoffee/android/data/PrivacySection;
    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1$1;->this$2:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;

    invoke-static {v5, v0, v10}, Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;->access$600(Lcom/vkcoffee/android/fragments/PrivacySettingsListFragment;Ljava/util/List;Z)V

    .line 155
    return-void
.end method
