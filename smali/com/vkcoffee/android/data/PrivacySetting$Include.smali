.class public Lcom/vkcoffee/android/data/PrivacySetting$Include;
.super Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PrivacySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Include"
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$Include;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$Include$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/PrivacySetting$Include$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    .line 216
    return-void
.end method

.method private constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 4
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/vkcoffee/android/data/PrivacySetting$UserListPrivacyRule;-><init>()V

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    .line 271
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v1

    .line 272
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/data/PrivacySetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/utils/Serializer;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/PrivacySetting$1;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/PrivacySetting$Include;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public apiValue()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x77359400

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v1, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 237
    .local v0, "id":I
    if-ge v0, v5, :cond_0

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "list"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v4, v0, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 243
    .end local v0    # "id":I
    :cond_1
    return-object v1
.end method

.method public displayValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    const/4 v0, 0x1

    .line 249
    .local v0, "onlyLists":Z
    iget-object v2, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, "v":I
    const v2, 0x77359400

    if-ge v1, v2, :cond_0

    .line 251
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    .end local v1    # "v":I
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    if-eqz v0, :cond_2

    const v2, 0x7f0803cb

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const v2, 0x7f0803ca

    goto :goto_1
.end method

.method public getEditTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f0803c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 264
    iget-object v1, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 265
    iget-object v1, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 266
    .local v0, "v":I
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    goto :goto_0

    .line 268
    .end local v0    # "v":I
    :cond_0
    return-void
.end method

.method public userCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public userIdAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/vkcoffee/android/data/PrivacySetting$Include;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
