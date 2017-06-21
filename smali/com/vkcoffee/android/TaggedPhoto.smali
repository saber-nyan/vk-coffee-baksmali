.class public Lcom/vkcoffee/android/TaggedPhoto;
.super Lcom/vkcoffee/android/Photo;
.source "TaggedPhoto.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/TaggedPhoto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public tagID:I

.field public tagPlacerID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/vkcoffee/android/TaggedPhoto$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/TaggedPhoto$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/TaggedPhoto;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/Photo;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V
    .locals 0
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/Photo;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 37
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagID:I

    .line 38
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagPlacerID:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 28
    :try_start_0
    const-string/jumbo v1, "tag_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagID:I

    .line 29
    const-string/jumbo v1, "placer_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagPlacerID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/vkcoffee/android/Photo;->serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 44
    iget v0, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 45
    iget v0, p0, Lcom/vkcoffee/android/TaggedPhoto;->tagPlacerID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 46
    return-void
.end method
