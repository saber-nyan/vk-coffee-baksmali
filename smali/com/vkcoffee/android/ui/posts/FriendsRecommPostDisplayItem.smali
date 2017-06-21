.class public Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "FriendsRecommPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;,
        Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommViewHolder;
    }
.end annotation


# instance fields
.field public att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

.field public listPosition:I

.field private position:I

.field private positionOffset:I

.field private post:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method public constructor <init>(IILcom/vkcoffee/android/attachments/FriendsRecommAttachment;Lcom/vkcoffee/android/NewsEntry;I)V
    .locals 0
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "att"    # Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;
    .param p4, "post"    # Lcom/vkcoffee/android/NewsEntry;
    .param p5, "listPosition"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 58
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    .line 59
    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 60
    iput p5, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->listPosition:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .prologue
    .line 49
    iget v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->position:I

    return v0
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->position:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .prologue
    .line 49
    iget v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->positionOffset:I

    return v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->positionOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    return-object v0
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 74
    const v2, 0x7f030136

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f100360

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView;

    .line 76
    .local v0, "r":Lme/grishka/appkit/views/UsableRecyclerView;
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$1;

    invoke-direct {v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$1;-><init>()V

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 85
    const v2, 0x7f020109

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setSelector(I)V

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->setDrawSelectorOnTop(Z)V

    .line 87
    const v2, 0x7f100361

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$2;

    invoke-direct {v3}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$2;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 99
    const v2, 0x7f100360

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/views/UsableRecyclerView;

    .line 100
    .local v1, "r":Lme/grishka/appkit/views/UsableRecyclerView;
    new-instance v0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->att:Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;->profiles:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Ljava/util/List;)V

    .line 101
    .local v0, "adapter":Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;
    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 102
    new-instance v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$3;-><init>(Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;Lme/grishka/appkit/views/UsableRecyclerView;Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem$FriendsRecommAdapter;)V

    invoke-virtual {v1, v2}, Lme/grishka/appkit/views/UsableRecyclerView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 116
    const-string/jumbo v2, "view_block"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string/jumbo v3, "blocks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "friends_recomm|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->listPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v5, Lcom/vkcoffee/android/NewsEntry;->time:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 117
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xd

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 127
    return-void
.end method
