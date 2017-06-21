.class public Lcom/vkcoffee/android/attachments/AudioAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "AudioAttachment.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/AudioAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aid:I

.field public artist:Ljava/lang/String;

.field public duration:I

.field public oid:I

.field public transient playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field public transient playlistPos:I

.field public transient referer:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/vkcoffee/android/attachments/AudioAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/AudioAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/AudioAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/AudioFile;)V
    .locals 1
    .param p1, "af"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    .line 33
    iget v0, p1, Lcom/vkcoffee/android/AudioFile;->duration:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->duration:I

    .line 34
    iget v0, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    .line 35
    iget v0, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iput v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1
    .param p1, "_artist"    # Ljava/lang/String;
    .param p2, "_title"    # Ljava/lang/String;
    .param p3, "_duration"    # I
    .param p4, "_oid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 20
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->duration:I

    .line 26
    iput p4, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    .line 27
    iput p5, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    .line 28
    return-void
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/AudioAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 47
    if-nez p2, :cond_1

    const-string/jumbo v1, "audio"

    invoke-static {p1, v1}, Lcom/vkcoffee/android/attachments/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/vkcoffee/android/AudioAttachView;

    move-object v0, v1

    check-cast v0, Lcom/vkcoffee/android/AudioAttachView;

    .line 48
    .local v0, "aav":Lcom/vkcoffee/android/AudioAttachView;
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/AudioAttachView;->referer:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    iget v3, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    iget v4, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    iget v5, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->duration:I

    invoke-virtual/range {v0 .. v5}, Lcom/vkcoffee/android/AudioAttachView;->setData(Ljava/lang/String;Ljava/lang/String;III)V

    .line 51
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlist:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkcoffee/android/AudioAttachView;->playlist:Ljava/util/ArrayList;

    .line 53
    iget v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlistPos:I

    iput v1, v0, Lcom/vkcoffee/android/AudioAttachView;->playlistPos:I

    .line 56
    :cond_0
    return-object v0

    .end local v0    # "aav":Lcom/vkcoffee/android/AudioAttachView;
    :cond_1
    move-object v1, p2

    .line 47
    goto :goto_0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->duration:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 64
    iget v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 65
    iget v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;->aid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
