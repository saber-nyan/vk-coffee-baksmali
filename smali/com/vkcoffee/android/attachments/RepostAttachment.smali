.class public Lcom/vkcoffee/android/attachments/RepostAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "RepostAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/RepostAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public ownerID:I

.field public photo:Ljava/lang/String;

.field public postID:I

.field public time:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/vkcoffee/android/attachments/RepostAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/RepostAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "_ownerID"    # I
    .param p2, "_postID"    # I
    .param p3, "_time"    # I
    .param p4, "_name"    # Ljava/lang/String;
    .param p5, "_photo"    # Ljava/lang/String;
    .param p6, "_type"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 25
    iput p1, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    .line 26
    iput p3, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->time:I

    .line 27
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->name:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->photo:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->postID:I

    .line 30
    iput p6, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->type:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    .line 36
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->postID:I

    .line 37
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->time:I

    .line 38
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->photo:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->type:I

    .line 41
    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    const v0, 0x7f100414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget v1, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    if-gez v1, :cond_0

    const v1, 0x7f020100

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const v1, 0x7f0202f2

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/RepostAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 86
    const-string/jumbo v1, "repost"

    invoke-static {p1, v1}, Lcom/vkcoffee/android/attachments/RepostAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100412

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v1, 0x7f100415

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->time:I

    invoke-static {v3}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->type:I

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/attachments/RepostAttachment;->clearImage(Landroid/view/View;)V

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/RepostAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/RepostAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 97
    return-object v0

    .line 88
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080316

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method synthetic lambda$getViewForList$223(Landroid/view/View;)V
    .locals 4
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vkontakte://vk.com/wall"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->postID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 56
    iget v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->postID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->time:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/vkcoffee/android/attachments/RepostAttachment;->type:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 62
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 71
    const v0, 0x7f100414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    return-void
.end method
