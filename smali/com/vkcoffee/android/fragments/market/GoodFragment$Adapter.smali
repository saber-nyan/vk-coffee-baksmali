.class Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "GoodFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/market/GoodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# static fields
.field public static final TYPE_BG:I = 0x9

.field public static final TYPE_BLOCK_GROUP:I = 0x3

.field public static final TYPE_BLOCK_NAME:I = 0x1

.field public static final TYPE_COMMENTS_TITLE:I = 0x7

.field public static final TYPE_COMMENT_ITEM:I = 0x8

.field public static final TYPE_DESCRIPTION:I = 0x2

.field public static final TYPE_EXT_INFO:I = 0x4

.field public static final TYPE_LIKES:I = 0x6

.field public static final TYPE_SQUARE_GALLERY:I = 0x0

.field public static final TYPE_TABLET_HEADER:I = 0xa

.field public static final TYPE_WRITE_BUTTON:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/fragments/market/GoodFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/market/GoodFragment$1;

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 940
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 954
    :pswitch_0
    invoke-super {p0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getImageCountForItem(I)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 942
    :pswitch_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v1, v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 943
    .local v1, "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    const/4 v2, 0x1

    .line 944
    .local v2, "count":I
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 945
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v5, :cond_1

    .line 946
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .end local v1    # "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v2    # "count":I
    :pswitch_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v3, v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v3, Lcom/vkcoffee/android/data/Good;

    .line 952
    .local v3, "good":Lcom/vkcoffee/android/data/Good;
    iget-object v4, v3, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_2
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    array-length v4, v4

    goto :goto_2

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 7
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    const/4 v5, 0x0

    .line 909
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 934
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 911
    :pswitch_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v1, v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 912
    .local v1, "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    packed-switch p2, :pswitch_data_1

    .line 916
    const/4 v3, 0x0

    .line 917
    .local v3, "imgindex":I
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 918
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v6, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v6, :cond_0

    .line 919
    add-int/lit8 v3, v3, 0x1

    .line 920
    if-ne v3, p2, :cond_0

    .line 921
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 914
    .end local v3    # "imgindex":I
    :pswitch_2
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->userPhoto:Ljava/lang/String;

    goto :goto_0

    .restart local v3    # "imgindex":I
    :cond_1
    move-object v4, v5

    .line 925
    goto :goto_0

    .line 927
    .end local v1    # "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v3    # "imgindex":I
    :pswitch_3
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v2, v4, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v2, Lcom/vkcoffee/android/data/Good;

    .line 928
    .local v2, "good":Lcom/vkcoffee/android/data/Good;
    iget-object v4, v2, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    if-eqz v4, :cond_2

    if-ltz p2, :cond_2

    iget-object v4, v2, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    array-length v4, v4

    if-ge p2, v4, :cond_2

    .line 929
    iget-object v4, v2, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    aget-object v4, v4, p2

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 931
    goto :goto_0

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 912
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 879
    packed-switch p2, :pswitch_data_0

    .line 903
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 881
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 883
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/SquareGalleryHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 885
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodNameHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 887
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/DescriptionHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/DescriptionHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 889
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodGroupCategoryHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 891
    :pswitch_5
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 893
    :pswitch_6
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/WriteButtonHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 895
    :pswitch_7
    new-instance v0, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/market/GoodLikesHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 897
    :pswitch_8
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->grayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    goto :goto_0

    .line 899
    :pswitch_9
    new-instance v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/market/GoodFragment;

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;)V

    goto :goto_0

    .line 901
    :pswitch_a
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method
