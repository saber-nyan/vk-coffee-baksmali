.class public Lcom/vkcoffee/android/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final IS_ART_RUNTIME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/SystemUtils;->isArt()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vkcoffee/android/SystemUtils;->IS_ART_RUNTIME:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asIntArray(Ljava/util/List;)[I
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "source":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 112
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 113
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "result":[I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static deserializeBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p0, "xtra"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 72
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 74
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "o":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 78
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 86
    .local v4, "x":Lorg/json/JSONException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v4    # "x":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 79
    .restart local v0    # "k":Ljava/lang/String;
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    instance-of v5, v2, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 82
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_2
    check-cast v2, Ljava/lang/String;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static isArt()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 29
    const-string/jumbo v3, "java.vm.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "ver":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v2

    .line 34
    :cond_1
    :try_start_0
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 35
    .local v1, "version":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "version":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public static readSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .param p0, "in"    # Lcom/vkcoffee/android/utils/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Lcom/vkcoffee/android/utils/Serializer;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v1

    .line 64
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 65
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public static serializeBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 6
    .param p0, "extra"    # Landroid/os/Bundle;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v4, ""

    .line 105
    :goto_0
    return-object v4

    .line 96
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 98
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 103
    .local v3, "x":Lorg/json/JSONException;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const-string/jumbo v4, ""

    goto :goto_0

    .line 101
    .end local v3    # "x":Lorg/json/JSONException;
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public static writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 44
    .local v0, "p":Landroid/os/Parcelable;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 46
    .end local v0    # "p":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method public static writeSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;)V
    .locals 3
    .param p0, "out"    # Lcom/vkcoffee/android/utils/Serializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/utils/Serializer;",
            "Ljava/util/List",
            "<+",
            "Lcom/vkcoffee/android/utils/Serializer$Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/vkcoffee/android/utils/Serializer$Serializable;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    .line 51
    .local v0, "p":Lcom/vkcoffee/android/utils/Serializer$Serializable;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    goto :goto_0

    .line 53
    .end local v0    # "p":Lcom/vkcoffee/android/utils/Serializer$Serializable;
    :cond_0
    return-void
.end method
