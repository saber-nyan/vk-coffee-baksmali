.class public Lcom/vkcoffee/android/attachments/MarketAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "MarketAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/MarketAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSource:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;


# instance fields
.field public final canEdit:Z

.field public final good:Lcom/vkcoffee/android/data/Good;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;->link:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    sput-object v0, Lcom/vkcoffee/android/attachments/MarketAttachment;->lastSource:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    .line 85
    new-instance v0, Lcom/vkcoffee/android/attachments/MarketAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/MarketAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/MarketAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/Good;)V
    .locals 1
    .param p1, "good"    # Lcom/vkcoffee/android/data/Good;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/data/Good;Z)V
    .locals 0
    .param p1, "good"    # Lcom/vkcoffee/android/data/Good;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canEdit"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    .line 42
    iput-boolean p2, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    .line 43
    return-void
.end method

.method public static setLastSource(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;)V
    .locals 0
    .param p0, "source"    # Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    sput-object p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->lastSource:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    .line 30
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    const v1, 0x7f100153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 120
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010010

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const v1, 0x7f0202c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/MarketAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v0, v0, Lcom/vkcoffee/android/data/Good;->thumb_photo:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const v9, 0x7f100154

    const v8, 0x7f10013f

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 52
    const v4, 0x7f010010

    invoke-static {p1, v4}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v0

    .line 53
    .local v0, "isMessagesSnippet":Z
    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    const v4, 0x7f030044

    :goto_0
    const/4 v7, 0x0

    invoke-static {p1, v4, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 55
    .local v3, "v":Landroid/view/View;
    :goto_1
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    const v4, 0x7f100151

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v0, :cond_2

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setMinimumHeight(I)V

    .line 57
    new-instance v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v2}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 58
    .local v2, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 59
    const/4 v4, -0x2

    iput v4, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 60
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->center:Z

    .line 61
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v4, v4, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 63
    const v4, 0x7f10013e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v6, v6, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget-object v6, v6, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v4, 0x7f100158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0801fc

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-static {p0, v3}, Lcom/vkcoffee/android/attachments/MarketAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/MarketAttachment;Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 68
    .local v1, "l":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v4, 0x7f100156

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    const v4, 0x7f100157

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-object v3

    .line 53
    .end local v1    # "l":Landroid/view/View$OnClickListener;
    .end local v2    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    const v4, 0x7f030043

    goto/16 :goto_0

    :cond_1
    move-object v3, p2

    goto/16 :goto_1

    .line 56
    .restart local v3    # "v":Landroid/view/View;
    :cond_2
    const/high16 v4, 0x42e40000    # 114.0f

    invoke-static {v4}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    goto/16 :goto_2

    .restart local v2    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_3
    move v4, v6

    .line 62
    goto :goto_3
.end method

.method synthetic lambda$getViewForList$201(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p2, "v1"    # Landroid/view/View;

    .prologue
    .line 67
    new-instance v0, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;

    sget-object v1, Lcom/vkcoffee/android/attachments/MarketAttachment;->lastSource:Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v2, v2, Lcom/vkcoffee/android/data/Good;->owner_id:I

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v3, v3, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder$Source;II)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/market/GoodFragment$Builder;->go(Landroid/content/Context;)V

    return-void
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 78
    iget-boolean v0, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->canEdit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 79
    return-void

    .line 78
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
    .line 108
    const v1, 0x7f100153

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010010

    invoke-static {v1, v2}, Lcom/vkcoffee/android/ViewUtils;->getBoolFromTheme(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v1, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p2, v2, v3}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;IF)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcom/vkcoffee/android/ui/SnippetBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "market"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v1, v1, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;->good:Lcom/vkcoffee/android/data/Good;

    iget v1, v1, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
