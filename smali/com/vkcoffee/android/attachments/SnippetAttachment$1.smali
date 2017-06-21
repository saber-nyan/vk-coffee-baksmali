.class final Lcom/vkcoffee/android/attachments/SnippetAttachment$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "SnippetAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/SnippetAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/SnippetAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/SnippetAttachment;
    .locals 12
    .param p1, "is"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v6, 0x1

    .line 206
    const-class v0, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    .line 207
    .local v5, "photo":Lcom/vkcoffee/android/Photo;
    new-instance v0, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v7

    if-ne v7, v6, :cond_0

    :goto_0
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readFloat()F

    move-result v9

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v10

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v0 .. v11}, Lcom/vkcoffee/android/attachments/SnippetAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Photo;ZLjava/lang/String;Ljava/lang/String;FILjava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/SnippetAttachment$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/SnippetAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 212
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/SnippetAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/SnippetAttachment$1;->newArray(I)[Lcom/vkcoffee/android/attachments/SnippetAttachment;

    move-result-object v0

    return-object v0
.end method
