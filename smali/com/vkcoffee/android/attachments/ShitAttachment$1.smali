.class final Lcom/vkcoffee/android/attachments/ShitAttachment$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "ShitAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/ShitAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/ShitAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/ShitAttachment;
    .locals 21
    .param p1, "is"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 147
    new-instance v2, Lcom/vkcoffee/android/attachments/ShitAttachment;

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readFloat()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v10

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v16

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v2 .. v18}, Lcom/vkcoffee/android/attachments/ShitAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v2, "ad":Lcom/vkcoffee/android/attachments/ShitAttachment;
    const-class v3, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    iput-object v3, v2, Lcom/vkcoffee/android/attachments/ShitAttachment;->photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v19

    .line 154
    .local v19, "c":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v3, v2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v19

    .line 158
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v3, v2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v19

    .line 162
    const/16 v20, 0x0

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 163
    iget-object v3, v2, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 165
    :cond_2
    return-object v2
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/ShitAttachment$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/ShitAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/ShitAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 169
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/ShitAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/ShitAttachment$1;->newArray(I)[Lcom/vkcoffee/android/attachments/ShitAttachment;

    move-result-object v0

    return-object v0
.end method
