.class public Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "ButtonsPostDisplayItem.java"


# instance fields
.field private post:Lcom/vkcoffee/android/NewsEntry;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 24
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)Lcom/vkcoffee/android/NewsEntry;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    return-object v0
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const v0, 0x7f030057

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v2, 0x7f1001b1

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, v1, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    :goto_0
    const v0, 0x7f1001b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$1;-><init>(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem$2;-><init>(Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0xa

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 92
    return-void
.end method
