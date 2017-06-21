.class public Lcom/vkcoffee/android/attachments/SnippetAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "SnippetAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/SnippetAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public button:Ljava/lang/String;

.field public buttonLink:Ljava/lang/String;

.field public forceSmall:Z

.field private isBig:Z

.field private isProduct:Z

.field private lastPhotoWidth:I

.field public link:Ljava/lang/String;

.field public photo:Lcom/vkcoffee/android/Photo;

.field public previewPage:Ljava/lang/String;

.field private rating:F

.field public referrer:Ljava/lang/String;

.field private reviewCount:I

.field public subsubtitle:Ljava/lang/String;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/vkcoffee/android/attachments/SnippetAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/SnippetAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Photo;ZLjava/lang/String;Ljava/lang/String;FILjava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "subsubtitle"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .param p5, "photo"    # Lcom/vkcoffee/android/Photo;
    .param p6, "isProduct"    # Z
    .param p7, "button"    # Ljava/lang/String;
    .param p8, "buttonLink"    # Ljava/lang/String;
    .param p9, "rating"    # F
    .param p10, "reviewCount"    # I
    .param p11, "previewPage"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    .line 47
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subtitle:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subsubtitle:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    .line 51
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->link:Ljava/lang/String;

    .line 52
    iput-boolean p6, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isProduct:Z

    .line 53
    iput-object p7, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->button:Ljava/lang/String;

    .line 54
    iput-object p8, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->buttonLink:Ljava/lang/String;

    .line 55
    iput p9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->rating:F

    .line 56
    iput p10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->reviewCount:I

    .line 57
    iput-object p11, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->previewPage:Ljava/lang/String;

    .line 58
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subsubtitle:Ljava/lang/String;

    .line 61
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    .line 64
    :cond_1
    return-void
.end method

.method private removeRelLayoutRules(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5
    .param p1, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p2, "ruleToRemove"    # I

    .prologue
    .line 72
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 87
    .end local p1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-object p1

    .line 76
    .restart local p1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 77
    .local v2, "rules":[I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v1, "res":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 79
    aget v3, v2, v0

    if-nez v3, :cond_2

    .line 78
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_2
    if-eq p2, v0, :cond_1

    .line 85
    aget v3, v2, v0

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_3
    move-object p1, v1

    .line 87
    goto :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 246
    const v1, 0x7f100153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 247
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010010

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isBig:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0202bf

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0202c0

    goto :goto_1
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/SnippetAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 7

    .prologue
    .line 218
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    iget-object v4, v4, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo$Image;

    .line 219
    .local v0, "closest":Lcom/vkcoffee/android/Photo$Image;
    const v1, 0x7fffffff

    .line 220
    .local v1, "closestDiff":I
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    iget-object v4, v4, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/Photo$Image;

    .line 221
    .local v3, "img":Lcom/vkcoffee/android/Photo$Image;
    iget v5, v3, Lcom/vkcoffee/android/Photo$Image;->width:I

    const/16 v6, 0x25c

    if-gt v5, v6, :cond_0

    .line 224
    iget v5, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->lastPhotoWidth:I

    iget v6, v3, Lcom/vkcoffee/android/Photo$Image;->width:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 225
    .local v2, "diff":I
    if-ge v2, v1, :cond_0

    .line 226
    move v1, v2

    .line 227
    move-object v0, v3

    goto :goto_0

    .line 230
    .end local v2    # "diff":I
    .end local v3    # "img":Lcom/vkcoffee/android/Photo$Image;
    :cond_1
    iget-object v4, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    return-object v4
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 93
    const v9, 0x7f010010

    invoke-static {p1, v9}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v3

    .line 94
    .local v3, "isMessagesSnippet":Z
    if-nez v3, :cond_4

    iget-boolean v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v10, 0x6c

    const/16 v11, 0x78

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v10, 0x6c

    const/16 v11, 0x78

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v9

    iget v9, v9, Lcom/vkcoffee/android/Photo$Image;->width:I

    const/16 v10, 0x219

    if-lt v9, v10, :cond_4

    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v10, 0x6c

    const/16 v11, 0x78

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v9

    iget v9, v9, Lcom/vkcoffee/android/Photo$Image;->height:I

    const/16 v10, 0xf0

    if-lt v9, v10, :cond_4

    .line 95
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isBig:Z

    .line 96
    const v9, 0x7f030042

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 97
    .local v8, "v":Landroid/view/View;
    new-instance v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v6}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 98
    .local v6, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    const/16 v10, 0x6c

    const/16 v11, 0x78

    invoke-virtual {v9, v10, v11}, Lcom/vkcoffee/android/Photo;->getImage(CC)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    .line 99
    .local v1, "img":Lcom/vkcoffee/android/Photo$Image;
    invoke-static {}, Lcom/vkcoffee/android/NewsEntry;->getMaxThumbsWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0028

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 100
    iget v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v1, Lcom/vkcoffee/android/Photo$Image;->height:I

    int-to-float v10, v10

    iget v11, v1, Lcom/vkcoffee/android/Photo$Image;->width:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 102
    .local v2, "imgScaledHeight":I
    const/4 v9, -0x2

    iput v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 103
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 104
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const v9, 0x7f100153

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 107
    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    iget-object v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 108
    .local v7, "tw":F
    iget v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    iget-boolean v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isProduct:Z

    if-nez v9, :cond_1

    .line 109
    const v9, 0x7f10013f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :goto_0
    iget v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    const/high16 v10, 0x41000000    # 8.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->lastPhotoWidth:I

    .line 114
    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->button:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 115
    const v9, 0x7f100154

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "btn":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .local v4, "l":Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    .local v5, "l2":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isProduct:Z

    if-eqz v9, :cond_3

    .line 119
    const/16 v9, 0xf

    invoke-direct {p0, v4, v9}, Lcom/vkcoffee/android/attachments/SnippetAttachment;->removeRelLayoutRules(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 120
    const/16 v9, 0x8

    const v10, 0x7f100158

    invoke-virtual {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 121
    const/4 v9, 0x0

    invoke-direct {p0, v5, v9}, Lcom/vkcoffee/android/attachments/SnippetAttachment;->removeRelLayoutRules(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    .line 127
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0    # "btn":Landroid/view/View;
    .end local v1    # "img":Lcom/vkcoffee/android/Photo$Image;
    .end local v2    # "imgScaledHeight":I
    .end local v4    # "l":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "l2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "tw":F
    :cond_0
    :goto_2
    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v9, 0x7f10013f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subtitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v9, 0x7f100158

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subsubtitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->button:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 152
    const v9, 0x7f100154

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :goto_3
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v9, 0x7f100154

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->rating:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    .line 160
    const v9, 0x7f100156

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 161
    const v9, 0x7f100156

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/vkcoffee/android/ui/RatingView;

    iget v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->rating:F

    invoke-virtual {v9, v10}, Lcom/vkcoffee/android/ui/RatingView;->setRating(F)V

    .line 162
    const v9, 0x7f100157

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 163
    const v9, 0x7f100157

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->reviewCount:I

    invoke-static {v11}, Lcom/vkcoffee/android/Global;->formatBigNumber(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_4
    return-object v8

    .line 111
    .restart local v1    # "img":Lcom/vkcoffee/android/Photo$Image;
    .restart local v2    # "imgScaledHeight":I
    .restart local v7    # "tw":F
    :cond_1
    const v9, 0x7f10013f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subtitle:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x8

    :goto_5
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_5

    .line 123
    .restart local v0    # "btn":Landroid/view/View;
    .restart local v4    # "l":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5    # "l2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v9, 0x8

    invoke-direct {p0, v4, v9}, Lcom/vkcoffee/android/attachments/SnippetAttachment;->removeRelLayoutRules(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v4

    .line 124
    const/16 v9, 0xf

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 125
    const/4 v9, 0x0

    const v10, 0x7f100154

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_1

    .line 131
    .end local v0    # "btn":Landroid/view/View;
    .end local v1    # "img":Lcom/vkcoffee/android/Photo$Image;
    .end local v2    # "imgScaledHeight":I
    .end local v4    # "l":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5    # "l2":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v7    # "tw":F
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    if-eqz v3, :cond_7

    const v9, 0x7f030044

    :goto_6
    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 133
    .restart local v8    # "v":Landroid/view/View;
    iget-boolean v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->forceSmall:Z

    if-eqz v9, :cond_5

    .line 134
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    :cond_5
    if-eqz v3, :cond_6

    .line 137
    const v9, 0x7f100151

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-static {v10}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setMinimumHeight(I)V

    .line 138
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    :cond_6
    new-instance v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v6}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 141
    .restart local v6    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    const/4 v9, -0x1

    iput v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 142
    const/4 v9, -0x2

    iput v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 143
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 144
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    if-eqz v3, :cond_8

    const/high16 v9, 0x42a00000    # 80.0f

    :goto_7
    invoke-static {v9}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->lastPhotoWidth:I

    .line 146
    const v9, 0x7f10013f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v9, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subtitle:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x8

    :goto_8
    invoke-virtual {v10, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 131
    .end local v6    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v8    # "v":Landroid/view/View;
    :cond_7
    const v9, 0x7f030043

    goto :goto_6

    .line 145
    .restart local v6    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .restart local v8    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, 0x42e40000    # 114.0f

    goto :goto_7

    .line 146
    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    .line 154
    :cond_a
    const v9, 0x7f100154

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v9, 0x7f100154

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->button:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 165
    :cond_b
    const v9, 0x7f100156

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 166
    const v9, 0x7f100157

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f100154

    const/4 v4, 0x1

    .line 173
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->previewPage:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->previewPage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v7, :cond_1

    .line 174
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->previewPage:Ljava/lang/String;

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "sp":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "oid"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string/jumbo v2, "pid"

    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string/jumbo v2, "site"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-class v2, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 183
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "sp":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 184
    const-string/jumbo v2, "post_link_click"

    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->collapse()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->unique()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    const-string/jumbo v3, "post_ids"

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->referrer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkcoffee/android/data/Analytics$EventBuilder;->commit()Lcom/vkcoffee/android/data/Analytics$EventBuilder;

    .line 186
    :cond_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vklink://view/?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v7, :cond_2

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->buttonLink:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->link:Ljava/lang/String;

    goto :goto_1
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->subsubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 195
    iget-boolean v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isProduct:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->button:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->buttonLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->rating:F

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeFloat(F)V

    .line 199
    iget v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->reviewCount:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->previewPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 201
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 235
    const v1, 0x7f100153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010010

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;IF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/SnippetAttachment;->isBig:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v2, p2, v1}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
