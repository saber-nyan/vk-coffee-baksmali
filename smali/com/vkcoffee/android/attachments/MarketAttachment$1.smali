.class final Lcom/vkcoffee/android/attachments/MarketAttachment$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "MarketAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/MarketAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/MarketAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/MarketAttachment;
    .locals 3
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 88
    const-class v1, Lcom/vkcoffee/android/data/Good;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/Good;

    .line 89
    .local v0, "good":Lcom/vkcoffee/android/data/Good;
    if-nez v0, :cond_0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Lcom/vkcoffee/android/attachments/MarketAttachment;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;Z)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/MarketAttachment$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/MarketAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/MarketAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 97
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/MarketAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/MarketAttachment$1;->newArray(I)[Lcom/vkcoffee/android/attachments/MarketAttachment;

    move-result-object v0

    return-object v0
.end method
