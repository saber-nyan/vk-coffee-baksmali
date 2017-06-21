.class public Lcom/vkcoffee/android/fragments/market/GoodFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "GoodFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/stickers/StickersView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;,
        Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;,
        Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
        ">;",
        "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardComment;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vkcoffee/android/stickers/StickersView$Listener;"
    }
.end annotation


# static fields
.field private static final EDIT_COMMENT_REQUEST:I = 0x1e5a9


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

.field private commentBar:Lcom/vkcoffee/android/ui/WriteBar;

.field private commentBarShadow:Landroid/view/View;

.field private dataLikes:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field private goodData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field private indexWriteButton:I

.field private input:Landroid/widget/EditText;

.field private keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

.field private lastContactId:I

.field private lastContactName:Ljava/lang/String;

.field private lastContactPhoto:Ljava/lang/String;

.field private lastGood:Lcom/vkcoffee/android/data/Good;

.field private lastTotal:I

.field private messageButton:Landroid/view/View;

.field private messageButtonShadow:Landroid/view/View;

.field private final newsComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;"
        }
    .end annotation
.end field

.field private onClickWriteButton:Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

.field private replyFromGroup:Z

.field private replyTo:I

.field private replyToName:Ljava/lang/String;

.field private replyToUid:I

.field private sendingComment:Z

.field private stickersView:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 150
    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-direct {v0, p0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/fragments/market/GoodFragment$1;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    .line 151
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->goodData:Ljava/util/List;

    .line 152
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->dataLikes:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->newsComments:Ljava/util/ArrayList;

    .line 154
    iput v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->indexWriteButton:I

    .line 166
    iput v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    iput v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToUid:I

    .line 167
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    .line 170
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendingComment:Z

    .line 176
    iput v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastTotal:I

    .line 196
    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->onClickWriteButton:Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    .line 200
    return-void
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/data/Good;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastGood:Lcom/vkcoffee/android/data/Good;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vkcoffee/android/fragments/market/GoodFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToUid:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/WriteBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyFromGroup:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/utils/Preloader;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->preloader:Lme/grishka/appkit/utils/Preloader;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/vkcoffee/android/fragments/market/GoodFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendingComment:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->processScroll(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Lcom/vkcoffee/android/data/Good;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct/range {p0 .. p8}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->createGoodDataList(Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->dataLikes:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/UsableRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactPhoto:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->newsComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->goodData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->goodData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/market/GoodFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;

    .prologue
    .line 88
    iget v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastTotal:I

    return v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/market/GoodFragment;Ljava/util/ArrayList;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/market/GoodFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->createCommentsDataList(Ljava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private canWrite()Z
    .locals 3

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "can_write"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private createCommentsDataList(Ljava/util/ArrayList;I)Ljava/util/List;
    .locals 8
    .param p2, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "newsComments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    iput p2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastTotal:I

    .line 846
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 847
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 848
    const/4 v2, 0x7

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0019

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 849
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, p2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 851
    const/16 v2, 0x8

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_0
    const/16 v2, 0x9

    const v3, 0x7f02004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 855
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method private createGoodDataList(Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "good"    # Lcom/vkcoffee/android/data/Good;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "groupName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "groupPhoto"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "wiki_url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "wiki_title"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "contactId"    # I
    .param p7, "contactName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "contactPhoto"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/Good;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    const/4 v4, 0x0

    .line 797
    .local v4, "wikiClickListener":Landroid/view/View$OnClickListener;
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 798
    invoke-static {p4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$11;->lambdaFactory$(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v4

    .line 802
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v9, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->isTablet:Z

    if-eqz v2, :cond_5

    .line 804
    new-instance v1, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->onClickWriteButton:Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    move-object v2, p1

    move-object/from16 v3, p5

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;-><init>(Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 806
    .local v1, "data":Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;
    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 812
    .end local v1    # "data":Lcom/vkcoffee/android/ui/holder/market/GoodTabletHeaderHolder$Data;
    :goto_0
    iget-object v2, p1, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 813
    const/4 v2, 0x2

    iget-object v3, p1, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v8

    .line 814
    .local v8, "dataDescription":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    iget-object v2, p1, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    .line 815
    iget-object v2, p1, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lcom/vkcoffee/android/ExpandTextSpan;

    invoke-interface {v2, v3, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/vkcoffee/android/ExpandTextSpan;

    .line 816
    .local v10, "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    array-length v2, v10

    if-lez v2, :cond_1

    .line 817
    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-static {p0, v8, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$12;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ExpandTextSpan;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    .end local v10    # "spans":[Lcom/vkcoffee/android/ExpandTextSpan;
    :cond_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    .end local v8    # "dataDescription":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    :cond_2
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->isTablet:Z

    if-nez v2, :cond_3

    .line 824
    const/4 v2, 0x3

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    const/4 v5, 0x3

    iget v6, p1, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    if-eqz v4, :cond_3

    .line 826
    const/4 v2, 0x4

    new-instance v3, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;

    invoke-static {p4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$13;->lambdaFactory$(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v5

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f0801ff

    .line 828
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-direct {v3, v5, v6, v0}, Lcom/vkcoffee/android/ui/holder/commons/ArrowItemHolder$Info;-><init>(Landroid/view/View$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->indexWriteButton:I

    .line 832
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->processScroll(Landroid/support/v7/widget/RecyclerView;)V

    .line 833
    move/from16 v0, p6

    iput v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactId:I

    .line 834
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactName:Ljava/lang/String;

    .line 835
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastContactPhoto:Ljava/lang/String;

    .line 836
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastGood:Lcom/vkcoffee/android/data/Good;

    .line 837
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->isTablet:Z

    if-nez v2, :cond_4

    .line 838
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->onClickWriteButton:Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_4
    const/4 v2, 0x6

    invoke-static {v2, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->dataLikes:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    return-object v9

    .line 808
    :cond_5
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    const/4 v2, 0x1

    invoke-static {v2, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic lambda$createGoodDataList$213(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 798
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$createGoodDataList$215(Ljava/lang/String;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 827
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private processScroll(Landroid/support/v7/widget/RecyclerView;)V
    .locals 8
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 652
    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->isTablet:Z

    if-eqz v2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 657
    .local v1, "lastPos":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->indexWriteButton:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, "buttonView":Landroid/view/View;
    if-nez v0, :cond_4

    .line 660
    iget v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->indexWriteButton:I

    if-le v2, v1, :cond_3

    .line 661
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 667
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 668
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 670
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/WriteBar;->setTranslationY(F)V

    .line 671
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 673
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 677
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 678
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setTranslationY(F)V

    .line 681
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 683
    :cond_3
    iget v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->indexWriteButton:I

    if-ge v2, v1, :cond_0

    .line 684
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 688
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/WriteBar;->setTranslationY(F)V

    .line 691
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 694
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_5

    .line 695
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_5

    .line 696
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setTranslationY(F)V

    .line 697
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 703
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getBottom()I

    move-result v2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v2, v4, v2

    if-ge v3, v2, :cond_6

    .line 704
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 705
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 707
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 708
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 699
    :cond_5
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v5}, Lcom/vkcoffee/android/ui/WriteBar;->setTranslationY(F)V

    .line 700
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1

    .line 711
    :cond_6
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 712
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 713
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 714
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3}, Lcom/vkcoffee/android/ui/WriteBar;->getHeight()I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 716
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 717
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 719
    :cond_7
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 720
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 721
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 723
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2, v7}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 724
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private sendComment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 564
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendingComment:Z

    if-eqz v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendingComment:Z

    .line 569
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private sendComment(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 16
    .param p1, "txt"    # Ljava/lang/String;
    .param p3, "clearCommentBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p2, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    .line 507
    .local v15, "activity":Landroid/app/Activity;
    if-nez v15, :cond_0

    .line 557
    :goto_0
    return-void

    .line 510
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyFromGroup:Z

    .line 512
    .local v6, "fromGroup":Z
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToUid:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->createReplyLink(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 517
    .local v4, "text":Ljava/lang/String;
    :goto_1
    new-instance v1, Lcom/vkcoffee/android/api/market/MarketAddComment;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getItemId()I

    move-result v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/market/MarketAddComment;-><init>(IILjava/lang/String;Ljava/util/List;ZI)V

    new-instance v7, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p3

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move v14, v6

    invoke-direct/range {v7 .. v14}, Lcom/vkcoffee/android/fragments/market/GoodFragment$4;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Z)V

    .line 518
    invoke-virtual {v1, v7}, Lcom/vkcoffee/android/api/market/MarketAddComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 515
    .end local v4    # "text":Ljava/lang/String;
    :cond_1
    move-object/from16 v4, p1

    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/StickerAttachment;

    .prologue
    .line 345
    const-string/jumbo v0, ""

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 346
    return-void
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 349
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 350
    .local v2, "progress":Landroid/app/ProgressDialog;
    const v3, 0x7f080293

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 351
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 352
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 353
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 354
    invoke-static {p0, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v0

    .line 358
    .local v0, "onDone":Ljava/lang/Runnable;
    invoke-static {p0, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v1

    .line 362
    .local v1, "onFailed":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3, v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method


# virtual methods
.method createReplyLink(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "club"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 4
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 437
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 438
    new-instance v1, Lcom/vkcoffee/android/api/market/MarketDeleteComment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v2

    iget v3, p1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/api/market/MarketDeleteComment;-><init>(II)V

    new-instance v2, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;

    invoke-direct {v2, p0, p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$3;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/market/MarketDeleteComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 448
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 450
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 19
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "id"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 733
    .local v14, "id":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "owner_id"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 735
    .local v13, "ownerId":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "good"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/data/Good;

    .line 736
    .local v4, "good":Lcom/vkcoffee/android/data/Good;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "groupName"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 737
    .local v5, "groupName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "groupPhoto"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 738
    .local v6, "groupPhoto":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "contactId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 739
    .local v9, "contactId":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "contactName"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "contactName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "contactPhoto"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 741
    .local v11, "contactPhoto":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "wiki"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Lcom/vkcoffee/android/data/Wiki;

    .line 743
    .local v18, "wiki":Lcom/vkcoffee/android/data/Wiki;
    if-eqz v4, :cond_0

    .line 744
    if-nez v18, :cond_1

    const/4 v7, 0x0

    :goto_0
    if-nez v18, :cond_2

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->createGoodDataList(Lcom/vkcoffee/android/data/Good;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->goodData:Ljava/util/List;

    .line 747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->goodData:Ljava/util/List;

    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->setData(Ljava/util/List;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->showContent()V

    .line 750
    :cond_0
    new-instance v12, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    const/4 v15, 0x1

    :goto_2
    move/from16 v16, p1

    move/from16 v17, p2

    invoke-direct/range {v12 .. v17}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;-><init>(IIZII)V

    new-instance v3, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/vkcoffee/android/fragments/market/GoodFragment$7;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Landroid/app/Fragment;ILcom/vkcoffee/android/data/Good;)V

    .line 751
    invoke-virtual {v12, v3}, Lcom/vkcoffee/android/api/market/MarketGoodGetFullPage;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 790
    return-void

    .line 744
    :cond_1
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/vkcoffee/android/data/Wiki;->viewUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/vkcoffee/android/data/Wiki;->title:Ljava/lang/String;

    goto :goto_1

    .line 750
    :cond_3
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public editComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 2
    .param p1, "comm"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 453
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->setMarketComment(Lcom/vkcoffee/android/api/board/BoardComment;I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    const v1, 0x1e5a9

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 454
    return-void
.end method

.method protected getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    return-object v0
.end method

.method getItemId()I
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getOwnerId()I
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->hide()V

    .line 424
    :cond_0
    return-void
.end method

.method synthetic lambda$createGoodDataList$214(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/data/Good;Landroid/view/View;)V
    .locals 3
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/vkcoffee/android/data/Good;->descriptionView:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->replace(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;)V

    return-void
.end method

.method synthetic lambda$null$205(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 325
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyFromGroup:Z

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->waitAndSendComment()V

    .line 331
    :goto_0
    return v1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment()V

    goto :goto_0
.end method

.method synthetic lambda$onCreateContentView$202(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 256
    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 259
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$1;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 268
    :cond_1
    return-void
.end method

.method synthetic lambda$onCreateContentView$203(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 301
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 303
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 307
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method synthetic lambda$onCreateContentView$204(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->waitAndSendComment()V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment()V

    goto :goto_0
.end method

.method synthetic lambda$onCreateContentView$206(Landroid/view/View;)Z
    .locals 4
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 320
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 322
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100436

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 323
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f080433

    invoke-interface {v1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 324
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$14;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/widget/PopupMenu$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 333
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method synthetic lambda$onViewCreated$210(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 605
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_2

    .line 606
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    add-int/lit8 v3, p1, 0x1

    .line 607
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 607
    goto :goto_0

    .line 609
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-virtual {v2, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v2

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method synthetic lambda$onViewCreated$211(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 622
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 620
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method synthetic lambda$onViewCreated$212(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v3

    sub-int v4, p5, p3

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    return-void
.end method

.method synthetic lambda$showCommentActions$209(Lcom/vkcoffee/android/api/board/BoardComment;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 395
    packed-switch p3, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 397
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 398
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08053f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 402
    .end local v0    # "clipboard":Landroid/text/ClipboardManager;
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->editComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic lambda$waitAndSendComment$207(Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 355
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 356
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendComment()V

    .line 357
    return-void
.end method

.method synthetic lambda$waitAndSendComment$208(Landroid/app/ProgressDialog;)V
    .locals 3

    .prologue
    .line 359
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 360
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    return-void
.end method

.method public bridge synthetic likeComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 2
    .param p1, "comm"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/api/wall/WallLike;->market(Lcom/vkcoffee/android/api/board/BoardComment;I)Lcom/vkcoffee/android/api/wall/WallLike;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$2;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->contentView:Landroid/view/ViewGroup;

    .line 381
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 382
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    const v5, 0x1e5a9

    if-ne p1, v5, :cond_4

    const/4 v5, -0x1

    if-ne p2, v5, :cond_4

    .line 479
    const-string/jumbo v5, "comment"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 480
    .local v0, "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->newsComments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 481
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->newsComments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/api/board/BoardComment;

    iget v5, v5, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    iget v6, v0, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    if-ne v5, v6, :cond_2

    .line 482
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->newsComments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 487
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v5, v5, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 488
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v1, v5, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    check-cast v1, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 489
    .local v1, "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    iget v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    iget v6, v0, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    if-ne v5, v6, :cond_3

    .line 490
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    iget-object v5, v5, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 491
    .local v3, "dataOld":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    iget v5, v3, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    invoke-static {v5, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->none(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v2

    .line 492
    .local v2, "dataNew":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    iget v5, v3, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->decoratorType:I

    iput v5, v2, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->decoratorType:I

    .line 493
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->adapter:Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;

    invoke-virtual {v5, v3, v2}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Adapter;->replace(Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;)V

    .line 503
    .end local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v1    # "comment":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v2    # "dataNew":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    .end local v3    # "dataOld":Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;
    .end local v4    # "i":I
    :cond_1
    :goto_2
    return-void

    .line 480
    .restart local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 486
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 499
    .end local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v4    # "i":I
    :cond_4
    const/16 v5, 0x2710

    if-le p1, v5, :cond_1

    .line 500
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v5, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 217
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->setListLayoutId(I)V

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->setHasOptionsMenu(Z)V

    .line 219
    const v0, 0x7f0801fc

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->setTitle(I)V

    .line 221
    const-string/jumbo v0, "open_market_item"

    invoke-static {v0}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "item_ids"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string/jumbo v1, "source"

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 222
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->hideEmojiPopup()V

    .line 415
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackspace()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 117
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    :cond_0
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f100433

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "view":Landroid/view/View;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 270
    const v1, 0x7f1001f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/WriteBar;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 271
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->input:Landroid/widget/EditText;

    .line 272
    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    .line 274
    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    .line 275
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    const v4, 0x1020019

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->onClickWriteButton:Lcom/vkcoffee/android/fragments/market/GoodFragment$MarketOnClickListener;

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastGood:Lcom/vkcoffee/android/data/Good;

    if-eqz v1, :cond_0

    .line 277
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->lastGood:Lcom/vkcoffee/android/data/Good;

    iget v1, v1, Lcom/vkcoffee/android/data/Good;->availability:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 279
    :cond_0
    const v1, 0x7f1001ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    .line 281
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->isTablet:Z

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {v1, v3}, Lcom/vkcoffee/android/ViewUtils;->setEnabled(Landroid/view/View;Z)V

    .line 292
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Lcom/vkcoffee/android/stickers/StickersView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 293
    new-instance v1, Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {v1, v4, v0, v5}, Lcom/vkcoffee/android/stickers/KeyboardPopup;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 294
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getAnchor()Landroid/view/View;

    move-result-object v4

    const v5, -0x14110e

    invoke-virtual {v1, v4, v5}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->attachToAnchor(Landroid/view/View;I)V

    .line 295
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->setOnVisibilityChangedListener(Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;)V

    .line 298
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/WriteBar;->setAutoSuggestPopupListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 299
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setKeyboardPopup(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    .line 300
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, v6}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 310
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setOnSendClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v4, 0x7f100436

    invoke-virtual {v1, v4}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 337
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 338
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v1, v2, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setUploadType(ZI)V

    .line 339
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 341
    return-object v0

    :cond_3
    move v1, v3

    .line 277
    goto/16 :goto_0
.end method

.method protected onCreateFooterView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 583
    const v0, 0x7f110006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 584
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 585
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroyView()V

    .line 237
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 238
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->input:Landroid/widget/EditText;

    .line 239
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 240
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 241
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBarShadow:Landroid/view/View;

    .line 242
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButton:Landroid/view/View;

    .line 243
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->messageButtonShadow:Landroid/view/View;

    .line 244
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100433

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 108
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 109
    .local v1, "pos":I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 111
    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 596
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 591
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 592
    .local v0, "cm":Landroid/text/ClipboardManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://vk.com/market"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?w=product"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getOwnerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080290

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 594
    const/4 v1, 0x1

    goto :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x7f10000e
        :pswitch_0
    .end packed-switch
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packId"    # I
    .param p2, "stickerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "localPath"    # Ljava/lang/String;
    .param p5, "stickerReferrer"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/StickerAttachment;-><init>()V

    .line 96
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    iput p2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 97
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    iput-object v1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 98
    iget-object v1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    iget-object v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    iget-object v3, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v3, v3, v4

    aput-object v3, v2, v6

    aput-object v3, v1, v5

    .line 99
    iput-object p4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    .line 100
    iput p1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 101
    iput-object p5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    .line 102
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V

    .line 103
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 602
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 603
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x26000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 604
    .local v0, "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 612
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 614
    new-instance v0, Lme/grishka/appkit/views/DividerItemDecoration;

    .end local v0    # "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 615
    .restart local v0    # "dividers":Lme/grishka/appkit/views/DividerItemDecoration;
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Lme/grishka/appkit/views/DividerItemDecoration$Provider;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/DividerItemDecoration;->setProvider(Lme/grishka/appkit/views/DividerItemDecoration$Provider;)Lme/grishka/appkit/views/DividerItemDecoration;

    .line 625
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 626
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    new-instance v2, Lcom/vkcoffee/android/fragments/market/GoodFragment$5;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$5;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 636
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setClipToPadding(Z)V

    .line 637
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v1}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/market/GoodFragment$6;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$6;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 645
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v2}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v3}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->list:Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->getPaddingRight()I

    move-result v4

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lme/grishka/appkit/views/UsableRecyclerView;->setPadding(IIII)V

    .line 646
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 648
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->loadData()V

    .line 649
    return-void
.end method

.method public openStickerKeyboard(I)V
    .locals 2
    .param p1, "pack"    # I

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->canWrite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 432
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->openPack(I)V

    goto :goto_0
.end method

.method public bridge synthetic replyToComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 1
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;Z)V

    .line 459
    return-void
.end method

.method public replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;Z)V
    .locals 4
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;
    .param p2, "fromGroup"    # Z

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/board/BoardComment;->getId()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyTo:I

    .line 463
    iget v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    iput v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToUid:I

    .line 464
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->userName:Ljava/lang/String;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    .line 465
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyFromGroup:Z

    .line 466
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_closed"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->isTextEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->focus()V

    .line 471
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 472
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/market/GoodFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v2, 0x7f100433

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 474
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public bridge synthetic showCommentActions(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->showCommentActions(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public showCommentActions(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 4
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v0, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "is_admin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const v1, 0x7f08013d

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/market/GoodFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/market/GoodFragment;Lcom/vkcoffee/android/api/board/BoardComment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 409
    return-void
.end method
