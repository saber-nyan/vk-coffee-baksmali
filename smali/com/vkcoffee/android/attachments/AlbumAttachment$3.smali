.class final Lcom/vkcoffee/android/attachments/AlbumAttachment$3;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "AlbumAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/AlbumAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/AlbumAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/AlbumAttachment;
    .locals 9
    .param p1, "is"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v8

    .line 128
    .local v8, "nImgs":I
    new-array v1, v8, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 129
    .local v1, "imgs":[Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 130
    new-instance v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readChar()C

    move-result v2

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v7

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/AlbumAttachment;-><init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/AlbumAttachment$3;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/AlbumAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/AlbumAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 136
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/AlbumAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/AlbumAttachment$3;->newArray(I)[Lcom/vkcoffee/android/attachments/AlbumAttachment;

    move-result-object v0

    return-object v0
.end method
