.class Lcom/vkcoffee/android/fragments/ProfileFragment$44;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;->loadWall(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/wall/WallGet$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private final synthetic val$count:I

.field private final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/app/Fragment;II)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iput p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->val$offset:I

    iput p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->val$count:I

    .line 5705
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 7

    .prologue
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const/16 v6, 0x12

    const/16 v5, 0xf

    .line 5786
    const/4 v2, 0x0

    .line 5787
    .local v2, "z":Z
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$31(Lcom/vkcoffee/android/fragments/ProfileFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 5788
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->getCodeValue()I

    move-result v0

    .line 5789
    .local v0, "errorCode":I
    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    .line 5790
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 5817
    :cond_0
    :goto_0
    return-void

    .line 5791
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$44(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5792
    if-ne v0, v6, :cond_2

    .line 5793
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$44(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f08032f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 5795
    :cond_2
    if-ne v0, v5, :cond_3

    .line 5796
    iget-object v3, p1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;->message:Ljava/lang/String;

    const-string v4, "is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5797
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$44(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5802
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$51(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5803
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$51(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5805
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 5806
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5807
    .local v1, "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v3

    if-gez v3, :cond_5

    .line 5808
    const/4 v2, 0x1

    .line 5810
    :cond_5
    invoke-static {v1, v2}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$52(Lcom/vkcoffee/android/fragments/ProfileFragment;Z)V

    .line 5811
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v3

    if-lez v3, :cond_6

    .line 5812
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Lcom/vkcoffee/android/api/ExtendedUserProfile;->friendStatus:I

    .line 5814
    :cond_6
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$37(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5815
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->invalidateOptionsMenu()V

    goto :goto_0

    .line 5799
    .end local v1    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_7
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$44(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f08032e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V
    .locals 12
    .param p1, "res"    # Lcom/vkcoffee/android/api/wall/WallGet$Result;

    .prologue
    const/16 v11, 0x400

    const/4 v9, 0x0

    .line 5707
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 5708
    iget v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->val$offset:I

    if-nez v8, :cond_0

    .line 5709
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v8

    iget v10, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->postponedCount:I

    iput v10, v8, Lcom/vkcoffee/android/api/ExtendedUserProfile;->postponedCount:I

    .line 5710
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v8

    iget v10, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->suggestedCount:I

    iput v10, v8, Lcom/vkcoffee/android/api/ExtendedUserProfile;->suggestedCount:I

    .line 5711
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$38(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5713
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$39(Lcom/vkcoffee/android/fragments/ProfileFragment;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v8

    if-lez v8, :cond_1

    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v8, v11}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5714
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/data/VKList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-static {v10, v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$40(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    .line 5716
    :cond_1
    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5717
    .local v2, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 5724
    :goto_0
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$42(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 5725
    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v8

    if-nez v8, :cond_d

    .line 5726
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$43(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5727
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$43(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5729
    :cond_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$44(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v8

    sget v11, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v8, v11, :cond_c

    const v8, 0x7f0805aa

    :goto_1
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(I)V

    .line 5734
    :cond_4
    :goto_2
    iget v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->val$offset:I

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$45(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 5735
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$45(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v8

    const v10, 0x7f10039c

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 5736
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$45(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/view/View;

    move-result-object v8

    const v10, 0x7f10039d

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 5738
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 5739
    .local v5, "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    iget v8, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->offset:I

    iget v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->val$count:I

    add-int/2addr v8, v10

    iput v8, v5, Lcom/vkcoffee/android/fragments/ProfileFragment;->offset:I

    .line 5740
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v8

    sget v10, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v8, v10, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$39(Lcom/vkcoffee/android/fragments/ProfileFragment;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 5742
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$46(Lcom/vkcoffee/android/fragments/ProfileFragment;)Z

    move-result v0

    .line 5743
    .local v0, "access$5600":Z
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$2(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/api/ExtendedUserProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/vkcoffee/android/api/ExtendedUserProfile;->showAllPosts:Z

    if-eqz v8, :cond_e

    .line 5744
    const/4 v7, 0x0

    .line 5748
    .local v7, "z":Z
    :goto_3
    if-ne v0, v7, :cond_7

    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 5749
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v10, "postponed_count"

    iget v11, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->postponedCount:I

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5752
    .end local v0    # "access$5600":Z
    .end local v7    # "z":Z
    :cond_7
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$39(Lcom/vkcoffee/android/fragments/ProfileFragment;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 5753
    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/VKList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5754
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_f

    .line 5779
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_9
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v10, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v10}, Lcom/vkcoffee/android/data/VKList;->total()I

    move-result v10

    invoke-static {v8, v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$49(Lcom/vkcoffee/android/fragments/ProfileFragment;I)V

    .line 5780
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$50(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    .line 5781
    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    iget-object v11, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8}, Lcom/vkcoffee/android/data/VKList;->size()I

    move-result v8

    if-lez v8, :cond_13

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v10, v11, v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 5783
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v5    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_a
    return-void

    .line 5718
    .restart local v2    # "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/NewsEntry;

    .line 5719
    .local v4, "p":Lcom/vkcoffee/android/NewsEntry;
    iget v8, v4, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$41(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v10

    if-ne v8, v10, :cond_2

    invoke-virtual {v4, v11}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5720
    iget-object v8, p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;->news:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v8, v4}, Lcom/vkcoffee/android/data/VKList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 5729
    .end local v4    # "p":Lcom/vkcoffee/android/NewsEntry;
    :cond_c
    const v8, 0x7f0805a9

    goto/16 :goto_1

    .line 5731
    :cond_d
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$20(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v10, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v10}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$43(Lcom/vkcoffee/android/fragments/ProfileFragment;)Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5746
    .restart local v0    # "access$5600":Z
    .restart local v5    # "profileFragment":Lcom/vkcoffee/android/fragments/ProfileFragment;
    :cond_e
    const/4 v7, 0x1

    .restart local v7    # "z":Z
    goto/16 :goto_3

    .line 5755
    .end local v0    # "access$5600":Z
    .end local v7    # "z":Z
    .restart local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/NewsEntry;

    .line 5756
    .local v1, "e":Lcom/vkcoffee/android/NewsEntry;
    const/4 v6, 0x0

    .line 5757
    .local v6, "removed":Z
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$47(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5758
    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_12

    .line 5765
    :goto_6
    if-nez v6, :cond_8

    .line 5766
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v8}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$48(Lcom/vkcoffee/android/fragments/ProfileFragment;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5767
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 5768
    iget v10, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v10, v8, :cond_11

    .line 5769
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 5770
    const/4 v6, 0x1

    .line 5771
    goto/16 :goto_4

    .line 5759
    :cond_12
    iget v10, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/NewsEntry;

    iget v8, v8, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-ne v10, v8, :cond_10

    .line 5760
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 5761
    const/4 v6, 0x1

    .line 5762
    goto :goto_6

    .end local v1    # "e":Lcom/vkcoffee/android/NewsEntry;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkcoffee/android/NewsEntry;>;"
    .end local v6    # "removed":Z
    :cond_13
    move v8, v9

    .line 5781
    goto/16 :goto_5
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/wall/WallGet$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$44;->success(Lcom/vkcoffee/android/api/wall/WallGet$Result;)V

    return-void
.end method
