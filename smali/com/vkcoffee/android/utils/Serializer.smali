.class public abstract Lcom/vkcoffee/android/utils/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;,
        Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;,
        Lcom/vkcoffee/android/utils/Serializer$ParcelSerializer;,
        Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;,
        Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;,
        Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;,
        Lcom/vkcoffee/android/utils/Serializer$Creator;,
        Lcom/vkcoffee/android/utils/Serializer$Serializable;
    }
.end annotation


# static fields
.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/utils/Serializer;->mCreators:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/vkcoffee/android/utils/Serializer;->serializeExtras(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/vkcoffee/android/utils/Serializer;->deserializeExtras(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static deserializeExtras(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p0, "extraStr"    # Ljava/lang/String;

    .prologue
    .line 704
    if-nez p0, :cond_1

    .line 705
    const/4 v0, 0x0

    .line 729
    :cond_0
    :goto_0
    return-object v0

    .line 707
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 708
    .local v0, "extra":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 710
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 711
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 712
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 713
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 714
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 715
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 716
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 725
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 726
    .local v5, "x":Lorg/json/JSONException;
    invoke-static {v5}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 717
    .end local v5    # "x":Lorg/json/JSONException;
    .restart local v1    # "k":Ljava/lang/String;
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    instance-of v6, v3, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    .line 718
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 719
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v6, v3, Lorg/json/JSONObject;

    if-eqz v6, :cond_4

    .line 720
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/JSONSerializable$Factory;->from(Lorg/json/JSONObject;)Lcom/vkcoffee/android/utils/JSONSerializable;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 722
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_4
    check-cast v3, Ljava/lang/String;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static get(Landroid/os/Parcel;)Lcom/vkcoffee/android/utils/Serializer;
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 307
    new-instance v0, Lcom/vkcoffee/android/utils/Serializer$ParcelSerializer;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/utils/Serializer$ParcelSerializer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public static get(Ljava/io/DataInput;)Lcom/vkcoffee/android/utils/Serializer;
    .locals 1
    .param p0, "dataInput"    # Ljava/io/DataInput;

    .prologue
    .line 315
    new-instance v0, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/utils/Serializer$DataInputSerializer;-><init>(Ljava/io/DataInput;)V

    return-object v0
.end method

.method public static get(Ljava/io/DataOutput;)Lcom/vkcoffee/android/utils/Serializer;
    .locals 1
    .param p0, "dataOutput"    # Ljava/io/DataOutput;

    .prologue
    .line 311
    new-instance v0, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/utils/Serializer$DataOutputSerializer;-><init>(Ljava/io/DataOutput;)V

    return-object v0
.end method

.method private readSerializerCreator(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Creator;
    .locals 13
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 301
    :goto_0
    return-object v0

    .line 252
    :cond_0
    sget-object v9, Lcom/vkcoffee/android/utils/Serializer;->mCreators:Ljava/util/HashMap;

    monitor-enter v9

    .line 253
    :try_start_0
    sget-object v8, Lcom/vkcoffee/android/utils/Serializer;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 254
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/utils/Serializer$Creator<*>;>;"
    if-nez v4, :cond_1

    .line 255
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/utils/Serializer$Creator<*>;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 256
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/utils/Serializer$Creator<*>;>;"
    sget-object v8, Lcom/vkcoffee/android/utils/Serializer;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/utils/Serializer$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .local v0, "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    if-nez v0, :cond_7

    .line 263
    if-nez p1, :cond_2

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 264
    .local v7, "serializableClassLoader":Ljava/lang/ClassLoader;
    :goto_1
    const/4 v8, 0x0

    invoke-static {v5, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 265
    .local v6, "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 266
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    const-string/jumbo v10, "Serializer.Serializable protocol requires that the class implements Serializer.Serializable"

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .end local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .end local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const/4 v8, 0x2

    :try_start_2
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Illegal access when unmarshalling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v2, v8, v10

    invoke-static {v8}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 283
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/utils/Serializer$Creator<*>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/utils/Serializer$Creator<*>;>;"
    :cond_2
    move-object v7, p1

    .line 263
    goto :goto_1

    .line 269
    .restart local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :cond_3
    :try_start_3
    const-string/jumbo v8, "CREATOR"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 270
    .local v3, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_4

    .line 271
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Serializer.Serializable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 284
    .end local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const/4 v8, 0x2

    :try_start_4
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Class not found when unmarshalling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v2, v8, v10

    invoke-static {v8}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 286
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 274
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 275
    .local v1, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/vkcoffee/android/utils/Serializer$Creator;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 276
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Serializer.Serializable protocol requires a Serializer.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 287
    .end local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :catch_2
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    :try_start_6
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Serializer.Serializable protocol requires a Serializer.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 280
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    .restart local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :cond_5
    const/4 v8, 0x0

    :try_start_7
    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    check-cast v0, Lcom/vkcoffee/android/utils/Serializer$Creator;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 292
    .restart local v0    # "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    if-nez v0, :cond_6

    .line 293
    :try_start_8
    new-instance v8, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Serializer.Serializable protocol requires a non-null Serializer.Creator object called CREATOR on class "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/vkcoffee/android/utils/Serializer$BadSerializableException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 298
    :cond_6
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "serializableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "serializableClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private static serializeExtras(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .param p0, "extra"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 679
    if-nez p0, :cond_0

    .line 680
    const/4 v5, 0x0

    .line 700
    :goto_0
    return-object v5

    .line 682
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 683
    const-string/jumbo v5, ""

    goto :goto_0

    .line 686
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 687
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 688
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 690
    .local v2, "o":Ljava/lang/Object;
    instance-of v6, v2, Lcom/vkcoffee/android/utils/JSONSerializable;

    if-eqz v6, :cond_2

    .line 691
    check-cast v2, Lcom/vkcoffee/android/utils/JSONSerializable;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/JSONSerializable$Factory;->to(Lcom/vkcoffee/android/utils/JSONSerializable;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 697
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 698
    .local v4, "x":Lorg/json/JSONException;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    const-string/jumbo v5, ""

    goto :goto_0

    .line 693
    .end local v4    # "x":Lorg/json/JSONException;
    .restart local v0    # "k":Ljava/lang/String;
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 696
    .end local v0    # "k":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public createStringArray()[Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v1

    .line 192
    .local v1, "length":I
    if-gez v1, :cond_1

    .line 193
    const/4 v2, 0x0

    .line 199
    :cond_0
    return-object v2

    .line 195
    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    .line 196
    .local v2, "strings":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final createTypedArray(Lcom/vkcoffee/android/utils/Serializer$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "c":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<TT;>;"
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    .line 206
    .local v0, "N":I
    if-gez v0, :cond_1

    .line 207
    const/4 v2, 0x0

    .line 215
    :cond_0
    return-object v2

    .line 209
    :cond_1
    invoke-interface {p1, v0}, Lcom/vkcoffee/android/utils/Serializer$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v2

    .line 210
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-interface {p1, p0}, Lcom/vkcoffee/android/utils/Serializer$Creator;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 210
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final createTypedArrayList(Lcom/vkcoffee/android/utils/Serializer$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "c":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<TT;>;"
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    .line 221
    .local v0, "N":I
    if-gez v0, :cond_1

    move-object v1, v2

    .line 233
    :cond_0
    return-object v1

    .line 224
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    invoke-interface {p1, p0}, Lcom/vkcoffee/android/utils/Serializer$Creator;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public abstract readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract readByte()B
.end method

.method public abstract readChar()C
.end method

.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public final readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vkcoffee/android/utils/Serializer$Serializable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/utils/Serializer;->readSerializerCreator(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Creator;

    move-result-object v0

    .line 182
    .local v0, "creator":Lcom/vkcoffee/android/utils/Serializer$Creator;, "Lcom/vkcoffee/android/utils/Serializer$Creator<*>;"
    if-nez v0, :cond_0

    .line 183
    const/4 v1, 0x0

    .line 185
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Lcom/vkcoffee/android/utils/Serializer$Creator;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    goto :goto_0
.end method

.method public abstract readString()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract writeBundle(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract writeByte(B)V
.end method

.method public abstract writeChar(C)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeFloat(F)V
.end method

.method public abstract writeInt(I)V
.end method

.method public abstract writeLong(J)V
.end method

.method public writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V
    .locals 1
    .param p1, "v"    # Lcom/vkcoffee/android/utils/Serializer$Serializable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-interface {p1, p0}, Lcom/vkcoffee/android/utils/Serializer$Serializable;->serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V

    goto :goto_0
.end method

.method public abstract writeString(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 102
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 109
    :cond_0
    return-void

    .line 104
    :cond_1
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 105
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 106
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeTypedArray([Lcom/vkcoffee/android/utils/Serializer$Serializable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vkcoffee/android/utils/Serializer$Serializable;",
            ">([TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "val":[Lcom/vkcoffee/android/utils/Serializer$Serializable;, "[TT;"
    const/4 v3, 0x0

    .line 113
    if-eqz p1, :cond_1

    .line 114
    array-length v0, p1

    .line 115
    .local v0, "N":I
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 116
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, p1, v2

    .line 117
    .local v1, "item":Lcom/vkcoffee/android/utils/Serializer$Serializable;, "TT;"
    if-eqz v1, :cond_0

    .line 118
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 119
    invoke-interface {v1, p0}, Lcom/vkcoffee/android/utils/Serializer$Serializable;->serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 116
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    goto :goto_1

    .line 125
    .end local v0    # "N":I
    .end local v1    # "item":Lcom/vkcoffee/android/utils/Serializer$Serializable;, "TT;"
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 127
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vkcoffee/android/utils/Serializer$Serializable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_1

    .line 132
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 148
    :cond_0
    return-void

    .line 135
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, "N":I
    const/4 v1, 0x0

    .line 137
    .local v1, "i":I
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 138
    :goto_0
    if-ge v1, v0, :cond_0

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    .line 140
    .local v2, "item":Lcom/vkcoffee/android/utils/Serializer$Serializable;, "TT;"
    if-eqz v2, :cond_2

    .line 141
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 142
    invoke-interface {v2, p0}, Lcom/vkcoffee/android/utils/Serializer$Serializable;->serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 146
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 147
    goto :goto_0

    .line 144
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    goto :goto_1
.end method
