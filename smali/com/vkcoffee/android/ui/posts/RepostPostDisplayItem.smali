.class public Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;
.super Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
.source "RepostPostDisplayItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    }
.end annotation


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field public origID:I

.field private post:Lcom/vkcoffee/android/NewsEntry;

.field public repostType:I

.field public time:I

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkcoffee/android/NewsEntry;)V
    .locals 1
    .param p1, "_postID"    # I
    .param p2, "_postOwnerID"    # I
    .param p3, "_userName"    # Ljava/lang/String;
    .param p4, "_userPhoto"    # Ljava/lang/String;
    .param p5, "_uid"    # I
    .param p6, "_time"    # I
    .param p7, "_origID"    # I
    .param p8, "_repostType"    # I
    .param p9, "_post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;-><init>(II)V

    .line 23
    new-instance v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$1;-><init>(Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p3, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->uid:I

    .line 46
    iput p6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->time:I

    .line 47
    iput p7, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->origID:I

    .line 48
    iput p8, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->repostType:I

    .line 49
    iput-object p9, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    .line 50
    return-void
.end method

.method public static createView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 63
    const v2, 0x7f0300f0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    invoke-direct {v0, v3}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;-><init>(Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$1;)V

    .line 65
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    const v2, 0x7f1002ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f1002ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f1002a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f1002aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->button:Landroid/view/View;

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 76
    .local v2, "holder":Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    iget-object v6, v2, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->userName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v6, v2, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->button:Landroid/view/View;

    iget-object v7, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    const/4 v5, 0x0

    .line 79
    .local v5, "type":Ljava/lang/String;
    iget v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->repostType:I

    if-ne v6, v10, :cond_0

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080344

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_0
    iget v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->repostType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080583

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    :cond_1
    iget v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->repostType:I

    if-ne v6, v11, :cond_2

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080316

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->time:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v5, :cond_3

    const-string/jumbo v5, ""

    .end local v5    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "infoHtml":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v6, v6, Lcom/vkcoffee/android/NewsEntry;->platform:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->repostType:I

    if-eq v6, v11, :cond_4

    .line 92
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v0, "bldr":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v6

    const-string/jumbo v7, "F"

    invoke-virtual {v6, v7}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v4

    .line 94
    .local v4, "sp":Landroid/text/Spannable;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->post:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v7}, Lcom/vkcoffee/android/NewsEntry;->getPlatformIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v1, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {v4, v6, v9, v10, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    move-object v3, v0

    .line 102
    .end local v0    # "bldr":Landroid/text/SpannableStringBuilder;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "sp":Landroid/text/Spannable;
    :cond_4
    iget-object v6, v2, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->userPhoto:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x3

    return v0
.end method

.method public setImage(ILandroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p1, "image"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "fromCache"    # Z

    .prologue
    .line 112
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;

    .line 113
    .local v0, "holder":Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;
    if-eqz p3, :cond_0

    .line 114
    iget-object v1, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v2, v0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem$ViewHolder;->photo:Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;->uid:I

    if-lez v1, :cond_1

    const v1, 0x7f0202c5

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0202bd

    goto :goto_1
.end method
