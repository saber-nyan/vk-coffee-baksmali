.class Lcom/vkcoffee/android/MenuListView$MenuAdapter;
.super Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lme/grishka/appkit/views/UsableRecyclerView$Adapter",
        "<",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_BIRTHDAY:I = 0x6

.field private static final ITEM_TYPE_DIVIDER:I = 0x7

.field private static final ITEM_TYPE_HEADER:I = 0x1

.field private static final ITEM_TYPE_ITEM:I = 0x2

.field private static final ITEM_TYPE_PADDING:I = 0x5

.field private static final ITEM_TYPE_SECTION:I = 0x4

.field private static final ITEM_TYPE_USER:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/MenuListView;)V
    .locals 1

    .prologue
    .line 640
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {p0}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;-><init>()V

    .line 641
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->setHasStableIds(Z)V

    .line 642
    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 792
    if-nez p1, :cond_1

    .line 833
    :cond_0
    :goto_0
    return v0

    .line 795
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 796
    if-nez p1, :cond_2

    move v0, v1

    .line 797
    goto :goto_0

    .line 799
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 800
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 801
    goto :goto_0

    .line 803
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    .line 804
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 805
    if-nez p1, :cond_4

    move v0, v1

    .line 806
    goto :goto_0

    .line 808
    :cond_4
    if-ne p1, v0, :cond_5

    .line 809
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 811
    :cond_5
    add-int/lit8 p1, p1, -0x2

    .line 813
    :cond_6
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 814
    if-nez p1, :cond_7

    move v0, v1

    .line 815
    goto :goto_0

    .line 817
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 818
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr p1, v2

    .line 823
    :cond_8
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 824
    if-nez p1, :cond_9

    move v0, v1

    .line 825
    goto :goto_0

    .line 827
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 828
    iget-object v2, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v2}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 831
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_a
    move v0, v1

    .line 833
    goto/16 :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v0, 0x0

    .line 837
    if-nez p1, :cond_1

    .line 838
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$23(Lcom/vkcoffee/android/MenuListView;)Ljava/lang/String;

    move-result-object v0

    .line 876
    :cond_0
    :goto_0
    return-object v0

    .line 840
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 841
    if-eqz p1, :cond_0

    .line 844
    add-int/lit8 p1, p1, -0x1

    .line 845
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 849
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 850
    if-eqz p1, :cond_0

    .line 853
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 854
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 856
    :cond_2
    add-int/lit8 p1, p1, -0x2

    .line 858
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 859
    if-eqz p1, :cond_0

    .line 862
    add-int/lit8 p1, p1, -0x1

    .line 863
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 864
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_0

    .line 866
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 868
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 871
    add-int/lit8 p1, p1, -0x1

    .line 872
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 873
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    iget-object v0, v0, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    goto/16 :goto_0

    .line 875
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    .line 876
    goto/16 :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .line 725
    .local v0, "count":I
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 726
    add-int/lit8 v0, v0, 0x2

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 732
    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v1}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 734
    :cond_2
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    const-wide/32 v0, -0x77359401

    .line 921
    :goto_0
    return-wide v0

    .line 883
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 884
    if-nez p1, :cond_1

    .line 885
    const-wide/32 v0, -0x77359402

    goto :goto_0

    .line 887
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 888
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/MenuListView$MenuItem;

    iget v0, v0, Lcom/vkcoffee/android/MenuListView$MenuItem;->index:I

    const v1, 0x77359400

    add-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0

    .line 891
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 892
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 893
    if-nez p1, :cond_3

    .line 894
    const-wide/32 v0, -0x77359403

    goto :goto_0

    .line 896
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 897
    const-wide/32 v0, -0x77359404

    goto :goto_0

    .line 899
    :cond_4
    add-int/lit8 p1, p1, -0x2

    .line 901
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 902
    if-nez p1, :cond_6

    .line 903
    const-wide/32 v0, -0x77359405

    goto :goto_0

    .line 905
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 906
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_7

    .line 907
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget v0, v0, Lcom/vkcoffee/android/UserProfile;->uid:I

    int-to-long v0, v0

    goto :goto_0

    .line 909
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 911
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 912
    if-nez p1, :cond_9

    .line 913
    const-wide/32 v0, -0x77359406

    goto/16 :goto_0

    .line 915
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 916
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 917
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    iget v0, v0, Lcom/vkcoffee/android/api/Group;->id:I

    neg-int v0, v0

    int-to-long v0, v0

    goto/16 :goto_0

    .line 919
    :cond_a
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 921
    :cond_b
    invoke-super {p0, p1}, Lme/grishka/appkit/views/UsableRecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    goto/16 :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x7

    .line 738
    if-nez p1, :cond_0

    .line 788
    :goto_0
    return v0

    .line 741
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 742
    if-nez p1, :cond_1

    .line 743
    const/4 v0, 0x5

    goto :goto_0

    .line 745
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 746
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 747
    const/4 v0, 0x2

    goto :goto_0

    .line 749
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr p1, v4

    .line 750
    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v4}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 751
    if-nez p1, :cond_3

    move v0, v1

    .line 752
    goto :goto_0

    .line 754
    :cond_3
    if-ne p1, v0, :cond_4

    .line 755
    const/4 v0, 0x6

    goto :goto_0

    .line 757
    :cond_4
    add-int/lit8 p1, p1, -0x2

    .line 759
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 760
    if-eqz p1, :cond_8

    .line 761
    add-int/lit8 p1, p1, -0x1

    .line 762
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    move v0, v2

    .line 763
    goto :goto_0

    .line 765
    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 772
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 773
    if-eqz p1, :cond_c

    .line 774
    add-int/lit8 p1, p1, -0x1

    .line 775
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    move v0, v2

    .line 776
    goto :goto_0

    .line 766
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_9

    move v0, v3

    .line 767
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 769
    goto/16 :goto_0

    .line 778
    :cond_a
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 785
    :cond_b
    if-nez p1, :cond_e

    .line 786
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 779
    :cond_c
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_d

    move v0, v3

    .line 780
    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 782
    goto/16 :goto_0

    .line 788
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 670
    if-nez p2, :cond_1

    .line 671
    check-cast p1, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->bind()V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 674
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 675
    if-eqz p2, :cond_0

    .line 676
    add-int/lit8 p2, p2, -0x1

    .line 677
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 678
    check-cast p1, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/MenuListView$MenuItem;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;->bind(Lcom/vkcoffee/android/MenuListView$MenuItem;)V

    goto :goto_0

    .line 681
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$22(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 682
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$12(Lcom/vkcoffee/android/MenuListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 683
    if-eqz p2, :cond_0

    .line 686
    if-ne p2, v2, :cond_3

    .line 687
    check-cast p1, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;->bind()V

    goto :goto_0

    .line 690
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_3
    add-int/lit8 p2, p2, -0x2

    .line 692
    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 693
    if-eqz p2, :cond_7

    .line 694
    add-int/lit8 p2, p2, -0x1

    .line 695
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 696
    check-cast p1, Lcom/vkcoffee/android/MenuListView$UserViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->bind(Lcom/vkcoffee/android/UserProfile;)V

    goto :goto_0

    .line 699
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$4(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 707
    :cond_6
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 710
    if-eqz p2, :cond_9

    .line 711
    add-int/lit8 p2, p2, -0x1

    .line 712
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 713
    check-cast p1, Lcom/vkcoffee/android/MenuListView$UserViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Group;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;->bind(Lcom/vkcoffee/android/api/Group;)V

    goto/16 :goto_0

    .line 700
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 701
    check-cast p1, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;->bind(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 715
    .restart local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    :cond_8
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$5(Lcom/vkcoffee/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 717
    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView;->access$16(Lcom/vkcoffee/android/MenuListView;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 718
    check-cast p1, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;

    .end local p1    # "holder":Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/MenuListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;->bind(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 645
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 646
    new-instance v0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    .line 666
    :goto_0
    return-object v0

    .line 648
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 649
    new-instance v0, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$ItemViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 651
    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 652
    new-instance v0, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$SectionViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 654
    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 655
    new-instance v0, Lcom/vkcoffee/android/MenuListView$UserViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$UserViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 657
    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 658
    new-instance v0, Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$PaddingViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 660
    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    .line 661
    new-instance v0, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$BirthdayViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 663
    :cond_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_6

    .line 664
    new-instance v0, Lcom/vkcoffee/android/MenuListView$DividerViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$MenuAdapter;->this$0:Lcom/vkcoffee/android/MenuListView;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/MenuListView$DividerViewHolder;-><init>(Lcom/vkcoffee/android/MenuListView;)V

    goto :goto_0

    .line 666
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
