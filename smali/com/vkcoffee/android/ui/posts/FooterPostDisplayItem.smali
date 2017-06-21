.class public Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "FooterPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field private commentsOnClick:Landroid/view/View$OnClickListener;

.field public e:Lcom/vkcoffee/android/NewsEntry;

.field private feedback:Z

.field private likesOnClick:Landroid/view/View$OnClickListener;

.field private liking:Z

.field public referer:Ljava/lang/String;

.field private repostsOnClick:Landroid/view/View$OnClickListener;

.field private showLikes:Z


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;ZZLjava/lang/String;)V
    .locals 2
    .param p1, "_e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p2, "_feedback"    # Z
    .param p3, "likes"    # Z
    .param p4, "_referer"    # Ljava/lang/String;

    .prologue
    .line 41
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 42
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    .line 43
    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->commentsOnClick:Landroid/view/View$OnClickListener;

    .line 49
    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->likesOnClick:Landroid/view/View$OnClickListener;

    .line 53
    invoke-static {p0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->repostsOnClick:Landroid/view/View$OnClickListener;

    .line 62
    iput-boolean p3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->showLikes:Z

    .line 63
    iput-boolean p2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->feedback:Z

    .line 64
    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->referer:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->liking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;ZLandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->like(ZLandroid/view/View;)V

    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 78
    const v2, 0x7f0300ec

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;)V

    .line 80
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    const v2, 0x7f10029f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    .line 81
    const v2, 0x7f10029e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f1002a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    .line 83
    const v2, 0x7f1001b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->divider:Landroid/view/View;

    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    return-object v1
.end method

.method private like(ZLandroid/view/View;)V
    .locals 10
    .param p1, "liked"    # Z
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 176
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->bindView(Landroid/view/View;)V

    .line 178
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->liking:Z

    if-eqz v0, :cond_1

    .line 221
    :goto_1
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->liking:Z

    .line 182
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v8, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .local v8, "lOid":I
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v9, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 183
    .local v9, "lPid":I
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallLike;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v2, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v5, v1, Lcom/vkcoffee/android/NewsEntry;->type:I

    const-string/jumbo v7, ""

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;

    move-object v2, p0

    move-object v3, p2

    move v4, v8

    move v5, v9

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$1;-><init>(Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;Landroid/view/View;IIZ)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v9, 0x4

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;

    .line 91
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    .local v1, "padContent":I
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    .line 93
    .local v2, "padEmpty":I
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->divider:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 94
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v3, v3, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v6, v6, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 99
    :cond_1
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    if-lez v3, :cond_5

    .line 107
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 109
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    :goto_1
    iget-object v6, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    if-lez v3, :cond_7

    .line 117
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 119
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 125
    :goto_3
    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v3, v3, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    if-lez v3, :cond_8

    .line 126
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 128
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    :goto_4
    iget-boolean v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->showLikes:Z

    if-eqz v3, :cond_9

    .line 135
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_5
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v5, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 142
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v4, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 143
    const v3, 0x7f10006f

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 144
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->likesOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->repostsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->commentsOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void

    .line 101
    :cond_4
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 111
    :cond_5
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 113
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->comments:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_6
    move v3, v4

    .line 115
    goto/16 :goto_2

    .line 121
    :cond_7
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 123
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_3

    .line 130
    :cond_8
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    const-string/jumbo v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 132
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_4

    .line 138
    :cond_9
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->likes:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v3, v0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem$ViewHolder;->reposts:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$711(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "entry"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    const-string/jumbo v1, "comment"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 47
    const-class v1, Lcom/vkcoffee/android/fragments/PostViewFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method synthetic lambda$new$712(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->referer:Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/vkcoffee/android/data/Posts;->like(Lcom/vkcoffee/android/NewsEntry;ZLandroid/app/Activity;Ljava/lang/String;)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method synthetic lambda$new$713(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/RepostActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "post"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->e:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v1, "referer"

    iget-object v2, p0, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;->referer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 159
    return-void
.end method
