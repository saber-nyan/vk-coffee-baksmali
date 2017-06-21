.class public Lcom/vkcoffee/android/attachments/DocumentAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "DocumentAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/DocumentAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_key:Ljava/lang/String;

.field public did:I

.field public extension:Ljava/lang/String;

.field public height:I

.field public transient isSingle:Z

.field public oid:I

.field public size:I

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public final video:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field transient wasPlayed:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/api/Document;)V
    .locals 1
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 80
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    .line 82
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->size:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    .line 83
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->oid:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    .line 84
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->did:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    .line 85
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 86
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->extension:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->video:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    .line 88
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->width:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    .line 89
    iget v0, p1, Lcom/vkcoffee/android/api/Document;->height:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    .line 90
    iget-object v0, p1, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 12
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    .line 100
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v5

    .line 102
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v6

    .line 103
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v8

    .line 105
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v9

    .line 106
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v10

    .line 107
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    .line 97
    invoke-direct/range {v0 .. v11}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_size"    # I
    .param p4, "_thumb"    # Ljava/lang/String;
    .param p5, "_oid"    # I
    .param p6, "_did"    # I
    .param p7, "ext"    # Ljava/lang/String;
    .param p8, "_video"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "_width"    # I
    .param p10, "_height"    # I
    .param p11, "access_key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    .line 65
    iput p3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    .line 66
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    .line 68
    iput p6, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    .line 69
    iput-object p7, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->extension:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    .line 71
    iput p9, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    .line 72
    iput p10, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    .line 73
    iput-object p11, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f100141

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 216
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/DocumentAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x41000000    # 8.0f

    .line 130
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->isSingle:Z

    if-eqz v3, :cond_0

    .line 132
    new-instance v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    invoke-direct {v1, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;-><init>(Landroid/content/Context;)V

    .line 133
    .local v1, "holder":Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->bind(Lcom/vkcoffee/android/attachments/DocumentAttachment;)V

    .line 134
    iget-object v0, v1, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->itemView:Landroid/view/View;

    .line 159
    .end local v1    # "holder":Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const-string/jumbo v3, "doc_thumb"

    invoke-static {p1, v3}, Lcom/vkcoffee/android/attachments/DocumentAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/DocAttachView;

    .line 137
    .local v0, "av":Lcom/vkcoffee/android/DocAttachView;
    new-instance v3, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v4

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/DocAttachView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/DocAttachView;->setData(Lcom/vkcoffee/android/attachments/DocumentAttachment;)V

    goto :goto_0

    .line 142
    .end local v0    # "av":Lcom/vkcoffee/android/DocAttachView;
    :cond_1
    if-nez p2, :cond_3

    const-string/jumbo v3, "common"

    invoke-static {p1, v3}, Lcom/vkcoffee/android/attachments/DocumentAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "v":Landroid/view/View;
    :goto_1
    const v3, 0x7f10014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f01000a

    invoke-static {p1, v4}, Lcom/vkcoffee/android/ViewUtils;->getResFromTheme(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    const v3, 0x7f10013e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v3, 0x7f10013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08012e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    int-to-long v6, v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/vkcoffee/android/Global;->langFileSize(JLandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 147
    new-instance v3, Lcom/vkcoffee/android/attachments/DocumentAttachment$2;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/DocumentAttachment;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    move-object v0, v2

    .line 159
    goto/16 :goto_0

    .end local v2    # "v":Landroid/view/View;
    :cond_3
    move-object v2, p2

    .line 142
    goto :goto_1
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->isSingle:Z

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>()V

    .line 187
    .local v0, "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->width:I

    .line 188
    const/4 v1, -0x2

    iput v1, v0, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->height:I

    .line 191
    .end local v0    # "lp":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->size:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->width:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 174
    iget v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->height:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 201
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;

    iget-object v0, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment$GifHolder;->mDrawable:Lcom/vkontakte/android/ui/animation/MovieDrawable;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->thumb:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    const v0, 0x7f100141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 205
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 206
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->did:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->access_key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
