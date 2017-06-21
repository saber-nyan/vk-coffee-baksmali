.class public Lcom/vkcoffee/android/attachments/GraffitiAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "GraffitiAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/GraffitiAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAFFITI_SIZE:I

.field private static final docToLocalFileMap:Lcom/vkcoffee/android/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_key:Ljava/lang/String;

.field public height:I

.field public id:I

.field public ownerId:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/vkcoffee/android/cache/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;-><init>(I)V

    sput-object v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->docToLocalFileMap:Lcom/vkcoffee/android/cache/LruCache;

    .line 35
    invoke-static {}, Lcom/vk/attachpicker/util/Screen;->realWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    .line 72
    new-instance v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/GraffitiAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "ownerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "access_key"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 55
    iput p1, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->id:I

    .line 56
    iput p2, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->ownerId:I

    .line 57
    iput-object p3, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->url:Ljava/lang/String;

    .line 58
    iput p4, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->width:I

    .line 59
    iput p5, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->height:I

    .line 60
    iput-object p6, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->access_key:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/api/Document;)V
    .locals 7
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 47
    iget v1, p1, Lcom/vkcoffee/android/api/Document;->did:I

    iget v2, p1, Lcom/vkcoffee/android/api/Document;->oid:I

    iget-object v3, p1, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    iget v4, p1, Lcom/vkcoffee/android/api/Document;->width:I

    iget v5, p1, Lcom/vkcoffee/android/api/Document;->height:I

    iget-object v6, p1, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->id:I

    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->ownerId:I

    .line 66
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->url:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->width:I

    .line 68
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->height:I

    .line 69
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->access_key:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static get(II)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I
    .param p1, "ownerId"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->docToLocalFileMap:Lcom/vkcoffee/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getFullView$199(Landroid/view/View;)V
    .locals 0
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 137
    return-void
.end method

.method public static put(IILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # I
    .param p1, "ownerId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->docToLocalFileMap:Lcom/vkcoffee/android/cache/LruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vkcoffee/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    iget v2, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->id:I

    iget v3, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->ownerId:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->get(II)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lme/grishka/appkit/imageloader/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 172
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    const v2, 0x7f0202ea

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    new-instance v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/attachments/GraffitiAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/GraffitiAttachment;Landroid/content/Context;)V

    .line 134
    .local v0, "iv":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    sget v1, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 136
    sget v1, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->GRAFFITI_SIZE:I

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 137
    invoke-static {}, Lcom/vkcoffee/android/attachments/GraffitiAttachment$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 90
    iget v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->ownerId:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->width:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->height:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->access_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 159
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->ownerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->access_key:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->access_key:Ljava/lang/String;

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
